## Run Docker
```
$ docker run -it -v /var/log:/var/log --env SPLUNK_FORWARD_SERVER='<DEPLOYMENT_SERVER>:9997' -e SPLUNK_ADD_1='monitor /var/log/*' -e SPLUNK_START_ARGS=--accept-license -e SPLUNK_PASSWORD=<SPLUNK_LOCAL_PASSWORD> splunk/universalforwarder:8.0.4
```