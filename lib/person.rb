#require 'pry'
class Person
  # code here
  attr_reader :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width
  def initialize(hash)
    hash.each {|k,v| instance_variable_set("@#{k.to_s}", v)}
  end
end