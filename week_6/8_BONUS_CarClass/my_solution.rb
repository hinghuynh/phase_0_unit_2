# U2.W6: Create a Car Class from User Stories

# I worked on this challenge [with: Lienha Carleton and Tim Howard].

# 2. Pseudocode

# 3. Initial Solution

class Pizza 
  def initialize(pizza)
    @pizza = pizza
  end

  def pizza(*toppings)
    pizza = []
    pizza << toppings
    @super_cool_insulated_compartment << pizza

  end

  def delivery
    delivered_pizza = @super_cool_insulated_compartment.shift.join(" & ")
    puts "Pizza Delivery. Here's your #{delivered_pizza} pizza. That's $20, please. *hands over pizza*"
  end
end

class Car < Pizza
  def initialize(make, color)
    @super_cool_insulated_compartment = []
    @total_distance = 0
    @make = make
    @color = color
  end

  def drive(speed, distance=0)
    @speed = speed
    puts "You are driving at #{speed} mph. The distance traveled is #{distance} miles"
    @total_distance += distance 
  end

  def distance
  end

  def speed
    return @speed 
  end

  def turn_left
    puts "You are turning left."
  end

  def turn_right
    puts "You are turning right."
  end

  def stop
    puts "You are at the stop sign."
  end

  def odometer
    puts "You have traveled a total_distance of #{@total_distance} miles"
  end

end

# 4. Refactored Solution

# n/a


# 1. DRIVER TESTS GO BELOW THIS LINE
nissan = Car.new("nissan", "black")
nissan.drive(25, 0.25)
nissan.stop
nissan.turn_right
nissan.drive(35, 1.5)
puts "You are at the school zone and you current speed is #{nissan.speed} mph."
nissan.drive(15, 0.25)
nissan.stop
nissan.turn_left
nissan.drive(35, 1.4)
nissan.stop
nissan.odometer
prius = Car.new("prius", "blue")
prius.pizza("pepperoni", "cheese")
prius.pizza("pineapple", "ham")
prius.pizza("octopus", "clam", "shrimp")
prius.delivery
prius.pizza("cheese")
prius.delivery
prius.delivery
prius.delivery

# 5. Reflection 
# I thought this exercise would be pretty boring, but it was challenging 
# in its own ways. For some reason I find usually when I start one of these
# exercises, I spend most of the time trying figure out why the code doesn't 
# run in console, rather than actually thinking or writing the code. 
# When I paired with Tim to do it again the second tme, we had almost no
# syntax problems for the most part. I don't know if it was, because I did it
# already, or because Tim is just really clean with his execution.  I found
# the pizza ordering and delivery to be the most fun task in the execerise.
# I learned about the method array#shift, which is pretty much the same thing 
# pop except it pops out the first position instead of the last. This was really
# useful for this specific exercise.