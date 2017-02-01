#------------------------------------------------
# Robot
# Explorer Mode:
# 1) Define a Robot class: A robot has a name
# 2) A robot instance should have a method called say_hi' and it should return "Hi!"
# 3) A robot instance should have a method called 'say_name' and it should return
#    "My name is X" where X is the robot's name
# 4) Define a BendingUnit class
# 5) BendingUnit inherits from Robot
# 6) bending unit instance has a method called 'bend'
# 7) The bend method has one argument 'objecttobend'
# 8) The bend method should put to the console "Bend X!" where X is objecttobend
# 9) Define an ActorUnit class
#10) An ActorUnit inherits from Robot
#11) An ActorUnit instance has a method called 'change_name'
#12) The 'changename' method accepts an argument 'newname'
#------------------------------------------------

#--------------
# Define the Robot class
class Robot
  attr_accessor :name, :height

  def initialize(name, height=10)
    @name = name
    @height = height
  end

  def say_hi
    "Hi!!"
  end

  def say_name
    "My name is #{name}"
  end

end

model1 = Robot.new("R2D2")
puts model1.height
puts model1.inspect
puts model1.say_hi
puts model1.say_name

class BendingUnit < Robot
  def bend(objecttobend)
    puts "Bend #{objecttobend}!"
  end
end

bendbot = BendingUnit.new("R3D3")
bendbot.bend( "wrench" )

class ActorUnit < Robot
  def bend(objecttobend)
    puts "Bend #{objecttobend}!"
  end
  def change_name(newname)
    @name = newname
  end
end

actbot1 = ActorUnit.new("R3D3")
puts actbot1.inspect
actbot1.change_name("CP3O")
puts actbot1.inspect

#------------------------------------------------
# Adventure Mode
# Take our student array from yesterday and (programmatically) create robots out of all of them and store them in an array.
# Do the previous using an Enumerable method other than each
# Robots should also have a height, with a default value of 10
#------------------------------------------------
students = [
  {:name=>"Rob", :hometown=>"Indy", siblings: [nil]},
  {:name=>"David", :hometown=>"Bloomington", siblings: ["Christine"]},
  {:name=>"Nancy", :hometown=>"Kokomo", siblings: ["Kathy", "Judy"]},
  {:name=>"Kalea", :hometown=>"Spokane", siblings: [nil]},
  {:name=>"Laura", :hometown=>"KC", siblings: ["Sean", "Adam"]},
  {:name=>"Dave", :hometown=>"Avon", siblings: ["Jess", "Rache"]},
  {:name=>"Demetra", :hometown=>"SF", siblings: ["Desiree"]},
  {:name=>"Kendrick", :hometown=>"Hobart", siblings: ["Erica", "Alex"]},
  {:name=>"Phil", :hometown=>"Lynchburg", siblings: ["Andrew", "Lindsey", "Matthew", "Ellie"]},
  {:name=>"Ben", :hometown=>"North Salem", siblings: ["Nick"]},
  {:name=>"Michael", :hometown=>"Warsaw", siblings: ["Stephen"]},
  {:name=>"Miguel", :hometown=>"Lake Station", siblings: ["Miana", "Yolanda", "Christina"]},
  {:name=>"Chris", :hometown=>"Spencer", siblings: ["Sarah"]}
]

#-----------------------
#Adventure mode wi


class_robot_array = []

puts "Aventure mode with each"

students.each do |student|
  class_robot_array << Robot.new(student[:name])
end
puts class_robot_array.inspect

#-----------------------
#Adventure mode with an Enumerable method other than each

puts "Aventure mode with map"

class_robot_array2 = []
students.map { |x| class_robot_array2 << Robot.new(x[:name]) }

puts class_robot_array2.inspect
