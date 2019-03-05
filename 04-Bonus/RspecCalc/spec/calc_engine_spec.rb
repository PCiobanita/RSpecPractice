describe CalcEngine do

before(:each) do
  @calc = CalcEngine.new
end

  it 'should correctly add two numbers' do
    expect(@calc.add(1,1)).to eq 2
  end

  it 'should correctly substract two numbers' do
    expect(@calc.subtract(10,1)).to eq 9
  end
  
  it 'should correctly multiply two numbers' do
    expect(@calc.multiply(10,5)).to eq 50
  end
  
  it 'should correctly devide two numbers' do
    expect(@calc.devide(20,4)).to eq 5
  end

  it 'should correctly find the square root of a number' do
    expect(@calc.sqrt(25)).to eq 5
  end
  
  it 'should correctly find the power between two numbers' do
    expect(@calc.power(5, 3)).to eq 125
  end
  
  it 'should correctly find the BMI' do
    expect(@calc.BMI(86, 1.8)).to eq 26.5
  end
end