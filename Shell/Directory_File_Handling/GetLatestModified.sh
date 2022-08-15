#!/bin/bash

# 가장 최근에 Modification 됐던 파일 조회 

TARGET=$(ls -tr | tail -1)
echo $TARGET