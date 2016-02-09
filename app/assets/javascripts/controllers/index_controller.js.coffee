BlogApp.IndexController = Em.Controller.extend
  blogs: []
  categories: []

  selectedCategoryID: null

  filteredBlogs: (->
    categoryID = parseInt(@get('selectedCategoryID'))
    @get('blogs').filterBy('category_id', categoryID)
  ).property('blogs.@each', 'selectedCategoryID')
