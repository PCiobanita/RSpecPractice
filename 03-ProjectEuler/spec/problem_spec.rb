require 'problem1'
describe Problem do

before(:each) do 
  @problem = Problem.new
end

it 'adding all numbers that are multiplies of 3 and 5' do
  expect(@problem.problem1(10)).to eq(23)
  expect(@problem.problem1(1000)).to eq(233168)
end


it 'adding all even numbers that are fibonachsi' do
  expect(@problem.problem2(1000000)).to eq(1089154)
end

end

