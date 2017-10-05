#!/bin/bash

exec ffmpeg -s 1067x800 -f x11grab -r 25 -i :0.0+213,0 -f pulse -ac 2 -i default -vf scale=640:480 -c:v libx264 -pix_fmt yuv420p -g 50 -c:a aac -f flv rtmp://85.143.112.127:1935/live/uqm_"$HOSTNAME"_"$(date +%Y%m%d%H%M%S)".flv

