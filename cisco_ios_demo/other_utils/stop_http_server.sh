#!/bin/bash
# Stop the python http server process
# expects the /opt/ansible/.http_server_pid

if [[ -s  /opt/ansible/.http_server_pid ]]; then
  kill -9 `cat /opt/ansible/.http_server_pid`
  rm  /opt/ansible/.http_server_pid
  echo "Stopped http.server"
else
  echo -e "Error : /opt/ansible/.http_server_pid file not found/zero size.\nAre you sure the http server is running?\nPlease check with: ps -eaf | grep [h]ttp.server"
fi