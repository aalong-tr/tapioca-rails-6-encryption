# typed: strict

class Foo < ApplicationRecord
  validates :string_column, :int_column, presence: true

  def printme
    puts "#{string_column}: #{int_column}"
  end
end