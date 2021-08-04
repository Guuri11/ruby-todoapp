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