# dependency - Function.prototype.bind or underscore/lodash
 
#Ether
class @A
class @Ether

  @find: (wishes) ->
    founded = {}
    for constraint, pattern of wishes
      switch constraint
        when 'finish_by'
          for name, obj of window.A
            if name.match(/[A-Z]*[^A-Z]+/g)[-1..][0] is pattern
              founded[name] = obj
        else
          console.log 'AEther keep blind'
    founded

  @add_member: (klasses, functions) ->
    for klass, def of klasses
      for fun, body of functions
        window.A[klass].prototype[fun] = body

  @add_class_methods: (klasses, functions) ->
    for klass, def of klasses
      for fun, body of functions
        window.A[klass].constructor.prototype[fun] = body

class @A.Ether
@A.Ether = @Ether
