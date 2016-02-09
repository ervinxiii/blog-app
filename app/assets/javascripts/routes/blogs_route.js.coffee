BlogApp.BlogsRoute = Em.Route.extend
  model: ->
    @store.findAll 'blog'

  setupController: (controller, blogs) ->
    controller.set 'blogs', blogs

BlogApp.BlogsNewRoute = Em.Route.extend
  setupController: (controller) ->
    controller.set 'blog', {}
    controller.set 'categories', @store.findAll 'category'

BlogApp.BlogsEditRoute = Em.Route.extend
  model:(params) ->
    @store.findRecord 'blog', params.blog_id

  setupController: (controller, blog) ->
    controller.set 'blog', blog
    controller.set 'categories', @store.findAll('category')
