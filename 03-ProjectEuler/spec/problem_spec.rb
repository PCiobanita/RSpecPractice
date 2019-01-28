require 'problem1'
describe Euler do

  before(:all) do
    @euler_instance = Euler.new
  end

  it 'adding all numbers that are multiplies of 3 and 5' do
    expect(@euler_instance.problem1(10)).to eq(23)
    expect(@euler_instance.problem1(1000)).to eq(233_168)
  end

  it 'adding all even numbers that are fibonachsi' do
    expect(@euler_instance.problem2(1_000_000)).to eq(1_089_154)
  end

  it 'should check if number is prime  add two numbers' do
    expect(@euler_instance.prime?(6857)).to be true
    expect(@euler_instance.prime?(3)).to be true
    expect(@euler_instance.prime?(7)).to be true
  end

  it 'should give the largest prime factor' do
    expect(@euler_instance.largest_prime_from_number(13195)).to eq 29
    expect(@euler_instance.largest_prime_from_number(600851475143)).to eq 6857
  end

  it 'should show if number is palindrome number' do
    expect(@euler_instance.palindrome?(3_450_543)).to be true
  end

  it 'should show if number is palindrome number' do
    expect(@euler_instance.largest_palindrome_product_of3).to eq 580_085
  end

  it 'should show if number is divisible by 1 to 20' do
    expect(@euler_instance.smallest_number_divisible_by1_to_20).to eq 2520
  end

  it 'should show the difference between the sum of squares and square of sum' do
    expect(@euler_instance.difference_of_sumsquare_and_square_sum(10)).to eq 2640
    expect(@euler_instance.difference_of_sumsquare_and_square_sum(100)).to eq 25_164_150
  end

  it 'should show the n-th prime number' do
    expect(@euler_instance.the_nth_prime(6)).to eq 13
    # expect(@euler_instance.the_nth_prime(10001)).to eq 104743
  end
 
  it 'should find greatest product of 13 adjasent numbers' do
    expect(@euler_instance.gratest_prudoct_of_13_adjacent_numbers(4)).to eq 5832
    expect(@euler_instance.gratest_prudoct_of_13_adjacent_numbers(13)).to eq 23514624000
  end
 
  it 'should correctly find if 3 numbers are pythagorean triplets' do
    expect(@euler_instance.pythagorean_triplet(3,4,5)).to be true
  end

  it 'should correctly find the product of pithagorean triplet whose number add up to 1000' do
    expect(@euler_instance.pythagorean_triplet_product).to eq 31_875_000
  end
 
  it 'should add all the prime numbers less than given number' do
    expect(@euler_instance.sum_of_prime(10)).to eq 17
  end

end