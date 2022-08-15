#!/bin/bash

# $1 가 존재하는 Directory 인지 검사 (Directory 즉 폴더인 경우에만 유효함)
# 만약 폴더가 아닌 .txt 파일이나 .png 등 파일인 경우 무조건 False 임

if [[ -d $1 ]]
then
	echo "Path Exist !"
else
	echo "Path Does not Exist !"
fi