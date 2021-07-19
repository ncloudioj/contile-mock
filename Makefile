
.PHONY: run reload stop

run:
	openresty -p . -c conf/nginx.conf 

reload:
	openresty -s reload

stop:
	openresty -s stop
