# 1. Minio client installation

## 1.1 Get the minio client bin

download the minio client bin from [minio](https://docs.min.io/docs/minio-admin-complete-guide.html)

## 1.2 set the client bin
```shell
# 1. change acl of the minio client
chmod a+x mc
# 2. put the bin under /usr/local/bin
mv mc /usr/local/bin
```

# 2. Setup minio client credential
There are two ways to set up credentials for a minio client.
1. If you have a static compte (e.g. access key + secret key), you can set up an alias by using solution 1.
2. If you have a dynamic account (e.g. access key + secret key+ session token), you can use solution 2

## 2.1 Solution 1
Below script will create a minio client alias which allows you to connect to the minio server and access data
Note the alias_name and host_name can be modified to any value that suits you
```shell
#! /bin/bash

alias_name="minio_client"
host_name="https://minio.lab.sspcloud.fr"
access_key="changeMe"
secret_key="changeMe"

mc alias set ${alias_name} ${host_name} ${access_key} ${secret_key}

```

## 2.2 Solution 2
Note with solution 2, you can use sh or ./ to run the script. Because they will start a sub shell to run the script
When the script finishes, they get out the sub shell and the export will be lost. Use **source** instead.

```shell
#! /bin/bash
host_name="minio.lab.sspcloud.fr"
access_key="changeMe"
secret_key="changeMe"
token="changeMe"
unset MC_HOST_s3

export MC_HOST_s3=https://${access_key}:${secret_key}:${token}@${host_name}

# note token is optional, if your don't have token, use below command
export MC_HOST_s3=https://${access_key}:${secret_key}:@${host_name}

```

## 3. Admin operations

If the alias you add has admin right, you can perform the following operations

```shell
# check your minio service status, note this works only if your account have admin right
mc admin info minio

# list all user of my service minio. Here minio is the alias which I create with command mc alias
mc admin user list minio

# add a new user to minio
mc admin user add minio
```


