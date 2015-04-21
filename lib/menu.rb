class Menu

  attr_accessor :menu
  alias_method :show, :menu

  def initialize
    @menu = {}
  end

  def add(dish, price)
    menu[dish] = price
    menu
  end

end
