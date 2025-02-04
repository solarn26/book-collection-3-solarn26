require 'rails_helper'

RSpec.describe Book, type: :model do
  it "Valid Title" do
    book = Book.new(title: "Dune", author: "Test", price: 10.00, published_date: "2024-01-01")
    expect(book).to be_valid
  end

  it "Valid Author" do
    book = Book.new(title: "Dune", author: "Test", price: 10.00, published_date: "2024-01-01")
    expect(book).to be_valid
  end

  it "Valid Price" do
    book = Book.new(title: "Dune", author: "Test", price: 10.00, published_date: "2024-01-01")
    expect(book).to be_valid
  end

  it "Valid Publish Date" do
    book = Book.new(title: "Dune", author: "Test", price: 10.00, published_date: "2024-01-01")
    expect(book).to be_valid
  end

  it "Invalid Title" do
    book = Book.new(author: "Test", price: 10.00, published_date: "2024-01-01")
    expect(book).to_not be_valid
  end

  it "Invalid Author" do
    book = Book.new(title: "Dune", price: 10.00, published_date: "2024-01-01")
    expect(book).to_not be_valid
  end

  it "Invalid Price" do
    book = Book.new(title: "Dune", author: "Test", published_date: "2024-01-01")
    expect(book).to_not be_valid
  end

  it "Invalid Publish Date" do
    book = Book.new(title: "Dune", author: "Test", price: 10.00)
    expect(book).to_not be_valid
  end
end
