#########################################
#                 Docker                #
#########################################

# >> 선택한 image가 사용하고 있는 volume의 절대경로를 출력
docker volume inspect $(docker volume ls | fzf -m | awk '{print $2}')

# >> Running중이던 suspended 되어있건 선택한 image를 완전히 삭제
docker rm -f $(docker ps -a | fzf -m | awk '{print $1}')
