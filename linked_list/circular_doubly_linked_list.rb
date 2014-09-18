class LinkedList # DOUBLY. CIRCULAR. THE WORKS.
  attr_accessor :first, :rest, :previous
  include Enumerable

  def initialize(value, rest=nil, previous=nil)
    self.first = value
    self.rest = rest
    self.previous = previous
  end
  def each(&block)
    yield self
    rest.each(&block) if rest
  end
  def self.from_array(arr)
    next_node = nil
    last_node = nil
    arr.reverse_each do |v|
      node = self.new(v, next_node)
      last_node = node unless last_node
      next_node.previous = node if next_node
      next_node = node
    end
    next_node.previous = last_node
    ast_node.rest = next_node # makes circular, but also can't print out if so
    return next_node
  end
  def inspect
    self.reduce("[") {|string, v| v.rest.nil? ? "#{string}#{v.first}" : "#{string}#{v.first}," } + "]"
  end
end

t = LinkedList.from_array([0, 1, 2])