class CreateFoos < ActiveRecord::Migration[6.1]
  def change
    create_table :foos do |t|
      t.string :string_column
      t.integer :int_column

      t.timestamps
    end
  end
end
