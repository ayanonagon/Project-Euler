class Fixnum
  def palindrome?
    s = self.to_s()
    s == s.reverse
  end
end

three_digit_numbers = *100..999
sol = three_digit_numbers.repeated_combination(2).map{|n, m| n * m}.select{|n| n.palindrome?}.max
puts "The answer to problem 4 is: #{sol}"
