#!/bin/sh


#分隔字符串

function explode ()
{
	delimiter=$1
	str=$2

	tmp=$IFS
	IFS='-'
	array=($date)
	IFS=$tmp

	#shell 返回方式两种 1.return 2.echo 
	echo ${array[*]}
}


#demo date转为数组
date="2020-05-28"
date_args=($(explode '-' $date))