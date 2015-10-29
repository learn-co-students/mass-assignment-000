require 'pry'
class Person
  #your code here

  # ATTRIBUTES = {
  #   :name => "TEXT"
  # }

  attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width


  def initialize(hash_attributes)

    # iterate through "hash"
    # set a attribute to "hash" key and value to value

    if hash_attributes
    hash_attributes.each do |k, v|
        self.send("#{k}=", v)
      end
    end
        
  end
end

