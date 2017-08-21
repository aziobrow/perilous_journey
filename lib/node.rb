class Node

attr_accessor :next_node, :surname, :supplies

  def initialize(surname)
    @next_node = nil
    @surname = surname
    @supplies = nil
  end

  def surname
    @surname
  end

end
