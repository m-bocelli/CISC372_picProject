
posix: image_posix.c image_posix.h
	gcc -g image_posix.c -o image_posix -lm -lpthread 

omp: image_omp.c image_omp.h
	gcc -g image_omp.c -o image_omp -lm -fopenmp

image:image.c image.h
	gcc -g image.c -o image -lm
clean:
	rm -f image image_omp image_posix output.png
