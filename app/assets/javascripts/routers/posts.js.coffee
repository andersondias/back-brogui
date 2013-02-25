class Brogui.Routers.Posts extends Backbone.Router
  routes:
    "": "index"

  initialize: ->
    @collection = new Brogui.Collections.Posts
    @collection.fetch()

  index: ->
    view = new Brogui.Views.Posts.Index(collection: @collection)
    $('#content').html(view.render().el)
