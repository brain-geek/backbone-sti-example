BackboneSti.Views.Winnings ||= {}

class BackboneSti.Views.Winnings.EditView extends Backbone.View
  template : JST["backbone/templates/winnings/edit"]

  events :
    "submit #edit-winnings" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (winnings) =>
        @model = winnings
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
