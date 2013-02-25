class Brogui.Views.Posts.Index extends Backbone.View
  template: JST['posts/index']

  initialize: ->
    @collection.on('reset', @render, this)

  render: ->
    $(@el).html(@template(entries: @collection))
    this