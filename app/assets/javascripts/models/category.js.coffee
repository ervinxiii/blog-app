BlogApp.Category = DS.Model.extend
  name: DS.attr()
  description: DS.attr()
  blogs: DS.hasMany('blog')
