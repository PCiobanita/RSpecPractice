class Euler
  def problem1(number)
    total = 0
    0.upto(number-1) do |i|
      if divisible_by?(i, 3) || divisible_by?(i, 5)
        total += i
      end
    end
    total
  end

  def problem2(number)
    num = 2
    num2 = 1
    sum = 0
    until num >= number
      if divisible_by?(num, 2)
        sum += num
      end
      new_num = num + num2
      num2 = num
      num = new_num
    end
    sum
  end

  def divisible_by?(num, divisible_num)
    (num % divisible_num).zero?
  end

  def prime?(number)
    for i in 2...((number/2 + 1)).round
      if divisible_by?(number, i)
        return false
      end
    end
    true
  end

  def largest_prime_from_number(number)
   largest_prime = 0
   i = 2
   limit = number
   while i <= limit
    if prime?(limit)
      return limit
    end
    if divisible_by?(limit, i)
      if prime?(i)
        limit /= i
        largest_prime = i
      end
    end
    i += 1
   end
   largest_prime
  end

  def palindrome?(number)
    num_string = number.to_s
    num_string.reverse!
    num_string.to_i == number
  end

  def largest_palindrome_product_of3
    largest_number = 0
    100.upto(999) do |i|
      100.upto(999) do |j|
        number = i * j
        if palindrome?(number)
          largest_number = number
        end
      end
    end
    largest_number
  end

  def smallest_number_divisible_by1_to_20
    counter = 0
    number = 1
    until counter >= 10 do
      counter = 0
      1.upto(10) do |i|
        if divisible_by?(number, i)
          counter += 1
        end

      end
      number += 1
    end
    number - 1
  end

  def difference_of_sumsquare_and_square_sum(number)
    square_sum = 0
    sum_square = 0
    sum = 0
    1.upto(number) do |i|
      sum += i
      square_sum += (i**2)
    end
    sum_square = sum ** 2
    sum_square - square_sum
  end

  def the_nth_prime(number_of_prime)
    counter = 0
    number = 1
    until counter >= number_of_prime do
      number += 1
      if prime?(number)
        counter += 1
      end
    end
    number
  end


  def gratest_prudoct_of_13_adjacent_numbers(numbers) 
    number_arr = '7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450'
    actual_answer = 0
    current_product = 1
    start_index = 0
    allchecked = false
    until allchecked == true
      for i in start_index...(start_index + (numbers))
        current_product *= number_arr[i].to_i
        if i == number_arr.length - 1
          allchecked = true
        end
      end
      if current_product > actual_answer
        actual_answer = current_product
      end
      current_product = 1
      start_index += 1
    end
    actual_answer
  end

  def pythagorean_triplet(num1, num2, num3)
    num1**2 + num2**2 == num3**2
  end

  def pythagorean_triplet_product
    result = 0
    1.upto(332) do |a|
      a.upto(498) do |b|
        c = 1000 - a - b
        if pythagorean_triplet(a, b, c)
          return result = a * b * c
        end
      end
    end
  end

  def sum_of_prime(number)
    sum = 0;
    2.upto(number-1) do |number|
      if prime?(number)
        sum += number
      end
    end
    sum
  end

  def create_grid_2d_array
    number_string = '08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08
    49 49 99 40 17 81 18 57 60 87 17 40 98 43 69 48 04 56 62 00
    81 49 31 73 55 79 14 29 93 71 40 67 53 88 30 03 49 13 36 65
    52 70 95 23 04 60 11 42 69 24 68 56 01 32 56 71 37 02 36 91
    22 31 16 71 51 67 63 89 41 92 36 54 22 40 40 28 66 33 13 80
    24 47 32 60 99 03 45 02 44 75 33 53 78 36 84 20 35 17 12 50
    32 98 81 28 64 23 67 10 26 38 40 67 59 54 70 66 18 38 64 70
    67 26 20 68 02 62 12 20 95 63 94 39 63 08 40 91 66 49 94 21
    24 55 58 05 66 73 99 26 97 17 78 78 96 83 14 88 34 89 63 72
    21 36 23 09 75 00 76 44 20 45 35 14 00 61 33 97 34 31 33 95
    78 17 53 28 22 75 31 67 15 94 03 80 04 62 16 14 09 53 56 92
    16 39 05 42 96 35 31 47 55 58 88 24 00 17 54 24 36 29 85 57
    86 56 00 48 35 71 89 07 05 44 44 37 44 60 21 58 51 54 17 58
    19 80 81 68 05 94 47 69 28 73 92 13 86 52 17 77 04 89 55 40
    04 52 08 83 97 35 99 16 07 97 57 32 16 26 26 79 33 27 98 66
    88 36 68 87 57 62 20 72 03 46 33 67 46 55 12 32 63 93 53 69
    04 42 16 73 38 25 39 11 24 94 72 18 08 46 29 32 40 62 76 36
    20 69 36 41 72 30 23 88 34 62 99 69 82 67 59 85 74 04 36 16
    20 73 35 29 78 31 90 01 74 31 49 71 48 86 81 16 23 57 05 54
    01 70 54 71 83 51 54 69 16 92 33 48 61 43 52 01 89 19 67 48'
    number_arr = number_string.split
    num2d_arr = []
    0.upto(19) do |i|
      num2d_arr[i] = []
      0.upto(19) do |j|
        n = i * 20 + j
        num2d_arr[i][j] = number_arr[n]
      end
    end
    return num2d_arr
  end

  def latgest_adjasent_product
    diagonal_product = 1
    horisontal_product = 1
    horisontal_actual_product = 0
    vertical_product = 1
    number_arr = create_grid_2d_array
    0.upto(number_arr.length) do |i|
      start_index = 0
      until allchecked == true
        for j in start_index...(start_index + 4)
          horisontal_product *= number_arr[i][j].to_i
          if j == number_arr.length - 1
            allchecked = true
          end
        end
        if horisontal_product > horisontal_actual_product
          horisontal_actual_product = horisontal_product
        end
      end
    end
  end
end
