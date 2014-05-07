describe "AEther:\n", ->
  beforeEach ->

  describe 'E can find *Ctrl classes', ->
    it 'find by end pattern', ->
      A['Nyx'] = class
      A['NyxSrv'] = class
      klasses = A.Ether
        .find finish_by: 'Srv'
      expect(Object.keys(klasses).length).toBe 1
      expect(Object.keys(klasses)[0]).toBe 'NyxSrv'

  # add instance or class methods
  xdescribe 'E can add methods to *Pattern classes', ->
  xdescribe 'E can create _Class with .nick_name', ->
  xdescribe 'bless nick_name (add methods to *Pattern classes', ->

  xdescribe 'bless methods can be store in array or class (angel)', ->
  xdescribe 'should not add 2 time (blessed state)'

  xdescribe 'can run class methods before and after blessing'





