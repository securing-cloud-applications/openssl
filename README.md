# OpenSSL

Contains a `Dockerfile` to create an Ubuntu container with OpenSSL installed. The
OpenSSL container is used to explore cryptographic concepts using the OpenSSL
cli. 

* `docker build . -t openssl`
* `docker run -ti openssl`
* `openssl version`
``` 
OpenSSL 1.1.1f  31 Mar 2020
```

# RSA 

## Generate an RSA key pair 

Generate an RSA keypair in pem formart with no password 

`openssl genrsa -out rsa-keypair.pem 2048` produces a file that 
contains both the private and public key for RSA based 
encryption. 

```
-----BEGIN RSA PRIVATE KEY-----
MIIEowIBAAKCAQEAvyxgQiFo9Eh2ZeQaZu/TnFHAS+xTGZznwo6zuMoAB+bXkcBc
X6arDyU5W+FEaoVsFw1xs7YeEnILpShz5dXO0udakQyxbMrO8gfRnTWUeN3F7xX+
5OH57+XJsT6sdj9jNLDJz3DKWX3APRMZmViogGmkQOXZ3hdOZJ5LYdDDxSKWJ62k
hqQoy78zKB2vMkwH0hCUCaKKSyKMztpVbBtjv55mgUHUu/3uf8pQ2pCBH7f61rNd
6Fpax3G1xNUX6u3NybdFH58W5OD2wt8QOlsis0AztJy5xHBCSWe60NlWMtzWcKLs
oSd1e8KM1GN05lGZuhboLJa+CjE23j1IXMrOBQIDAQABAoIBAADTVTsT39smMPSx
rneBU52aMMVjKNy0c7/AVABZRvTBx26GsR9sndJ766p854m6N8RFt5b6E1krCufU
q+NzL+hzPU3hCycYHRqoc/xEzfZTptYodyhP3X9us5dDWQVNssT4enad2xHV3C2n
VnX2Dww26JGrLGysFxeSI2sxtpa0VJswyi5OCa2xSDcX3CSvJKuz9T/VytHIjx3l
xFtqX6WIWDAX9y9iKF0/Ca2jtsoxw3QBt86ByGVM1N4xM58FGM/HzYiptgzH3/f9
L3P0j/Mwq0fpLDkPuihRwspPNk/NV2rLHQRsURbX1D18IIQ7V2AUotbm45iwnRL/
5mgo4cECgYEA+LRiCF0+a+wVNAOVGt+tql54mRjfaD4OzraDE3MKECuany1/kqLy
kiAu3RxdJaf2F/fUvi1MA7fUb8oRnpq0EOhdiYdqQ6pSgSbaeaHHwIvQvq+m/pqR
+pzeUmAXWaz9ulQ7Ts2OZ0ZLXV4fFQOWyWm3jnAh4cIb4QZLedc3AZECgYEAxMf4
DSZ8XiKjv3tOeLFXfFjKrjy14GZKG8KCcqfl2Yr6FLnWz82nLd+yIp8W7TCy07NL
WBB1jUL4fDvU1HoXhAB0lhW5J9DJfBCSNa1eGRsdnhsqE5oVQxvgJldtTB1Am4lh
dKJymV8mmeuIN8JK/+AxSd8Tnj7Y8OEDh+jSSzUCgYAJJkGxAxUnzUCecD9NBMuT
x/Px1etqH1ZWHnrF/WZyX9hJYNgfoeUAoTR4J/H5T6uLCDAIawwv2tRy5GEvj4tu
T84ZICU1pg9w9uf0r5H0sHAWg8nF9hPGv3yiVSymvOl8sFqaNI+3lutw3OSR1lb2
w+/fyppEfuqdpaijK9q3MQKBgAMuyNBNow1SuhtKv0YseCHGveB7kuWCQgiY6Ms5
8/nEya60IslRpjaTu6nbsN89Pmc2Ky3NdllGkAZSYWreXqr/5uLWjxwZwGiFTBga
Kb92NNBt2AxhHZ7sQH/eQiJNBtJ9MlpUlk3swA8VRCrCtbvVwHZVaVfR5Ghg+1Gj
bmNRAoGBAI3ejWhD08Ox1/hi9weU9bakxMCLbVj+pZDCldInQ1iNuh6t325p8klc
TwySGi/qE5vJAnwb0cFxML7QtLjwdQB2dfUKaCSS/lwNycnAAoIQFZx3IAwI13bd
LRg6AkcesJeTmbcwBvBpmA3cqPgKO8tG67SZULG0lvv3rokG7rzr
-----END RSA PRIVATE KEY-----
```

