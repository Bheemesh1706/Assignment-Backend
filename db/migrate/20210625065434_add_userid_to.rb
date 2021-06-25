class AddUseridTo < ActiveRecord::Migration[6.1]
  def change
    add_column :meetings , :user_id, :int 
  end
end
