
# MVC architecture

Models are databases (schema)
View are webpages
controller are brain behind the scene business logic written here

## apps
- assets (css, js, images files) for webpages
- views (web pages are built here)

## config

routes file where (routes for webpages are created)

## rails generate create webpage 

creating webpage in rails

```cmd
rails g controller home index
```

manual way
in app/views/home create a file - `filename.html.erb`

go to controllers/home_controller
create a blank method
```
def about
end
```
and create a route in config/route
```
get 'home/about'
```
can visit this page using this url
```home/about```


## rails generate scaffold
generating model
```
rails g scaffold friends first_name:string last_name:string email:string phone:string twitter:string
```
After this need to do db migrate to push this changes of models into database
```
rails db:migrate
```

to view all routes
```
rails routes
```

## Installing new gem file

visit for gems
<https://rubygems.org/>

copy gem file code in Gemfile  
example installing devise gem for login and auth

```
gem 'devise', '~> 4.9', '>= 4.9.3'
```
stop the server if running and perform

```
bundle install
```
then we can follow the documentation for setup further of that gem, currrently setting up devise
```
rails generate devise:install
```
after this steps perform steps provided in console
later from documentation do this
adding devise model as uesr
```
rails generate devise user
```
as we have created table we need to migrate it
```
rails db:migrate
```

## Association

it is like joining tables in database but here it is done in models

example -
models/friend.rb
```
belongs_to :user 
```

models/user.rb
```
hash_many: friends
```

now in database need to add foreign key of user to friend to associate it
so need to generate and run migration
```
 rails g migration add_user_id_to_friends user_id:integer:index
```
```
 rails db:migrate
```

- make changes in new friend form to send current user id
- now in friend controller add this newly created user_id field (column) in params

in controller
there is before_action which is ran before any methods index, show, new, edit, destroy are ran.
