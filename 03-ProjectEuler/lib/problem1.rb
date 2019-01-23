class Problem

def problem1(number)
  total = 0
  0.upto(number-1) do |i|

    if divisible_by(i, 3) || divisible_by(i, 5)
      total = total + i;
    end

  end
total
end

def problem2(number)
num = 2
num2 = 1
sum = 0
until num >= number
  if divisible_by(num, 2)
    sum = sum + num
  end
  new_num = num + num2
  num2 = num
  num = new_num
end

sum

end

def divisible_by(num, divisibleNum)
  num % divisibleNum == 0 ? true : false
end

end

test = Problem.new
puts test.problem2(1000000)