#!/bin/bash

# 사용자에게 Bumper 설치 여부를 묻는 함수
ask_installation() {
  while true; do
    read -p "Bumper를 설치할 수 있습니까? (Y/N) " yn
    case $yn in
        [Yy]*) install_bumper; break;;  # 'Y' 또는 'y'를 입력받으면 설치 함수 호출
        [Nn]*) echo "설치가 취소되었습니다."; exit;;  # 'N' 또는 'n'을 입력받으면 스크립트 종료
        *) echo "Y 또는 N을 입력해 주세요."; continue;;  # 그 외 입력은 재입력 요청
    esac
  done
}

# Bumper 설치 함수
install_bumper() {
  echo "Bumper 설치를 시작합니다."
  # 설치 관련 명령어나 스크립트를 여기에 삽입
  echo "Bumper가 성공적으로 설치되었습니다."
}

# 메인 스크립트 실행
ask_installation
