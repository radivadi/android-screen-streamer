echo "Iniciando Streaming"
adb shell wm size
adb shell screenrecord --size 1280x720 --bit-rate 500000  --output-format raw-frames - | mplayer -demuxer rawvideo -rawvideo w=1280:h=720:format=rgb24 -
