class AddColumnsToClients < ActiveRecord::Migration
  def change
    add_column :clients, :name, :string
    add_column :clients, :address, :string
    add_column :clients, :number, :integer
    add_column :clients, :complement, :string
    add_column :clients, :ddd, :string
    add_column :clients, :phone, :string
    add_column :clients, :time_value, :float
  end
end
