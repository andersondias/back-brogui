class Brogui.Views.Posts.Index extends Backbone.View
  template: JST['posts/index']

  initialize: ->
    @collection.on('reset', @render, this)

  render: ->
    $(@el).html(@template())
    @collection.each(@appendPosts)
    this

  appendPosts: (post) ->
    @$('table .loading').remove()
    row = new Brogui.Views.Posts.Row model: post
    @$('#posts').append(row.render().el)