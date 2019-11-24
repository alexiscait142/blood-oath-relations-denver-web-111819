require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

puts scientology = Cult.new("Scientology", "everywhere", 1960, "we are absurd")
dark_side = Cult.new("Dark Side", "Galaxy Far, Far Away", 1200, "come to the dark side")
death_eaters = Cult.new("Death Eaters", "Wizarding World", 1990, "hail Lord Voldemort")

tom_cruise = Follower.new("Tom Cruise", 57, "mission possible")
will_smith = Follower.new("Will Smith", 51, "gettin jiggy wit it")
darth_vader = Follower.new("Darth Vader", 60, "I am your father")
kylo_ren = Follower.new("Kylo Ren", 30, "i need this helmet for no reason")
lucius_malfoy = Follower.new("Lucius Malfoy", 60, "my son is better than your son")
bellatrix_lestrange = Follower.new("Bellatrix LeStrange", 40, "i killed sirius black")

bloodoath1 = BloodOath.new(1990, scientology, tom_cruise)
bloodoath2 = BloodOath.new(2000, scientology, will_smith)
bloodoath3 = BloodOath.new(1220, dark_side, darth_vader)
bloodoath4 = BloodOath.new(1260, dark_side, kylo_ren)
bloodoath5 = BloodOath.new(2000, death_eaters, lucius_malfoy)
bloodoath6 = BloodOath.new(1999, death_eaters, bellatrix_lestrange)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
