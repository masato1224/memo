# Rrails 6の環境構築

## Clone And Rename
### clone
```
clone git@github.com:DiveIntoHacking/docker-compose-rails-6.git
```
### delete .git
### rename root_directory

## Create repository and push
after creating repository

```
git add .
git commit -m "init"
git remote add origin <path>
git push -u origin master
```

## build env
```
docker-compose run --rm web bundle install
docker-compose run --rm web yarn install
docker-compose up
docker-compose exec web ./bin/rails db:create

```

