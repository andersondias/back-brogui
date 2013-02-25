class Brogui.Views.Posts.Row extends Backbone.View
  tagName: 'tr'
  template: JST['posts/_post']

  events:
    'click': 'giveDetails'
    'mouseover': 'highlight'
    'mouseout': 'unhighlight'

  render: ->
    $(@el).html(@template(post: @model))
    this

  giveDetails: ->
    form = new Brogui.Views.Posts.Form model: @model
    $('body').append(form.render().el)
    $('#post-form').modal()

  unhighlight: ->
    $('#posts tr.info').removeClass('info')

  highlight: ->
    $(@el).addClass('info')
