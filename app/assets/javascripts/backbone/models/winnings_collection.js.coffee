class BackboneSti.Collections.WinningsCollection extends Backbone.Collection
  model: BackboneSti.Models.EveryXWinning
  url: '/winnings'

  model: (attrs, options) ->
    if BackboneSti.Models[attrs.type]
      new BackboneSti.Models[attrs.type] attrs, options
    else
      console.warn 'Widget not found'  
      false