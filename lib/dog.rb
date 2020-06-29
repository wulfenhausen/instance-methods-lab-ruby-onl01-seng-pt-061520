# Describe an instance method.
# Call instance methods on an object.
# Build instance methods for an object.

# THE BEHAVIOR OF OBJECTS

# We know that classes act as a factory for our objects, capable of instantiating new instances.

class Dog
end
 
fido = Dog.new
# => <Dog:0x00564b61e84ab0>

# But what can this instance of a dog stored in the local variable fido do? In fact, how do we even ask this object to do something?

# DOT NOTATION

# We send objects messages asking them to perform an operation or task through a syntax known as "Dot Notation".

fido.object_id 
# => 46934567548700

# In the example above, we send the fido instance a message object_id by separating the receiving object, fido and the message, object_id by a dot (.). When we send an object a message through dot notation, we are evoking the corresponding method on the object. We are calling the object_id method on fido. (Note: the object_id you get if you test out the above code will be different.)

# The #object_id method simply tells you the object's identifier in your computer's memory (the place where all things live in your computer).

# "I thought of objects being like biological cells and/or individual computers on a network, only able to communicate with messages. - Alan Kay"

# In dot notation, we call the object that received the method message the "receiver" and we call the method the "message".

# The receiver is this very string      
# reverse is the message
"Strings are instances and objects too".reverse
# => "oot stcejbo dna secnatsni era sgnirtS"

# INSTANCE METHODS

# All objects respond to methods and messages, like #object_id in the example above. One interesting method provided is the #methods method that returns an array of all the methods and messages an object responds to. We can evoke this method via dot-notation. One of the great things you can ask every object in Ruby is "What methods do you respond to?"

class Dog
end
 
fido = Dog.new
fido.methods

# BUILDING YOUR OWN INSTANCE METHODS

# How do we add our own methods to our classes? In our Dog example, can we teach our Dog a new trick? Can we teach our Dog to bark for example?

# We can. We're used to defining methods already with the def keyword. If we place this method definition within the body of a class, that method becomes a specific behavior of instances of that class, not a generic procedure we can just call whenever we want.

class Dog
  def bark
    puts "Woof!"
  end 
end
fido.bark 
# Woof 

# By defining #bark within the Dog class, bark becomes a method of all instances of Dogs. If we make more dogs, they can all bark.

snoopy = Dog.new
lassie = Dog.new
snoopy.bark
lassie.bark 

# Objects can only do what we teach them to do via the code we write and the methods we define. For example, currently, Dogs do not know how to sit.

# snoopy.sit 
# undefined method `sit' for #<Dog:0x0055fb70ef3398>
# (repl):70:in `<main>'

# In the same manner, instance methods, the methods that belong to particular instances of particular classes, are not globally evocable like procedural methods. They cannot be called without an instance.class Dog
class Dog
  def sit
    puts "The Dog is sitting"
  end 
end
fido.bark 
# undefined local variable or method `bark' for main:Object
# (repl):81:in `<main>'

# CLASSES AS BLUEPRINTS

# The ability to define methods and behaviors in our classes for our instances makes Ruby classes behave not just as factories, capable of instantiating new individual instances, but also as a blueprint, defining what those instances can do.



























