require 'rails_helper'

RSpec.describe 'When a user visits a vending machine show page', type: :feature do
  it 'shows all snacks associated to machine with price' do
    owner = Owner.create(name: "John's Snacks")
    john  = owner.machines.create(location: "John's Snack Shop")
    snack1 = john.snacks.create(price: "2.50",
                                name: "snack1")
    snack2 = john.snacks.create(price: "3.50",
                                name: "snack2")
    visit machine_path(john)

    expect(page).to have_content("John's Snack Shop")
    expect(page).to have_content(snack1.price)
    expect(page).to have_content(snack2.price)
    expect(page).to have_content(snack1.name)
    expect(page).to have_content(snack2.name)
  end
end
