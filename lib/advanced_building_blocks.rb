module Enumerable
	
	def my_each
		for i in self
			yield i if block_given?
		end
	end

  def my_each_with_index
    if block_given?
      index = 0
      for i in self
          yield i, index
          index += 1
      end
    end
  end

  def my_select 
    if block_given? 
      selected = []
      for i in self
        selected << yield(i)
      end
    end
  end

	def my_all?
		if block_given?
			for i in self
				return false unless yield(i)
			end
			true
		end
  end

  def my_any?
    for i in self
    	return true if yield(i)
    end
    false
  end

  def my_none?
  	if block_given?
	    for i in self do 
	        return false if yield(i)
	    end
	    true
  	end
  end

  def my_count(num = nil)
    c = 0
    if block_given?
      my_each { |i| c += 1 if yield(i) }
    elsif num.nil?
      c = length
    else
      my_each { |i| c += 1 if i == num }
    end
    c
  end

  def my_map
  	if block_given?
  		mapped = []
  		self.my_each { |i| mapped << yield(i) }
  		mapped
    else
      self
  	end
  end

  def my_inject(num = nil)
    accumulator = num.nil? ? first : num
    my_each { |i| accumulator = yield(accumulator, i) }
    accumulator
  end
end

array = [1, 2, 3, 8, 8, 8, 0, 1]
