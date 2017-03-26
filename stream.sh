trap cleanup INT
function cleanup() {
	rm /tmp/pipe
	echo "Finalizando Stream"
	exit
}

echo "Iniciando Streaming"
#adb shell wm size
mkfifo /tmp/pipe

while true
do
	./yuv4mpeg_to_v4l2 /dev/video1 < /tmp/pipe &
	adb shell screenrecord --time-limit 20 --size 1280x720 --bit-rate 500000  --output-format h264 - | mplayer  -demuxer h264es -fps 60 - -vo yuv4mpeg:file=/tmp/pipe
done


cleanup
