docker-compose up -d
docker stop dafazendago-api
heroku pg:backups:capture --app dafazendago-api
heroku pg:backups:download --app dafazendago-api
docker exec -it dafazendago-api psql -U postgres -c 'DROP DATABASE IF EXISTS rails_api_base_project_development'
docker exec -it dafazendago-api psql -U postgres -c "CREATE DATABASE rails_api_base_project_development"
docker exec -it dafazendago-api pg_restore --no-owner  -U postgres -d rails_api_base_project_development -1 ./share/latest.dump
sh bin/dev
