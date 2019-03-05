class CalcEngine
  
  def add (num1, num2)
    num1 + num2
  end

  def subtract (num1, num2)
    num1 - num2
  end

  def multiply (num1, num2)
    num1 * num2
  end

  def devide (num1, num2)
    num1 / num2
  end

  def sqrt (num)
    Math.sqrt(num)
  end

  def power (num1, num2)
    num1 ** num2
  end

  def BMI (weight, height)
    (weight/(height**2)).round(1)
  end

end

