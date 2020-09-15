class Item
attr_reader :name, :price
attr_accessor :quantity
  def initialize(details)
    @name = details[:name]
    @price = (details[:price]).delete('$').to_f
    @quantity = 0
  end
end
