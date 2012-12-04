BackboneSti.Views.Winnings ||= {}

class BackboneSti.Views.Winnings.ShowView extends Backbone.View
  template: JST["backbone/templates/winnings/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
