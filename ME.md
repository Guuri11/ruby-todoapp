# File for taking notes about how Rails works

- Rails uses MVC arch
- Gemfile: File where shows all the dependencies of Rails, similar to composer.json

## App Folder

- assets: Contains css/media/js
- controller: C of MVC arch
- javascript: js files
- models: M of MVC arch
- views: V of MVC arch

## Config folder

- routes.rb: define web routes

## Routes

To seet a route as root

```
Rails.application.routes.draw do
  #get 'home/index'
  root 'home#index'
end
```

## Commands

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

- Database crud: Investigate about Scaffold. This example creates a table

  List to supported Types: https://guides.rubyonrails.org/v3.2/migrations.html/#supported-types

```
$rails g scaffold todo name:string task:string

Running via Spring preloader in process 99374
      invoke  active_record
      create    db/migrate/20210804152916_create_todos.rb
      create    app/models/todo.rb
      invoke    test_unit
      create      test/models/todo_test.rb
      create      test/fixtures/todos.yml
      invoke  resource_route
       route    resources :todos
      invoke  scaffold_controller
      create    app/controllers/todos_controller.rb
      invoke    erb
      create      app/views/todos
      create      app/views/todos/index.html.erb
      create      app/views/todos/edit.html.erb
      create      app/views/todos/show.html.erb
      create      app/views/todos/new.html.erb
      create      app/views/todos/_form.html.erb
      invoke    resource_route
      invoke    test_unit
      create      test/controllers/todos_controller_test.rb
      create      test/system/todos_test.rb
      invoke    helper
      create      app/helpers/todos_helper.rb
      invoke      test_unit
      invoke    jbuilder
      create      app/views/todos/index.json.jbuilder
      create      app/views/todos/show.json.jbuilder
      create      app/views/todos/_todo.json.jbuilder
      invoke  assets
      invoke    scss
      create      app/assets/stylesheets/todos.scss
      invoke  scss
      create    app/assets/stylesheets/scaffolds.scss
```

- Create schema:
```
$ rails db:migrate
```


## Pages

To create a new page manually we need to create his template, the controller or function in his controller and add it to the routes

## ERB

ERB is the default html template for Rails, similar to Twig or Blade.

- Partials: Create a erb template and render it in the template that you want to use it like this:

```
<%= render "home/header" %>
      <div class="container">
        <%= yield %>
      </div>
<%= render "home/footer" %>
```

- Links: Replaces anchor tag to this piece of code to link the app to other pages. It has 3 main attributes
 - Text to display in the anchor tag
 - path to go, the structure is [controller]_[function]_path
 - class name

```
<%= lin_to '[text to show]', [path], class: "[css class name]" >
```

## Third party packages
https://rubygems.org/

## User system
Usually is used Devise, Gem package to manage all user flow
- Install
```
gem install devise
```

## Associations (1-N example)

#### Todo Model
```
belongs_to : user
```
#### User Model
```
has_many :todos

```
#### Command
```
$ rails g migration add_user_id_to_friends user_id:integer:index
```