## Examine the generate keypair file 

You can examine the contents of the file using the command 
`openssl rsa -noout -text -inform PEM -in rsa-keypair.pem`

```
Private-Key: (2048 bit)
modulus:
    00:bf:2c:60:42:21:68:f4:48:76:65:e4:1a:66:ef:
    d3:9c:51:c0:4b:ec:53:19:9c:e7:c2:8e:b3:b8:ca:
    00:07:e6:d7:91:c0:5c:5f:a6:ab:0f:25:39:5b:e1:
    44:6a:85:6c:17:0d:71:b3:b6:1e:12:72:0b:a5:28:
    73:e5:d5:ce:d2:e7:5a:91:0c:b1:6c:ca:ce:f2:07:
    d1:9d:35:94:78:dd:c5:ef:15:fe:e4:e1:f9:ef:e5:
    c9:b1:3e:ac:76:3f:63:34:b0:c9:cf:70:ca:59:7d:
    c0:3d:13:19:99:58:a8:80:69:a4:40:e5:d9:de:17:
    4e:64:9e:4b:61:d0:c3:c5:22:96:27:ad:a4:86:a4:
    28:cb:bf:33:28:1d:af:32:4c:07:d2:10:94:09:a2:
    8a:4b:22:8c:ce:da:55:6c:1b:63:bf:9e:66:81:41:
    d4:bb:fd:ee:7f:ca:50:da:90:81:1f:b7:fa:d6:b3:
    5d:e8:5a:5a:c7:71:b5:c4:d5:17:ea:ed:cd:c9:b7:
    45:1f:9f:16:e4:e0:f6:c2:df:10:3a:5b:22:b3:40:
    33:b4:9c:b9:c4:70:42:49:67:ba:d0:d9:56:32:dc:
    d6:70:a2:ec:a1:27:75:7b:c2:8c:d4:63:74:e6:51:
    99:ba:16:e8:2c:96:be:0a:31:36:de:3d:48:5c:ca:
    ce:05
publicExponent: 65537 (0x10001)
privateExponent:
    00:d3:55:3b:13:df:db:26:30:f4:b1:ae:77:81:53:
    9d:9a:30:c5:63:28:dc:b4:73:bf:c0:54:00:59:46:
    f4:c1:c7:6e:86:b1:1f:6c:9d:d2:7b:eb:aa:7c:e7:
    89:ba:37:c4:45:b7:96:fa:13:59:2b:0a:e7:d4:ab:
    e3:73:2f:e8:73:3d:4d:e1:0b:27:18:1d:1a:a8:73:
    fc:44:cd:f6:53:a6:d6:28:77:28:4f:dd:7f:6e:b3:
    97:43:59:05:4d:b2:c4:f8:7a:76:9d:db:11:d5:dc:
    2d:a7:56:75:f6:0f:0c:36:e8:91:ab:2c:6c:ac:17:
    17:92:23:6b:31:b6:96:b4:54:9b:30:ca:2e:4e:09:
    ad:b1:48:37:17:dc:24:af:24:ab:b3:f5:3f:d5:ca:
    d1:c8:8f:1d:e5:c4:5b:6a:5f:a5:88:58:30:17:f7:
    2f:62:28:5d:3f:09:ad:a3:b6:ca:31:c3:74:01:b7:
    ce:81:c8:65:4c:d4:de:31:33:9f:05:18:cf:c7:cd:
    88:a9:b6:0c:c7:df:f7:fd:2f:73:f4:8f:f3:30:ab:
    47:e9:2c:39:0f:ba:28:51:c2:ca:4f:36:4f:cd:57:
    6a:cb:1d:04:6c:51:16:d7:d4:3d:7c:20:84:3b:57:
    60:14:a2:d6:e6:e3:98:b0:9d:12:ff:e6:68:28:e1:
    c1
prime1:
    00:f8:b4:62:08:5d:3e:6b:ec:15:34:03:95:1a:df:
    ad:aa:5e:78:99:18:df:68:3e:0e:ce:b6:83:13:73:
    0a:10:2b:9a:9f:2d:7f:92:a2:f2:92:20:2e:dd:1c:
    5d:25:a7:f6:17:f7:d4:be:2d:4c:03:b7:d4:6f:ca:
    11:9e:9a:b4:10:e8:5d:89:87:6a:43:aa:52:81:26:
    da:79:a1:c7:c0:8b:d0:be:af:a6:fe:9a:91:fa:9c:
    de:52:60:17:59:ac:fd:ba:54:3b:4e:cd:8e:67:46:
    4b:5d:5e:1f:15:03:96:c9:69:b7:8e:70:21:e1:c2:
    1b:e1:06:4b:79:d7:37:01:91
prime2:
    00:c4:c7:f8:0d:26:7c:5e:22:a3:bf:7b:4e:78:b1:
    57:7c:58:ca:ae:3c:b5:e0:66:4a:1b:c2:82:72:a7:
    e5:d9:8a:fa:14:b9:d6:cf:cd:a7:2d:df:b2:22:9f:
    16:ed:30:b2:d3:b3:4b:58:10:75:8d:42:f8:7c:3b:
    d4:d4:7a:17:84:00:74:96:15:b9:27:d0:c9:7c:10:
    92:35:ad:5e:19:1b:1d:9e:1b:2a:13:9a:15:43:1b:
    e0:26:57:6d:4c:1d:40:9b:89:61:74:a2:72:99:5f:
    26:99:eb:88:37:c2:4a:ff:e0:31:49:df:13:9e:3e:
    d8:f0:e1:03:87:e8:d2:4b:35
exponent1:
    09:26:41:b1:03:15:27:cd:40:9e:70:3f:4d:04:cb:
    93:c7:f3:f1:d5:eb:6a:1f:56:56:1e:7a:c5:fd:66:
    72:5f:d8:49:60:d8:1f:a1:e5:00:a1:34:78:27:f1:
    f9:4f:ab:8b:08:30:08:6b:0c:2f:da:d4:72:e4:61:
    2f:8f:8b:6e:4f:ce:19:20:25:35:a6:0f:70:f6:e7:
    f4:af:91:f4:b0:70:16:83:c9:c5:f6:13:c6:bf:7c:
    a2:55:2c:a6:bc:e9:7c:b0:5a:9a:34:8f:b7:96:eb:
    70:dc:e4:91:d6:56:f6:c3:ef:df:ca:9a:44:7e:ea:
    9d:a5:a8:a3:2b:da:b7:31
exponent2:
    03:2e:c8:d0:4d:a3:0d:52:ba:1b:4a:bf:46:2c:78:
    21:c6:bd:e0:7b:92:e5:82:42:08:98:e8:cb:39:f3:
    f9:c4:c9:ae:b4:22:c9:51:a6:36:93:bb:a9:db:b0:
    df:3d:3e:67:36:2b:2d:cd:76:59:46:90:06:52:61:
    6a:de:5e:aa:ff:e6:e2:d6:8f:1c:19:c0:68:85:4c:
    18:1a:29:bf:76:34:d0:6d:d8:0c:61:1d:9e:ec:40:
    7f:de:42:22:4d:06:d2:7d:32:5a:54:96:4d:ec:c0:
    0f:15:44:2a:c2:b5:bb:d5:c0:76:55:69:57:d1:e4:
    68:60:fb:51:a3:6e:63:51
coefficient:
    00:8d:de:8d:68:43:d3:c3:b1:d7:f8:62:f7:07:94:
    f5:b6:a4:c4:c0:8b:6d:58:fe:a5:90:c2:95:d2:27:
    43:58:8d:ba:1e:ad:df:6e:69:f2:49:5c:4f:0c:92:
    1a:2f:ea:13:9b:c9:02:7c:1b:d1:c1:71:30:be:d0:
    b4:b8:f0:75:00:76:75:f5:0a:68:24:92:fe:5c:0d:
    c9:c9:c0:02:82:10:15:9c:77:20:0c:08:d7:76:dd:
    2d:18:3a:02:47:1e:b0:97:93:99:b7:30:06:f0:69:
    98:0d:dc:a8:f8:0a:3b:cb:46:eb:b4:99:50:b1:b4:
    96:fb:f7:ae:89:06:ee:bc:eb
```

