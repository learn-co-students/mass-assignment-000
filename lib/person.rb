class Person
 # init with Person.new(:name => 'John', :age => 30)
  def initialize(attributes)
    attributes.each_key do |m|
      self.class.send(:define_method, m) {attributes[m]}
    end
  end
end