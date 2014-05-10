describe "AEther:\n", ->
  beforeEach ->
    A['Nyx'] = class
    A['NyxSrv'] = class

  describe 'E can find *Ctrl classes', ->
    it 'find by end pattern', ->
      A.NyxSrv.constructor.prototype.hi = -> console.log 'hi'
      klasses = A.Ether
        .find finish_by: 'Srv'
      expect(Object.keys(klasses).length).toBe 1
      expect(Object.keys(klasses)[0]).toBe 'NyxSrv'

  describe 'E can add methods to *Pattern classes', ->
    beforeEach ->
      @functions =
        add: (a, b) ->
          a + b
        mult: (a, b) ->
          a * b
      # TODO find ++ first all _by_reg
      @klasses = A.Ether.find finish_by: 'Srv'

    it 'add instance methods', ->
      A.Ether.add_member @klasses, @functions
      nyxSrv = new A.NyxSrv
      expect(nyxSrv.add?).toBe true
      expect(nyxSrv.add 3, 4).toBe 7

    it 'add class methods', ->
      A.Ether.add_class_methods @klasses, @functions
      expect(A.NyxSrv.add?).toBe true
      expect(A.NyxSrv.add 3, 4).toBe 7
      # TODO list objet methods nyxSrv.methods
      
  describe 'can run class methods before and after blessing', ->
    it 'call class methods', ->
      A['AthenaSrv'] = class
      @klasses = A.Ether.find finish_by: 'Srv'
      @functions =
        count: 0
        up_count: ->
          @count += 1
      expect(A.AthenaSrv.count?).toBe false
      A.Ether.add_class_methods @klasses, @functions
      fun_call = { up_count: {} }
      expect(A.AthenaSrv.count).toBe 0
      expect(A.NyxSrv.count).toBe 0
      A.Ether.run_class_methods @klasses, fun_call
      expect(A.NyxSrv.count).toBe 1
      expect(A.AthenaSrv.count).toBe 1

    xit 'call instance methods', ->

  xdescribe 'E can create _Class with .nick_name', ->
  xdescribe 'bless nick_name (add methods to *Pattern classes', ->

  xdescribe 'bless methods can be store in array or class (angel)', ->
  xdescribe 'should not add 2 time (blessed state)'






