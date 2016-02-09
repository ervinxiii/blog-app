BlogApp.IndexRoute = Em.Route.extend
  setupController: (controller, model) ->
    controller.set 'categories', @store.findAll('category')
