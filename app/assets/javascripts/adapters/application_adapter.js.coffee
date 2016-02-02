# Override the default adapter with the `DS.ActiveModelAdapter` which

BlogApp.ApplicationAdapter = DS.RESTAdapter.extend({
  namespace: 'api'
})
