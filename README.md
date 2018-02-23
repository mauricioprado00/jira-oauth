# To build oauth server
```
./config/setup/build.sh
```

# To start oauth server
```
./config/setup/oauth-server.sh
```


https://developer.atlassian.com/cloud/jira/platform/rest/
```
https://noahadvisors.atlassian.net/rest/api/2/issue/MAG-42/comment > /tmp/comments.js
/tmp/comments.js | jq .comments[].body
```