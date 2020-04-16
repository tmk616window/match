class AddColumnUsers2 < ActiveRecord::Migration[6.0]
  def change
        add_column :users, :organization_name, :string
        add_column :users, :user_address, :string
        add_column :users, :born, :string
        add_column :users, :user_message, :string
        add_column :users, :icon, :string
        
  end
end
