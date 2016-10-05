#!usr/bin/env ruby

# step into ruby in 20 minutes

module XiaoHello
end

#Step 5-6
class Greeter
  def initialize(name = 'World')
    @name = name
  end

  def say_hi
    puts "Hi, #{@name}!"
  end

  def say_bye
    puts "Bye #{@name}, come back soon."
  end
end

#Step 9
class MegaGreeter
  attr_accessor :names

  def initialize(names='World')
    @names = names
  end

  def say_hi
    if @names.nil?
      puts '...'
    elsif @names.respond_to?('each')
      @names.each do |name|
        puts "Hello, #{name}!"
      end
    else
      puts "Hello, #{@names}!"
    end
  end

  def say_bye
    if @names.nil?
      puts '...'
    elsif @names.respond_to?('join')
      puts "Goodbye #{@names.join(', ')}. Come back soon!"
    else
      puts "Goodbye #{@names}. Come back soon!"
    end
  end

end

if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  mg.names = 'xiao'
  mg.say_hi
  mg.say_bye

  mg.names=%w(xiao first two)
  mg.say_hi
  mg.say_bye

  mg.names = nil
  mg.say_hi
  mg.say_bye

end


=begin


#Step 8
class Greeter
  attr_accessor :name
end

g=Greeter.new('xiao')
puts g.respond_to?('name')
puts g.respond_to?('name=')
puts g.name
g.name='new xiao'
puts g.name
puts g

#Step 7
# puts Greeter.instance_methods
puts Greeter.instance_methods(false)
puts g.respond_to?('name')

#Step 6
g=Greeter.new('xiao')
puts g
g.say_hi
g.say_bye

#Step 5
def h(name='World')
  puts "Hello #{name.capitalize}!"
end
h
h('xiao')

#Step 4
def h(name)
  puts "Hello #{name}!"
end
h('xiao')

#Step 3
def h
  puts 'Hello World!'
end
h
h()

# Step 2
      a = 3**2
      b=4**2
      puts Math.sqrt(a+b)

# Step 1
      puts 'Hello World!'
      puts 3*2
      puts 3**2
      puts Math.sqrt(9)

=end


class Hello
end