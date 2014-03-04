AsciiCodes = require '../lib/ascii-codes'

describe "AsciiCodes", ->
  activationPromise = null

  beforeEach ->
    atom.workspaceView = new WorkspaceView
    activationPromise = atom.packages.activatePackage('asciiCodes')

  describe "when the ascii-codes:toggle event is triggered", ->
    it "attaches and then detaches the view", ->
      expect(atom.workspaceView.find('.ascii-codes')).not.toExist()

      atom.workspaceView.trigger 'ascii-codes:toggle'

      waitsForPromise ->
        activationPromise

      runs ->
        expect(atom.workspaceView.find('.ascii-codes')).toExist()
        atom.workspaceView.trigger 'ascii-codes:toggle'
        expect(atom.workspaceView.find('.ascii-codes')).not.toExist()
