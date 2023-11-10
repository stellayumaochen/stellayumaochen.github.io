#!/bin/bash
for i in *.mp4;
#do ffmpeg -i $i -c:v libx264 -preset medium -crf 18 -x264-params mvrange=511 -vf "scale=4800:2400" -c:a copy $i-done.mp4;``
do ffmpeg -i $i  -movflags +faststart  -vcodec h264 -acodec aac $i-ffp.mp4;
done
