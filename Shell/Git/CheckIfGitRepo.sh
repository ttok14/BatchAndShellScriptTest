#!/bin/bash

# $1 파라미터가 Git Repository 인지 검사하는 함수 
#	- 해당 Folder 가 Commit 되지 않아도 Git Repository 의 Sub Folder 일때도 감지 가능

# 	참고
#		- Shell, Batch 등 스크립트에서는 0 이 True 를 의미함. 
#			그래서 return 0 => return True 랑 같은 의미이고
#			if 문에서도 0 이 반환됐을때 조건을 만족후 해당 if 내부 코드 실행함 
#		- 함수 안에서의 Argument 는 해당 script 를 실행했을때 넘기는 최초 Argument 와는 무관함
#			(예외 : $0 은 고정으로 해당 .sh 의 Path)
#			함수 내에서의 Argument 는 함수를 호출할때 넘기는 순서대로 Argument 가 정해짐.
#				e.g. Function01 "ABC" "DBC" 라면은 
#						Function01 내에서의 $1 : ABC $2 : DBC 가 되는거임

# git repo 인지 체크해주는 함수
isGitRepo()
{
	# Arg : 체크 대상 Path
	if git -C $1 rev-parse 2>/dev/null
	then
		return 0
	else
		return 1
	fi
}

if isGitRepo $1
then
	echo "This is Git Repo"
else
	echo "This is not Git Repo"
fi