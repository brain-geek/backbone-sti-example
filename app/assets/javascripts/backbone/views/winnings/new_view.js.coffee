BackboneSti.Views.Winnings ||= {}

class BackboneSti.Views.Winnings.NewView extends Backbone.View
  template: JST["backbone/templates/winnings/new"]

  events:
    "submit #new-winnings": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (winnings) =>
        @model = winnings
        window.location.hash = "/#{@model.id}"

      error: (winnings, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
