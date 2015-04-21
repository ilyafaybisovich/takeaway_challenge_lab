require 'menu'

feature 'customer can see a menu' do

  scenario "that it's been created" do
    menu = Menu.new
    menu.add("hamburger", 1.99)
    expect(menu.show.keys).to include "hamburger"
  end

  xscenario 'with dishes and repective prices' do
  end
end