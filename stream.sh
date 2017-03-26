echo "Iniciando Streaming"
adb shell wm size


./yuv4mpeg_to_v4l2 /dev/video1 < /tmp/pipe &
adb shell screenrecord --size 1280x720 --bit-rate 500000  --output-format h264 - | mplayer  -demuxer h264es -fps 60 - #-vo yuv4mpeg:file=/tmp/pipe
rm /tmp/pipe

