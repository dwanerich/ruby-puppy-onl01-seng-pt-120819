
class Dog
  
  @@all = []
  @@names = []
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@names << name
    save
  end
  
  def self.all
    @@all
  end
  
  def self.print_all
   @@names.uniq.delete_at(-1) + @@names.uniq.split
   
   
  end
  
  def save
    @@all << self
  end
  
  def self.clear_all
    @@all.clear
  end
end
