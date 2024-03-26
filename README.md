# MVC architecture

Models are databases (schema)
View are webpages
controller are brain behind the scene business logic written here

## apps
assets (css, js, images files) for webpages
views (web pages are built here)

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
