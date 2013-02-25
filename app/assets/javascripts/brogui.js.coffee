window.Brogui =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new Brogui.Routers.Posts()
    Backbone.history.start()
$( -> Brogui.initialize() )