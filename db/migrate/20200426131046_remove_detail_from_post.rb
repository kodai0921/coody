class RemoveDetailFromPost < ActiveRecord::Migration[6.0]
  def change

    remove_column :posts, :content, :string
  end
end
