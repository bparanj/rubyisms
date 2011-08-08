class Array  
  # | operator is used for union operation in Array.
  def union(another)  
    self | another  
  end  
  # & operator is used for intersection operation in Array.
  def intersection(another)  
    self & another  
  end  
end

class Fixnum
  # This eliminates the mental mapping from .. and ... to the behaviour of the methods.
  def inclusive(element)
    self..element
  end

  def exclusive(element)
    self...element
  end
end