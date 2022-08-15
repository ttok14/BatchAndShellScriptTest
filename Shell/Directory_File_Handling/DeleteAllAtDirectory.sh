#!/bin/bash

# 해당 Directory 에 위치하는 모든 File 및 Directory 제거 

# 	- rm $1/* : 해당 Directory 상에 위치한 모든 File 만 제거 (Directory 는 유지)
#	- rm -r $1/* : 해당 Directory 상에 위치한 모든 File 및 Directory 제거 
#	- rm $1 : 해당 Directory 를 통째로 삭제 

# - 주의사항 
#	- rm 으로 Delete 된 파일 및 폴더들은 휴지통으로 가는게 아니라 영구 제거됨 

if [[ ! -d $1 ]]
then	
	echo "This is not valid Directory"
	exit 1;
else
	rm -r $1/*
fi