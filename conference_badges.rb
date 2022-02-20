# Write your code here.
def badge_maker person_name
  "Hello, my name is #{person_name}."
end

def batch_badge_creator name_array
  name_array.map { |name| badge_maker name }
end

def assign_rooms name_array
  name_array.each.with_index(1).map do | name, index | 
    "Hello, #{name}! You'll be assigned to room #{index}!"
  end 
end

def printer name_array
  batch_badge_creator(name_array).each { | badge| puts badge }
  assign_rooms(name_array).each { | assignment | puts assignment }
end

printer(["Arel", "Carol"])
