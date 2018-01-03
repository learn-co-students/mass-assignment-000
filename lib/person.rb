class Person
  #your code here
  ATTRIBUTES = {
    :id => "INTEGER PRIMARY KEY",
    :name => "TEXT",
    :birthday => "TEXT",
    :hair_color =>  "TEXT",
    :eye_color =>  "TEXT",
    :height =>  "TEXT",
    :weight  => "TEXT",
    :handed =>  "TEXT",
    :complexion => "TEXT",
    :t_shirt_size => "TEXT", 
    :wrist_size => "TEXT", 
    :glove_size => "TEXT",
    :pant_length => "TEXT",
    :pant_width => "TEXT"
  }
  # ATTRIBUTES.keys.each do |attribute|
  #   attr_accessor attribute
  # end
  attr_accessor *ATTRIBUTES.keys
  
  def initialize(attribute_hash)
    attribute_hash.map { |(k, v)| send("#{k}=", v) }
  end
 
end