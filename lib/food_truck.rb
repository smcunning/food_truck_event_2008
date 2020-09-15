class FoodTruck
attr_reader :name, :inventory
  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item_obj, quantity = 0)
    if @inventory.include?(item_obj)
      return @inventory[item_obj]
    else
      return 0
    end
  end

  def stock(item_obj, quantity)
    if @inventory.include?(item_obj)
      @inventory[item_obj] += quantity
    else
      @inventory[item_obj] = quantity
    end
  end
end
