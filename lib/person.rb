require "pry"

class Person

	attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width

	# def initialize(attributes)
	# 	@attributes = attributes
	# 	attributes.each do |quality, value|
	# 		instance_variable_set("@#{quality}", value)
	# 	end
	# end

  def initialize(attributes)
  	if attributes
  		attributes.each do |quality, value|
  			self.send("#{quality}=", value)
  		end
  	end
  end

end

# binding.pry