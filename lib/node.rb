class Node

attr_reader :surname, :supplies
attr_accessor :next_node

  def initialize(surname, supplies = {})
    @next_node = nil
    @surname = surname
    @supplies =  supplies
  end

end
