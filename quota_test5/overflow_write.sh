i=0

while [ 1 ]
do
	touch "/tmp/hello$i"
	i=`expr $i + 1`
done
