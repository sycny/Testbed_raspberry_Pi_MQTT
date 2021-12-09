All the devices(PC and Pis) need to be connected to the same network
The default network is 'sensorweblaptop'. Its password is coI876GE.
In this network, the ip of all devices will not change:

Basic info:
    the main PC (Service tag: F80KCH2) ip is 10.42.0.52 
    the 1st pi ip is 10.42.0.187 
    the 2nd pi ip is 10.42.0.189 
    the 3rd pi ip is 10.42.0.220 
    the 4th pi ip is 10.42.0.203 

Beware, changing the network may cause the ip change, which will lead to the ssh-key failure.

To run the testbed:

1, Make sure all the devices are connected correctly.
2, Open the firefox web browser on the main PC, and open 4 Granfana panels from the bookmarks.
2, Check if all the devices have their .sh file and publisher.py file in their home directory, and the corresponding file are in the uploaded folders.
3, Open the subscriber.py file on four motor PCs.
3, run ./scanandmqtt.sh from the main PC.
4, Now the subscriber.py will receive the messages.

Notes:
1, To change the publisher payload on Pi N, the Pi N-1's .sh file should be changed. For example, if you want to change the 3rd Pi publisher information, pi2.sh needs to be changed.
2, The publisher.py has two parameters to configure. The first one is the channel number. The second one is the payload information.
3, The subscriber.py has one parameter to configure. It is the channel number.

