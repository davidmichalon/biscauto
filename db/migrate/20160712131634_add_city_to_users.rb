class AddCityToUsers < ActiveRecord::Migration
  def change
    add_column :users, :city, :string
    add_column :users, :description, :text
  end
end
