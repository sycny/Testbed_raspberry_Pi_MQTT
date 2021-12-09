#!/bin/bash
ssh pi@10.42.0.187 > /dev/null 2>&1 << eeooff
python publisher.py 1 2  
./pi1.sh
nc -zvn 10.42.0.187 1-36000
exit
eeooff
echo done!
