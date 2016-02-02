# For more information see: http://emberjs.com/guides/routing/

BlogApp.Router.map ()->

  @route 'index', path: '/'
  @resource 'blogs', path: 'blogs', ->
    @route 'new', path: 'new'
    @route 'edit', path: ':blog_id/edit'
