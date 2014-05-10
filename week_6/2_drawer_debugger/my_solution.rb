# U2.W6: Drawer Debugger


# I worked on this challenge [by myself, with: Lienha Carleton].


# 2. Original Code

class Drawer

  attr_reader :contents

  # Are there any more methods needed in this class? No.

  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
    puts "The drawer is open."
  end

  def close
    @open = false
    puts "The drawer is closed."
  end

  def add_item(item)
    @contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing? If not given the argument, it pops the most recent item added.
    @contents.delete(item)
  end

  def dump  # what should this method return? It clears the contents of the drawer.
    @contents.clear
    puts "Your drawer is empty."
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
  end
end

class Silverware
  attr_reader :type

  # Are there any more methods needed in this class? Method clean is added.

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end

  def clean_silverware
    @clean = true
  end

  def clean
    @clean = true
    puts "Your #{type} is/are now clean"
  end

end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1)
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork"))
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")



silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return? Empty

fork = Silverware.new("fork")
silverware_drawer.add_item(fork)

fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
fork.eat

#BONUS SECTION
puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE
silverware_drawer.open
silverware_drawer.close
silverware_drawer.add_item(chopsticks = Silverware.new("chopsticks"))
silverware_drawer.view_contents
chopsticks.eat == "eating with the chopsticks"
chopsticks.clean


# 5. Reflection
# This was first challenging exercise that I worked on this week. It took me
# a while to understand why I couldn't eat with the fork. Originall there was 
# no fork variable to use the eats method, but it took me a while to realize 
# there was a new "fork" item added to the silver_drawer, however it was not
# designated a variable.  I learned that you can call a method as a default
# value for an argument.  I enjoyed figured out how to make the driver test
# pass. Completing something challenging usually is pretty rewarding for me.
