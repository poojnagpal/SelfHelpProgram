#Technologies
Ruby 2.5.6
Rails 6.0.0
Postgresql

#Installation
  Local Development
  Clone the repo
    git clone 
    cd unloop

#Install dependencies
  ```
  bundle install
  yarn install
```
#Setup database
  ```
  rails db:setup
  ```
  This runs db:create, db:schema:load, and db:seed
  
  OR
  
  ```
  rake db:migrate
  rake db:reset
  rake db:seed
```
