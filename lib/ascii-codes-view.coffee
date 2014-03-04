{View} = require 'atom'

module.exports =
class AsciiCodesView extends View
  @content: ->
    @div class: 'ascii-codes overlay from-top', =>
      @div 'AsciiCodes autocorrection is ON. Press "ctrl-alt-+" to turn it off.'

  initialize: (serializeState) ->
    atom.workspaceView.command "ascii-codes:toggle", => @toggle()

  serialize: ->

  destroy: ->
    @detach()

  toggle: ->
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
