class Node

attr_accessor :next_node, :surname, :supplies

  def initialize(surname, supplies = {})
    @next_node = nil
    @surname = surname
    @supplies =  supplies
  end
  
end
