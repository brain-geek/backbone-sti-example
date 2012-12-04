BackboneSti.Views.Winnings ||= {}

class BackboneSti.Views.Winnings.IndexView extends Backbone.View
  template: JST["backbone/templates/winnings/index"]

  initialize: () ->
    @options.winnings.bind('reset', @addAll)

  addAll: () =>
    @options.winnings.each(@addOne)

  addOne: (winnings) =>
    view = new BackboneSti.Views.Winnings.WinningsView({model : winnings})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(winnings: @options.winnings.toJSON() ))
    @addAll()

    return this
