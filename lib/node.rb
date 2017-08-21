class Node

attr_accessor :next_node, :surname

  def initialize(surname)
    @next_node = nil
    @surname = surname
  end

  def surname
    @surname
  end

end
