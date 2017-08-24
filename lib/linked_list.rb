require_relative './node'
require 'pry'

class LinkedList

  attr_accessor :head

  def initialize
    @head = nil
    @size = 0
  end


  def tail?(current_node)
    current_node.next_node.nil?
  end

  def is_empty?
      @head.nil?
  end

  #recursive helper method
  def append_after_head(surname,supplies,current_node)
    if tail?(current_node)
      current_node.next_node = Node.new(surname,supplies)
    else
      append_after_head(surname,supplies,current_node.next_node)
    end
  end

  def append(surname,supplies = {})
    if is_empty?
      @head = Node.new(surname,supplies)
    else
      append_after_head(surname, supplies, @head)
    end
  end

  def count
    current_node = @head
    counter = 0
    until current_node.nil?
      counter += 1
      current_node = current_node.next_node
    end
    counter
  end

  def to_string
    current_node = @head
    family_list = "The #{head.surname} family"
    until tail?(current_node)
      current_node = current_node.next_node
      family_list << ", followed by the #{current_node.surname} family"
    end
    family_list
  end

  def prepend(surname,supplies = {})
    node = Node.new(surname,supplies)
    if is_empty?
      @head = node
    else
      node.next_node = @head
      @head = node
    end
  end

  def insert(position, surname, supplies = {})
    return nil if is_empty?
    current_node = @head
    (position-1).times do |node|
      current_node = current_node.next_node
    end
    new_node = Node.new(surname)
    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
  end

  def find(position, elements = 1)
    current_node = @head
    return nil if is_empty?
    position.times do |node|
      current_node = current_node.next_node
    end
    family_string = "The #{current_node.surname} family"
    until tail?(current_node) || elements == 1
        elements -= 1
        family_string << ", followed by the #{current_node.next_node.surname} family"
        current_node = current_node.next_node
      end
    family_string
  end

  #recursive
  def includes?(value, current_node=@head)
    if is_empty?
      return false
    else
      return true if current_node.surname == value
      return false if tail?(current_node)
      includes?(value,current_node.next_node)
    end
  end

  #write test
  def kill_off_family(current_node)
    last_node = current_node.next_node
    last_name = last_node.surname
    current_node.next_node = nil
    puts "The #{last_name} family has died of dysentery"
    last_node
  end


  def pop
    current_node = @head
    if is_empty?
      return nil
    elsif count == 1
      current_node = current_node.next_node
      kill_off_family(current_node)
    else
      (count - 2).times {|node| current_node = current_node.next_node}
      kill_off_family(current_node)
    end
  end

  def merge_supplies_with_same_key(supplies_collection, current_node_supplies)
    supplies_collection.merge(current_node_supplies){|supply, first_amount, second_amount| first_amount + second_amount}
  end

  def collect_supplies
    current_node = @head
    supplies_collection = {}
    until current_node.nil?
      supplies_collection = merge_supplies_with_same_key(supplies_collection,current_node.supplies)
      current_node = current_node.next_node
    end
    supplies_collection
  end

end
