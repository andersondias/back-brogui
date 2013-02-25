class Brogui.Views.Posts.Form extends Backbone.View
  className: 'modal hide fade'
  id: 'post-form'
  template: JST['posts/form']

  events:
    'click #submit': 'save'

  render: ->
    $('#post-form').remove()
    $(@el).html(@template(post: @model))
    this

  save: ->
    @model.save title: @$('#title').val(), body: @$('#body').val()