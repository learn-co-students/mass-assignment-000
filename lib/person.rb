require 'pry'

class Person

  ATTRIBUTES = {:id => :INTEGER_PRIMARY_KEY,
                :name => :TEXT, 
                :birthday => :DATE,
                :hair_color => :TEXT, 
                :eye_color => :TEXT, 
                :height => :INT, 
                :weight => :INT, 
                :handed => :TEXT, 
                :complexion => :TEXT, 
                :t_shirt_size => :INT, 
                :wrist_size => :INT, 
                :glove_size => :INT, 
                :pant_length => :INT, 
                :pant_width => :INT
               }

  attr_accessor *ATTRIBUTES.keys

  def initialize(properties_hash)
    @properties_hash = properties_hash
    assign_attributes
  end
  
  def assign_attributes
    @properties_hash.each {|attr_key, attr_value|
      self.send("#{attr_key}=", attr_value)
    }
  end

  def self.attributes
    @properties_hash.keys
  end


end