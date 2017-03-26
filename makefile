yuv4mpeg_to_v4l2:yuv4mpeg_to_v4l2.c
	gcc -o yuv4mpeg_to_v4l2 yuv4mpeg_to_v4l2.c

clean: 
	rm yuv4mpeg_to_v4l2

run:
	./stream.sh
