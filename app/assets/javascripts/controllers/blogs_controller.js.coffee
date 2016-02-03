BlogApp.BlogsController = Em.Controller.extend
  blogs: []

BlogApp.BlogsNewController = Em.Controller.extend
  blog: {}

  actions:
    createBlog: ->
      blog = @store.createRecord('blog', @get('blog'))
      blog.save().then ((response) =>
        console.log response
        @transitionToRoute 'blogs'
      ), (response) =>
        blog.deleteRecord()

BlogApp.BlogsEditController = Em.Controller.extend
  blog: {}

  actions:
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
