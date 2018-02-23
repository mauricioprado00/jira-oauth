#!/bin/sh

apk --update add zip curl openssl && rm -rf /var/cache/apk/*

echo clonning atlassian-oauth-examples into ${GIT_PATH}
rm -Rf ${GIT_PATH} 2>/dev/null
cd ${GIT_PATH}
curl -L ${GIT_ORIGIN} > /tmp/3f0d22c5b1d8.zip
ls -lah /tmp/3f0d22c5b1d8.zip
unzip /tmp/3f0d22c5b1d8.zip
rm /tmp/3f0d22c5b1d8.zip
mv ${GIT_PATH}/at* ${GIT_PATH}/examples


if [ -f ${KEY_OUT} ] || [ -f ${CER_OUT} ]; then
    echo "Key and certificates exists on ${OPENSSL_PATH_REL}, remove them to re-generate them"
else
    openssl req -x509 -nodes -days 365 -newkey rsa:1024 -sha1 -subj '/C=US/ST=CA/L=Mountain View/CN=www.example.com' -keyout ${KEY_OUT} -out ${CER_OUT}
    chmod 777 ${KEY_OUT} ${CER_OUT}
fi