## Exporting the public key file

The public key can be exported out of the keypair file 
using the command `openssl rsa -in rsa-keypair.pem -pubout -out rsa-pubkey.pem` 
which produces the file with the contents below. 

```
-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvyxgQiFo9Eh2ZeQaZu/T
nFHAS+xTGZznwo6zuMoAB+bXkcBcX6arDyU5W+FEaoVsFw1xs7YeEnILpShz5dXO
0udakQyxbMrO8gfRnTWUeN3F7xX+5OH57+XJsT6sdj9jNLDJz3DKWX3APRMZmVio
gGmkQOXZ3hdOZJ5LYdDDxSKWJ62khqQoy78zKB2vMkwH0hCUCaKKSyKMztpVbBtj
v55mgUHUu/3uf8pQ2pCBH7f61rNd6Fpax3G1xNUX6u3NybdFH58W5OD2wt8QOlsi
s0AztJy5xHBCSWe60NlWMtzWcKLsoSd1e8KM1GN05lGZuhboLJa+CjE23j1IXMrO
BQIDAQAB
-----END PUBLIC KEY-----
```

## Inspecting the public key file 

You can inspect the public key file with the command 
`openssl rsa -noout -text -inform PEM -in ras-pubkey.pem -pubin` 
to produce the output below.

