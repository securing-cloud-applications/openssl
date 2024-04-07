# GitHub Certificate Chain Validation Example

This directory has the certificate chain for github.com. The cert expires on March 14 2024. The instructions below use a docker container and change the 
containers clock to allow exploring various scenarios. 

## Run the container on a specific date

You can bulid the container using the instructios in the root of this repo.
or you can use the pre-built container at [http://ghcr.io/securing-cloud-applications/openssl:main](http://ghcr.io/securing-cloud-applications/openssl:main)

Use the command `docker run -ti --rm --cap-add SYS_TIME openssl bash` 
to execute the container. `--cap-add SYS_TIME` adds the premission for
the container to be able to run the `date` command to set the date.

## Example Certificates

Once you are in the container run `cd /examples`  you will find the files below 

```shell
root@e80249a5b4bf:/examples# ls -lah
total 32K
drwxr-xr-x 2 root root 4.0K Apr  6 17:05 .
drwxr-xr-x 1 root root 4.0K Apr  6 17:14 ..
-rw-r--r-- 1 root root 1.4K Apr  6 17:04 DigiCertGlobalRootCA.crt.pem
-rw-r--r-- 1 root root 1.5K Apr  6 17:04 DigiCertTLSHybridECCSHA3842020CA1-1.crt.pem
-rw-rw-r-- 1 root root 1.9K Apr  6 17:04 github-cert.pem
-rw-rw-r-- 1 root root 4.1K Apr  6 17:04 github-cert.txt
-rw-r--r-- 1 root root  498 Apr  6 17:06 github-certchain.md
```

The `github-cert.pem` was downloaded from GitHub on March 23 2023 and it was issued by Digicert. The GitHub cert was signed by the Digicert Intermenditae CA which was signed by the DigiCert Root CA. 

The various DigiCerts certificates are found at 
[https://www.digicert.com/kb/digicert-root-certificates.htm#intermediates](https://www.digicert.com/kb/digicert-root-certificates.htm#intermediates)

The intermediate and root CA certs were downloaded using the commands below 

```shell
wget https://cacerts.digicert.com/DigiCertGlobalRootCA.crt.pem
wget https://cacerts.digicert.com/DigiCertTLSHybridECCSHA3842020CA1-1.crt.pem
```

## Validating the certificate using openssl

We will need to change the clock in the container image. so the container must be run with `docker run -ti --rm --cap-add SYS_TIME openssl bash ` 
if you are on a Linux box this might actually change the host's clock. If you are on Windows or MacOS the image is running in a Virtual Machine
so it is ok to change the date. 

```
date -s '2024-01-02'
openssl verify -show_chain -CAfile DigiCertTLSHybridECCSHA3842020CA1-1.crt.pem DigiCertGlobalRootCA.crt.pem github-cert.pem
```

this will produce the otput

```shell
Tue Jan  2 00:00:00 UTC 2024
DigiCertGlobalRootCA.crt.pem: OK
Chain:
depth=0: C = US, O = DigiCert Inc, OU = www.digicert.com, CN = DigiCert Global Root CA
github-cert.pem: OK
Chain:
depth=0: C = US, ST = California, L = San Francisco, O = "GitHub, Inc.", CN = github.com (untrusted)
depth=1: C = US, O = DigiCert Inc, CN = DigiCert TLS Hybrid ECC SHA384 2020 CA1
depth=2: C = US, O = DigiCert Inc, OU = www.digicert.com, CN = DigiCert Global Root CA
```

Once the time in the container is rest running the verify command should
produce a message indicating that the certificate is expired

```shell
penssl verify -show_chain -CAfile DigiCertTLSHybridECCSHA3842020CA1-1.crt.pem DigiCertGlobalRootCA.crt.pem github-cert.pem
DigiCertGlobalRootCA.crt.pem: OK
Chain:
depth=0: C = US, O = DigiCert Inc, OU = www.digicert.com, CN = DigiCert Global Root CA
C = US, ST = California, L = San Francisco, O = "GitHub, Inc.", CN = github.com
error 10 at 0 depth lookup: certificate has expired
error github-cert.pem: verification failed
```