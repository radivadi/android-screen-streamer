echo "Iniciando Streaming"
adb shell wm size
adb shell screenrecord --size 1280x720 --bit-rate 500000  --output-format h264 - | mplayer -nocache -demuxer h264es -fps 60 -
