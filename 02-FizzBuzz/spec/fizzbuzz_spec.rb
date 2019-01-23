require 'fizzbuzz'
describe Fizzbuzz do

  before(:each) do
    @fizz = Fizzbuzz.new
    @fizzBuzzArray = @fizz.fizzbuzz(50)
  end


  it 'should create correct fizz buzz sequence' do
    expect(@fizzBuzzArray[2]).to eq("Fizz")
    expect(@fizzBuzzArray[4]).to eq("Buzz")
    expect(@fizzBuzzArray[8]).to eq("Fizz")
    expect(@fizzBuzzArray[5]).to eq("Fizz")
    expect(@fizzBuzzArray[14]).to eq("FizzBuzz")
  
  end

  it "checks if the 2 numbers are modulus" do
    expect(@fizz.divisible_by(10, 2)).to be true

  end

end

