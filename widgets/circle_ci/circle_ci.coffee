class Dashing.CircleCi extends Dashing.Widget
  onData: (data) ->
    @_checkStatus(data.widget_class)

  _checkStatus: (status) ->
    $(@node).removeClass('failed pending passed')
    $(@node).addClass(status)
