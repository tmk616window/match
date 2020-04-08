class AddColumnPosts < ActiveRecord::Migration[6.0]
  def change
        add_reference :posts, :task, foreign_key: true
        add_column :posts, :name, :string
        add_column :posts, :old, :integer
        add_column :posts, :sex, :integer
        add_column :posts, :job, :string
        add_column :posts, :email, :string
  end
end
