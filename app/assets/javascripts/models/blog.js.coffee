BlogApp.Blog = DS.Model.extend
  category_id: DS.attr()
  category: DS.belongsTo('category')
  title: DS.attr()
  body: DS.attr()
