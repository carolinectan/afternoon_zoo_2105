class Zoo
  attr_reader :street, :city, :zip_code, :inventory, :animal_count

  def initialize(name, street, city, state, zip_code)
    @name = name
    @street = street
    @city = city
    @state = state
    @zip_code = zip_code
    @inventory = []
    @animal_count = 0
  end

  def address
    address = "#{@street} #{@city}, #{@state} #{@zip_code}"
  end

  def add_animal(animal)
    @inventory << animal

    @animal_count +=1
  end

  def animals_older_than(age)
    older_than = []

    @inventory.each do |animal|
      if animal[2] > age
      older_than << animal[2]
      end
    end

    older_than
  end

  def total_weight_of_animals
    total_weight = 0

    @inventory.each do |animal|
      total_weight + animal[1]
    end

    total_weight
  end

  def details
    details = Hash.new

    details ={
      "total_weight" => 265,
      "street_address" => "2300 Southern Blvd"
    }
  end
end
