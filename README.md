![CI](https://github.com/codelittinc/rails-api-base-project/workflows/CI/badge.svg)

## Getting started

### Setting up your environment

[Install docker](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04) and docker-compose

### Setting up the project

1. git clone git@github.com:codelittinc/rails-api-base-project.git
2. inside the project folder run `sh bin/dev`

You are now in the docker console

3. run: cp .env.example .env
4. run: `bundle install`
5. you will need to remove the test model: `rails d model test_model`
6. run: `rails db:create && rails db:migrate`
7. make sure to commit the removal of the test_model
8. run rails s -b \`hostname -i\`
