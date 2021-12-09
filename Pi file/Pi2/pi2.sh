#!/bin/bash
ssh pi@10.42.0.220 > /dev/null 2>&1 << eeooff
python3 publisher.py 3 1
./pi3.sh
nc -zvn 10.42.0.220 1-36000
exit
eeooff
echo done!
