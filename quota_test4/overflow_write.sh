i=0

while [ 1 ]
do
	touch "hello $i"
	i=`expr $i + 1`
done
