# dependency - Function.prototype.bind or underscore/lodash
 
#Ether
class @E
  constructor: (args...) ->
    if @constructor.$inject?
      for key, index in @constructor.$inject
        @[key] = args[index]

    name =''
    name ?= @name || @toString().match(/function\s*(.*?)\(/)?[1]
    switch name.match(/[A-Z]*[^A-Z]+/g)[-1..][0]
      when 'Ctrl'
        app.controller name, @
      when 'Srv'
        app.service name, @

    for key, fn of @constructor.prototype
      continue unless typeof fn is 'function'
      continue if key in ['constructor', 'initialize'] or key[0] is '_'
      @s[key] = fn.bind?(@) || _.bind(fn, @)
    @initialize?()

  @ls_methods: (klass) ->
    res = key for key,value of klass
    console.log res

###
class @Buildera
  hi: ->
    console.log 'yes !!! '
class @Builder
  @new: =>
    clazz = window['Titi'] = class
    console.log window.Buildera::hi
    clazz.hi = window.Buildera::hi
    console.log clazz
    clazz.hi()
  @new()


defer = (klass) ->
  console.log 'startdefer'
  console.log 'klass'
  console.log klass
  console.log window[klass]


  if not window[klass]?
    console.log 'defer'

    do ->
      window.setTimeout (defer klass), 0
  else
    window[klass].hi()


console.log @Tut

defer 'Tut'
class @Tut
  @hi: ->
    console.log 'defered'
    
console.log 'after'
console.log @Tut
console.log window['Tut']
  

###


###
describe "Directive:\n", ->
  beforeEach ->
    module 'specapp'
  describe 'actionService', ->
    beforeEach inject (RangedCtrlDrt) ->
      @RangedCtrlDrt = RangedCtrlDrt

    describe 'actionService', ->

      it 'return something', ->
        #expect(@RangedSrv.actionService 'demo' ).toBe 'service demo'
###
