require './lib/node'
require 'pry'


class LinkedList

  def initialize
    @head = nil
    @count = 0
    @supplies_collection = {}
  end

  def head
    @head
  end

  def append(surname,supplies = {})
    if current_node = @head
      until current_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(surname,supplies)
    else
      @head = Node.new(surname,supplies)
    end
  end


  def count
    current_node = @head
    until current_node.nil?
      @count += 1
      current_node = current_node.next_node
    end
    @count
  end

  def to_string
    current_node = @head
    family_list = "The #{head.surname} family"
    until current_node.next_node.nil?
      family_list << ", followed by the #{current_node.next_node.surname} family"
      current_node = current_node.next_node
    end
    family_list
  end

  def prepend(surname,supplies = {})
    node = Node.new(surname,supplies)
    if @head.nil?
      @head = node
    else
    node.next_node = @head
    @head = node
    end
  end

  def insert(position,surname,supplies = {})
    current_node = @head
    (position-1).times do |node|
      current_node = current_node.next_node
    end
    new_node = Node.new(surname,supplies)
    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
  end

  def find(position,elements)
    current_node = @head
    position.times do |node|
      current_node = current_node.next_node
    end
    family_string = "The #{current_node.surname} family"
    until current_node.next_node.nil? || elements == 1
        elements -= 1
        family_string << ", followed by the #{current_node.next_node.surname} family"
        current_node = current_node.next_node
      end
    family_string
  end

  def includes?(value)
    current_node = @head
    until current_node.next_node.nil?
      return true if current_node.surname == value
      current_node = current_node.next_node
    end
    false
  end

  def pop
    current_node = @head
    until current_node.next_node.next_node.nil?
    current_node = current_node.next_node
    end
    last = current_node.next_node.surname
    current_node.next_node = nil
    "The #{last} family has died of dysentery"
  end

  def collect_supplies
    current_node = @head
    until current_node.nil?
      @supplies_collection = @supplies_collection.merge(current_node.supplies){|supply, first_amount, second_amount| first_amount + second_amount}
      current_node = current_node.next_node
    end
    @supplies_collection
  end
end
