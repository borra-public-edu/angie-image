Docker образ Angie версия 1.11.8 на основе Alpine 3.24
[Ссылка на сайт](https://angie.software/angie/docs/installation/docker/)

Пример команд:
```
docker build -f Dockerfile.nonroot -t borra4all/angie:1.11.8-non-root .
docker run --rm --name myangie-non-root -p 80:8080 -d borra4all/angie:1.11.8-non-root
```
```
docker login -u borra4all
docker push borra4all/angie:1.11.8-non-root
```
