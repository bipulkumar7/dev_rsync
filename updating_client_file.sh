#!/usr/bin/env bash
for i in {1..200};
do
if [ $(($i % 2)) != 0 ]
then 
	#printf "file$i.txt "
	dd if=/dev/urandom of=/client/dir1/file$i.txt bs=6K count=1 oflag=append conv=notrunc &> /dev/null;
fi
done
