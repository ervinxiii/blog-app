BlogApp.CategoriesController = Em.Controller.extend
  categories: []

BlogApp.CategoriesNewController = Em.Controller.extend
  category: {}

  actions:
    createCategory: ->
      category = @store.createRecord('category', @get('category'))
      category.save().then ((response) =>
        @transitionToRoute 'categories'
      ), (response) =>
        alert('Input is missing')
        category.deleteRecord()

BlogApp.CategoriesEditController = Em.Controller.extend
  category: {}

  actions:
    editCategory: ->
      category = @get('category')

      category.save().then ((response) =>
        @transitionToRoute 'categories'
      ), (response) =>
        alert('Invalid input')

    deleteCategory: ->
      category = @get('category')
      category.destroyRecord().then ((response) =>
        @transitionToRoute 'categories'
      ), (response) =>
        alert('Delete Failed! Please Try again.')
