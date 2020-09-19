# Write your code here.
require 'pry'

katz_deli = []

def take_a_number(names, name_to_add)
    names.push(name_to_add)
    puts "Welcome, #{name_to_add}. You are number #{names.length} in line."

end

def line(katz_deli)
    if katz_deli.size == 0
        puts "The line is currently empty."
    else 
        string = "The line is currently: " 
        katz_deli.each_with_index do |person, index|
           string += "#{index+1}. #{person} "
        end
        puts string.delete_suffix(" ")
    end
end

def now_serving(names)
    if  names.empty?
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{names.shift}."
    end
end
