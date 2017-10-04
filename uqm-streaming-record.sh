#!/bin/bash

NAME="$1"; shift

exec ffmpeg -i rtmp://localhost/uqm/"$NAME" /srv/share/nfs/uqm/"$NAME"-"$(date +'%Y-%m-%d_%H-%M-%S')".mkv
