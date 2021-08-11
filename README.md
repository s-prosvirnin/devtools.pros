//посмотреть запущенные контейнеры
sudo docker ps
//перезапуск
sudo systemctl daemon-reload
sudo service docker restart
//войти внутрь php контейнера
sudo docker exec -it php-fpm-dev /bin/bash
//удалить все контейнеры, в том числе рабочие
sudo docker rm -f $(sudo docker ps -a -q)
//удаление всего неиспользуемого(контейнеры, образы, диски)
sudo docker system prune -a
//запуск docker compose файла
docker-compose -up
//остановка
docker-compose down
//останавливаем контейнер
docker kill nginx
//остановить все контейнеры
docker stop $(docker ps -a -q)
//запустить команду внутри php-fpm контейнера
docker-compose exec php-fpm composer install
//очистить сеть(ошибка Pool overlaps)
sudo docker network prune
