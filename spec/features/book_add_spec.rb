require 'rails_helper'

RSpec.feature "Add Book", type: :feature do
  scenario "User Adds Book" do
    visit new_book_path

    fill_in "Title", with: "Test"
    fill_in "Author", with: "Test"
    fill_in "Price", with: 9.99

    click_button "Create Book"

    expect(page).to have_content("Book was successfully created")
    expect(Book.last.title).to eq("Test")
  end

  scenario "User Adds Book Empty Title" do
    visit new_book_path

    fill_in "Author", with: "Test"
    fill_in "Price", with: 9.99

    click_button "Create Book"

    expect(page).to have_content("Title can't be blank")
  end

  scenario "User Adds Book Empty Author" do
    visit new_book_path

    fill_in "Title", with: "Test"
    fill_in "Price", with: 9.99

    click_button "Create Book"

    expect(page).to have_content("Author can't be blank")
  end

  scenario "User Adds Book Empty Price" do
    visit new_book_path

    fill_in "Title", with: "Test"
    fill_in "Author", with: "Test"

    click_button "Create Book"

    expect(page).to have_content("Price can't be blank")
  end
end