```
Public-Key: (2048 bit)
Modulus:
    00:bf:2c:60:42:21:68:f4:48:76:65:e4:1a:66:ef:
    d3:9c:51:c0:4b:ec:53:19:9c:e7:c2:8e:b3:b8:ca:
    00:07:e6:d7:91:c0:5c:5f:a6:ab:0f:25:39:5b:e1:
    44:6a:85:6c:17:0d:71:b3:b6:1e:12:72:0b:a5:28:
    73:e5:d5:ce:d2:e7:5a:91:0c:b1:6c:ca:ce:f2:07:
    d1:9d:35:94:78:dd:c5:ef:15:fe:e4:e1:f9:ef:e5:
    c9:b1:3e:ac:76:3f:63:34:b0:c9:cf:70:ca:59:7d:
    c0:3d:13:19:99:58:a8:80:69:a4:40:e5:d9:de:17:
    4e:64:9e:4b:61:d0:c3:c5:22:96:27:ad:a4:86:a4:
    28:cb:bf:33:28:1d:af:32:4c:07:d2:10:94:09:a2:
    8a:4b:22:8c:ce:da:55:6c:1b:63:bf:9e:66:81:41:
    d4:bb:fd:ee:7f:ca:50:da:90:81:1f:b7:fa:d6:b3:
    5d:e8:5a:5a:c7:71:b5:c4:d5:17:ea:ed:cd:c9:b7:
    45:1f:9f:16:e4:e0:f6:c2:df:10:3a:5b:22:b3:40:
    33:b4:9c:b9:c4:70:42:49:67:ba:d0:d9:56:32:dc:
    d6:70:a2:ec:a1:27:75:7b:c2:8c:d4:63:74:e6:51:
    99:ba:16:e8:2c:96:be:0a:31:36:de:3d:48:5c:ca:
    ce:05
Exponent: 65537 (0x10001)
```

## Generate a Password Protected Key File

The PEM file can be encrypted using AES/CBC using a password.
with the command 
`openssl genrsa -aes256 -out rsa-keypair-aes.pem 2048` You will be
prompted by openssl to enter a password I used the password 
`verysecert` to produce the file below.

