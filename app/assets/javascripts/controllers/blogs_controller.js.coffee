BlogApp.BlogsController = Em.Controller.extend
  blogs: []

BlogApp.BlogsNewController = Em.Controller.extend
  blog: {}
  categories: []

  actions:
    selectCategory: (categoryID) ->
      category = @store.peekRecord('category', categoryID)
      @set 'blog.category', category

    createBlog: ->
      blog = @store.createRecord('blog', @get('blog'))
      blog.save().then ((response) =>
        @transitionToRoute 'blogs'
      ), (response) =>
        alert('Input is missing')
        blog.deleteRecord()

BlogApp.BlogsEditController = Em.Controller.extend
  blog: {}

  actions:
    selectCategory: (categoryID) ->
      category = @store.peekRecord('category', categoryID)
      @set 'blog.category', category
    editBlog: ->
      blog = @get('blog')
      blog.save().then ((response) =>
        @transitionToRoute 'blogs'
      ), (response) =>
        alert('Invalid input')

    deleteBlog: ->
      blog = @get('blog')
      blog.destroyRecord().then ((response) =>
        @transitionToRoute 'blogs'
      ), (response) =>
        alert('Delete Failed! Please Try again.')
