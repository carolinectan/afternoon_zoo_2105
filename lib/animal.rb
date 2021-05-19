class Animal
  attr_reader :kind, :weight, :age

  def initialize(kind, weight, age)
    @kind = kind
    @weight = weight
    @age = age
  end

  def weight
    weight = "#{@weight} pounds"
  end

  def age
    age = "#{@age} weeks"
  end

  def age_in_days
    age_in_days = @age*7
  end

end
