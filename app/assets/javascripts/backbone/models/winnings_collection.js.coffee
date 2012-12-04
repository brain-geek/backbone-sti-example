class BackboneSti.Collections.WinningsCollection extends Backbone.Collection
  model: BackboneSti.Models.EveryXWinning
  url: '/winnings'

  model: (attrs, options) ->
    if WebBuilder.Widgets[cls_name]
      new BackboneSti.Collections[cls_name] attrs, options
    else
      console.warn 'Widget not found'  
      false