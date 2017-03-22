echo "Iniciando Streaming"
adb shell wm size


adb shell screenrecord --output-format raw-frames - > video.raw
