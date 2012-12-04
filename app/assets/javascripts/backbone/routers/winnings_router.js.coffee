class BackboneSti.Routers.WinningsRouter extends Backbone.Router
  initialize: (options) ->
    @winnings = new BackboneSti.Collections.WinningsCollection()
    @winnings.reset options.winnings

  routes:
    "new"      : "newWinnings"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newWinnings: ->
    @view = new BackboneSti.Views.Winnings.NewView(collection: @winnings)
    $("#winnings").html(@view.render().el)

  index: ->
    @view = new BackboneSti.Views.Winnings.IndexView(winnings: @winnings)
    $("#winnings").html(@view.render().el)

  show: (id) ->
    winnings = @winnings.get(id)

    @view = new BackboneSti.Views.Winnings.ShowView(model: winnings)
    $("#winnings").html(@view.render().el)

  edit: (id) ->
    winnings = @winnings.get(id)

    @view = new BackboneSti.Views.Winnings.EditView(model: winnings)
    $("#winnings").html(@view.render().el)
