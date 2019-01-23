class Fizzbuzz

def fizzbuzz(number)
  fizzArr = []
  1.upto(number) do |i|
    if divisible_by(i, 5) and divisible_by(i, 3)
      fizzArr[i-1] = "FizzBuzz"
    elsif divisible_by(i, 5)
      fizzArr[i-1] = "Buzz"
    elsif divisible_by(i, 3)
      fizzArr[i-1] = "Fizz"
    else
      fizzArr[i-1] = i
    end
  end
fizzArr
end

def divisible_by(num, divisibleNum)
  num % divisibleNum == 0 ? true : false
end



end