BlogApp.CategoriesRoute = Em.Route.extend
  model: ->
    @store.findAll 'category'

  setupController: (controller, categories) ->
    controller.set 'categories', categories

BlogApp.CategoriesNewRoute = Em.Route.extend
  setupController: (controller) ->
    controller.set 'categories', {}

BlogApp.CategoriesEditRoute = Em.Route.extend
  model:(params) ->
    @store.findRecord 'category', params.category_id

  setupController: (controller, category) ->
    controller.set 'category', category
