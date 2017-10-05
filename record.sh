#!/bin/bash

FNAME=uqm_"$HOSTNAME"_"$(date +%Y%m%d%H%M%S)"

echo
echo "To watch via browser: http://85.143.112.127/?name=$FNAME"
echo "To watch via mpv:     mpv rtmp://85.143.112.127:1935/live/$FNAME.flv"
echo
echo Press any key to start the recording...

read

exec ffmpeg -s 1067x800 -f x11grab -r 25 -i :0.0+213,0 -f pulse -ac 2 -i default -vf scale=640:480 -c:v libx264 -pix_fmt yuv420p -g 50 -c:a aac -f flv rtmp://85.143.112.127:1935/live/"$FNAME".flv

