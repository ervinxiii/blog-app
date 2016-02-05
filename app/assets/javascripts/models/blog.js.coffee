BlogApp.Blog = DS.Model.extend
  category: DS.belongsTo('category')
  title: DS.attr()
  body: DS.attr()
