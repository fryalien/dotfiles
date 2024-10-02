#! /usr/bin/bash

ip=`hostname -I`
com="python3 -m http.server -b"

echo $com $ip
