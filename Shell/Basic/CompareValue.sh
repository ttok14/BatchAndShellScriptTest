#!/bin/bash

# 값 비교하기
# -gt => Greater than ( 왼쪽 값이 오른쪽 값보다 * 더 크다면 *)
#	-ge	=> Greater equal ( 왼쪽 값과 오른쪽 값이 * 같다면 *)
# 위와 같은 메커니즘으로 동작

value=160

if [[ $value -gt  150 ]]
then
	echo "Greater!"
else
	echo "Equal or Less!"
fi