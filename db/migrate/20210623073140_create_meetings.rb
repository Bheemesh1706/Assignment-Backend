class CreateMeetings < ActiveRecord::Migration[6.1]
  def change
    create_table :meetings do |t|
      t.string :Title
      t.text :Description
      t.string :Start
      t.string :End

      t.timestamps
    end
  end
end
