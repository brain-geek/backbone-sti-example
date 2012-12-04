BackboneSti.Views.Winnings ||= {}

class BackboneSti.Views.Winnings.WinningsView extends Backbone.View
  template: JST["backbone/templates/winnings/winnings"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
