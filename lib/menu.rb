class Menu

  attr_accessor :menu

  def initialize
    @menu = {}
  end

  def add(dish, price)
    menu[dish] = price
    menu
  end

  def show
    i = 1
    user_menu = ""
    menu.each do |dish, price|
      user_menu += "#{i}. #{dish.capitalize} ... #{price}\n"
      i += 1
    end
    user_menu
  end

end
