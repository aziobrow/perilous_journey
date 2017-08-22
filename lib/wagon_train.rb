require './lib/linked_list'
require './lib/node'

class WagonTrain
  def initialize
    @linked_list = LinkedList.new()
  end

  def list
    @linked_list
  end

  def append(surname,supplies)
    @linked_list.append(surname,supplies)
  end

  def head
    @linked_list.head
  end

  def count
    @linked_list.count
  end

  def supplies
    @linked_list.collect_supplies
  end
end
