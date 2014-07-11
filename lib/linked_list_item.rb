class LinkedListItem
  include Comparable

  attr_reader :next_item
  attr_reader :payload


  def initialize(value)
    @payload = value
  end

  def next_item=(other_item)
    raise ArgumentError if other_item === self
    @next_item = other_item
  end

  def last?
    !@next_item
  end

  def ===(other_item)
    self.equal?(other_item)
  end

  def <=>(other_item)
    self.payload.to_s <=> other_item.payload.to_s
  end

end
