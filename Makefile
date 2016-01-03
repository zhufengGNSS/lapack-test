all:
	gfortran -g -O0 -c  lapack_prb.f90
	gfortran  lapack_prb.o -o lapack_prb -LF:\cygwin\home\szl\ftp/lapack-master/build/lib -llapack  -lblas
clean:
	rm -f lapack_prb *.o
test1:
	echo "begin test"
	set -x
	./lapack_prb.sh
	set +x
	echo "end test"
gdb-test:
	gdb  lapack_prb
	read comd
	echo $comd
Debug : all

