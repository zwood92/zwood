class Dog < ApplicationRecord
  attr_accessor :name, :breed, :age 

  def name = (name)
    if name == ""
      raise "Name cannot be blank!"
    end
    @name = name 
  end

  def breed = (breed)
    if breed == ""
      raise "Perhaps select Unknown if you don't know"
    end
    @breed = breed 
  end

  def age=(age)
    if age < 0 
      raise "An age of #{age} is not valid"
    end
    @age = age 
  end

  def print_dog_list
    puts "Name: #{@name} is a(n) #{@breed} and is #{@age} years old"
  end

end
