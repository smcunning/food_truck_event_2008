class Event
attr_reader :name, :food_trucks
  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck (food_truck_obj)
    @food_trucks << food_truck_obj
  end

  def food_truck_names
    @food_trucks.map do |food_truck|
      food_truck.name
    end
  end

  def food_trucks_that_sell(item_obj)
    food_trucks = []
    @food_trucks.each do |food_truck|
      if food_truck.inventory.include?(item_obj) && food_truck.inventory[item_obj] > 0
         food_trucks << food_truck
       end
     end
     food_trucks
  end
end
