#!/bin/bash
ssh pi@10.42.0.189 > /dev/null 2>&1 << eeooff
python3 publisher.py 1 1
./pi2.sh
nc -zvn 10.42.0.189 1-36000
exit
eeooff
echo done!
