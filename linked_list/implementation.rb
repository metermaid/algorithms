# Implementation
class LinkedList < Array
  def first
    super
  end
  def rest
    self[1..-1] #|| []
  end
  def self.from_array(arr)
    return arr
  end
end

class LinkedList
  attr_accessor :first, :rest
  include Enumerable

  def initialize(value, rest=nil)
    self.first = value
    self.rest = rest
  end
  def each(&block)
    yield self
    rest.each(&block) if rest
  end
  def self.from_array(arr)
    next_node = nil
    arr.reverse_each do |v|
      node = self.new(v, next_node)
      next_node = node
    end
    return next_node
  end
  def inspect
    self.reduce("[") {|string, v| v.rest.nil? ? "#{string}#{v.first}" : "#{string}#{v.first}," } + "]"
  end
end
p LinkedList.from_array([0, 1, 2])