```
-----BEGIN RSA PRIVATE KEY-----
Proc-Type: 4,ENCRYPTED
DEK-Info: AES-256-CBC,1630A9EBBE7087602879D0E2105C9E82

PRnoDrfV/nlNzobfFoap6HPacNjG8oOp7Cp8CKpxTXFLyYFxllknns5M7x4R9sW+
0JZiabVpIeJmQ8dIugWO6nYFE0cquvclx9raokqddXL2gUWhCBuH1VrGSfUGyUSt
4CGLqbTBmAUNeVApmwqKp7El8/Y1YKcAaS99UzyzCjmd52JtgTfEXdRNWOmNx8K6
vLiK4P7faUbk0szO2jwKd/Od6CnL635xh9JA3tznzySCs8GGn95BFYDrKLE8n2sD
Afp13WzF1KUHZy4khIq6xW2UxSvvjzg+YoEprVM8BftAsOPs/zX21EmUsFbhovQr
9l09b/XCYV1HC9cZF2CoFBFROdQwncoTvHCA+LV4NT9asByGxh0btjz1BZ/zRZ/V
v49PgyUtuSpibQbzUymU7sex1ms8/nLkABEIZtaCbjkmXbTpWcul/5WA5kBy9c24
8+aTnMqMSk6AxHtf2SSf6mqlEEBULn5teRD5BdVFhtwEr/b6WSWTh0HprYS8i/hI
phRGkqFIMxBTgpioLynCWV7wZgxjBYHENmdVviLEUPkIc/PC2UYpAP2xnb5ar/nd
eHVFC4zCKsc68UPn8RncvptAvKejZu37R4YndijocdFwmPbpfRAWKI6wdi+dUHAc
2Ko50yaLGKYr8kS9QP2dk/+PGGAb6tGErU1NXRfey1UI7eamRk4FAcYdF1FRNV65
e6tbSFHRAxo6ufU+Jr8xDOHA5KlMwPu2HNrgoRaNfYXT4RAalorP0kFKhAFllup5
+wdLuMvooa0Jp4Whngfqt9ZB7k+Ortu71znlXoSiv3gMtgngQjcGpojw6pP0tni9
7Q3Gy/QySi1NAHRjEl38lIhj5YHzeMdk5wmVJ+3pkYfM6X56qdCVzxxbcabJqcA5
GTLK3sQM1teYzH+sDt9USW3aKf+z563xrcJ3zegEz6FpTa7byQazHS70HJlnAqBg
rLogBTzUtia6eN2dLiFZsSxJO10GWkNu3F06YFJKJDW9+JP4eZba093xreOkcXc3
DieVdXqWZTG8QoEeQWTARna0adE+FRN4oDYxtuB38wRBw2lTntatx9mVGnUDqGpy
ddl7EwCCn86NMEV71/rQy8gRjRf4AG5rjbrQGbNoK8QCj1oi7EHW7kEqFO5Gk3hX
QzNZdkxoB3Qjp1NJI9v+/FJLJbcZb00SnwAslcpgCYXXDFujqh5TLt7D84Ipi/Bw
cLM/wRj4eO/1STzw3Z7CRGqIUc/nlejfbxGHeeaztGYizsau9EvySFES1uKCYJNg
hsIwdHyszwMgjUk7UbhfWoQbWBYowfg7RQsWDr9Nzs1ku9onP6r6TaLXV0+zvlOk
yUQeG2AjV39Hl25YnSdVDsaFrdLux3MHrvHgL0s8du7pYdA/Mb9N98kbAYA/Nczw
laLK1VNna667zOHf64GgV3uFqfOQJOHhS+N4VhErYc0IS+DmNDq+8SENVKlQHhrV
bpQi2EEudxBSaQIOEyrgZVLm4ELL+fu3UY+uMST16j+/g5D91KsFWOI475ynRnTN
tWAytigb7JZzVfLgQV5p+UmzttKrAGS7GHFW/8wPPoodANAx51dmQVj1/NoEmu3i
-----END RSA PRIVATE KEY-----
```

notice that the file includes metadata to indicate that it is 
encrypted with AES in CBC mode using a 256-bit key. to inspect
the file or access it must first be decrypted and the openssl
will prompt for a password. 

```
-----BEGIN RSA PRIVATE KEY-----
Proc-Type: 4,ENCRYPTED
DEK-Info: AES-256-CBC,1630A9EBBE7087602879D0E2105C9E82
```