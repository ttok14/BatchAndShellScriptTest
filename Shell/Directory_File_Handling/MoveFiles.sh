#!/bin/bash

# 두 개의 Argument $1, $2 를 Directory 로 받고 , 
# $1 에 위치한 * 모든 파일 및 폴더 * 들 $2 로 이동

from=$1
to=$2

mv $from/* $to