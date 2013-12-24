sol = (1..999).find_all{|n| n % 3 == 0 or n % 5 == 0}.inject(0){|sum, n| sum + n} 
puts "The answer to problem 1 is: #{sol}"
