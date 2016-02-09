BlogApp.IndexRoute = Em.Route.extend
  model: ->
    @store.findAll 'blog'

  setupController: (controller, model) ->
    controller.set 'blogs', model
    controller.set 'categories', @store.findAll('category')
