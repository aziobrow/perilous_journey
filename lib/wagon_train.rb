require './lib/linked_list'
require './lib/node'

class WagonTrain
  def initialize
    @linked_list = LinkedList.new()
  end

  def list
    @linked_list
  end

  def append(surname)
    @linked_list.append(surname)
  end

  def head
    @linked_list.head
  end

  def count
    @linked_list.count
  end
end
