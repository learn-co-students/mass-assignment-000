require 'pry'

class Person
  def initialize(properties)
    properties.each do |property, value|
      Person.add_attribute(property)
      self.send("#{property}=", value)
    end
  end

  def self.add_attribute(attribute)
    attr_accessor attribute
  end
end