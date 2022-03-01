#!/bin/bash
# Start the python http server
cd /opt/ansible/reports
nohup python3 -m http.server 8000 > /opt/ansible/python_http_server.log 2>&1 &
echo $! > /opt/ansible/.http_server_pid