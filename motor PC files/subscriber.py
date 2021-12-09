# subscriber.py
import paho.mqtt.client as mqtt
import sys
from motorchange import motorchange

def on_connect(client, userdata, flags, rc):
    print(f"Connected with result code {rc}")
    client.subscribe(f"raspberry/sensorweb{sys.argv[1]}")

def on_message(client, userdata, msg):
    #print(msg.payload.decode("utf-8"))
    motorchange(int(msg.payload.decode("utf-8")))

client = mqtt.Client()
client.on_connect = on_connect
client.on_message = on_message
#print(status)
client.will_set('raspberry/status',  b'{"status": "Off"}')

client.connect("broker.emqx.io", 1883, 60)

client.loop_forever()