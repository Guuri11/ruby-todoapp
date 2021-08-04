## File for taking notes about how Rails works
- Rails uses MVC arch
- Gemfile: File where shows all the dependencies of Rails, similar to composer.json

### App Folder
- assets: Contains css/media/js
- controller: C of MVC arch
- javascript: js files
- models: M of MVC arch
- views: V of MVC arch

### Config folder
- routes.rb: define web routes

### Routes
To seet a route as root
```
Rails.application.routes.draw do
  #get 'home/index'
  root 'home#index'
end
```

### Commands
- Generate a page: rails g / rails generate. Example:

```
$ rails g controller home index

Running via Spring preloader in process 194945
      create  app/controllers/home_controller.rb
       route  get 'home/index'
      invoke  erb
      create    app/views/home
      create    app/views/home/index.html.erb
      invoke  test_unit
      create    test/controllers/home_controller_test.rb
      invoke  helper
      create    app/helpers/home_helper.rb
      invoke    test_unit
      invoke  assets
      invoke    scss
      create      app/assets/stylesheets/home.scss
```

- Show all routes:
```
$ rails routes
```