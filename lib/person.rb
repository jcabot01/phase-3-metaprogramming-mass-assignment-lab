# by default, set the attributes to nil, that covers the shorter list.  

class Person
  def initialize(attributes = nil)
    if attributes 
      attributes.each do |key, value|
        self.class.attr_accessor(key)
        self.send("#{key}=", value)
      end
     end
  end
end
