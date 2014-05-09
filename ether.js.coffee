# dependency - Function.prototype.bind or underscore/lodash
 
#Ether
class @A
class @Ether

  @find: (wishes) ->
    founded = {}
    for constraint, pattern of wishes
      switch constraint
        when 'finish_by'
          for name, obj of @nyx
            if name.match(/[A-Z]*[^A-Z]+/g)[-1..][0] is pattern
              founded[name] = obj
        else
          console.log 'AEther keep blind'
    founded


  @add_member: (klasses, functions) ->
    @bash @add_to_instance, klasses, functions

  @add_class_methods: (klasses, functions) ->
    @bash @add_to_class, klasses, functions

  @bash: (add_to_x, klasses, functions) ->
    for klass, def of klasses
      for fun, body of functions
        add_to_x klass, fun, body

  @add_to_instance: (klass, fun, body) =>
    @nyx[klass]::[fun] = body

  @add_to_class: (klass, fun, body) =>
    @nyx[klass].constructor::[fun] = body

  @nyx: window.A

class @A.Ether
@A.Ether = @Ether
