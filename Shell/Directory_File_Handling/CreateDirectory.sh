#!/bin/bash

# 폴더를 생성하되 2 개 이상의 Directory 의 생성이 필요할때 -p 없이는 생성이 안됨.
# 즉 -p 가 없을때는 이미 존재하는 Directory 상에 하나의 Directory 만 생성 가능 
#	e.g. A/B/C 가 이미 존재할때 Argument 로 A/B/C/D 를 넣어주면 -p 가 없어도 D 폴더가 정상적으로 생성됨
#		하지만 A/B/C 만 존재할때 A/B/C/D/E 를 넣어주면 D 및 E 폴더가 생성되어야 하는데
#		이런 케이스에 -p 가 없으면 에러가 발생 .
#		하지만 이럴때 -p 를 붙이면 중간 Directory 들도 전부 정상적으로 생성함 

mkdir -p $1