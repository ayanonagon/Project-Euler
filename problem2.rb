class Fixnum
  def perfect_square?
    s = Math.sqrt(self).floor
    self == s ** 2
  end

  def fib?
    (5 * self**2 + 4).perfect_square? or (5 * self**2 - 4).perfect_square?
  end
end

sol = (1..4e6).select{|n| n.even? and n.fib?}.inject(0){|sum, n| sum + n}
puts "The answer to problem 2 is: #{sol}"
