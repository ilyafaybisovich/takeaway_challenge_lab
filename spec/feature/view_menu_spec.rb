require 'menu'

feature 'customer can see a menu' do
  let(:menu) { Menu.new }

  scenario "in a raw hash form" do
    expect(menu.add("hamburger", 1.99).keys).to include "hamburger"
  end

  scenario "in a user-friendly way" do
    menu.add("hamburger", 1.99)
    menu.add("cheeseburger", 2.49)
    expect(menu.show).to include "1. Hamburger ... 1.99"
    expect(menu.show).to include "2. Cheeseburger ... 2.49"
  end
end