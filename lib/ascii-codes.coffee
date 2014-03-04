AsciiCodesView = require './ascii-codes-view'

module.exports =
  asciiCodesView: null

  activate: (state) ->
    @asciiCodesView = new AsciiCodesView(state.asciiCodesViewState)

  deactivate: ->
    @asciiCodesView.destroy()

  serialize: ->
    asciiCodesViewState: @asciiCodesView.serialize()
