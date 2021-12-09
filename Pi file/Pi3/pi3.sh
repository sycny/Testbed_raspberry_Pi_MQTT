#!/bin/bash
ssh pi@10.42.0.203 > /dev/null 2>&1 << eeooff
python3 publisher.py 4 1
nc -zvn 10.42.0.203 1-36000
exit
eeooff
echo done!
