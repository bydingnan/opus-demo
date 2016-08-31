#/usr/bin/bash 

set -x

if [ $# != 3 ] ;then
    echo $# $0 $1 $2 $3
    exit -1
fi

echo $# $0 $1 $2 $3

valgrind --tool=memcheck --leak-check=yes --show-reachable=yes --num-callers=20 --track-fds=yes ./$1 $2 $3

valgrind --tool=massif --time-unit=B --massif-out-file=massif.out ./$1 $2 $3

ms_print massif.out

