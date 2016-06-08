class CreateExecutives < ActiveRecord::Migration[5.0]
  def change
    create_table :executives do |t|
      t.string :first_name
      t.string :last_name
      t.string :position
      t.string :photo
      t.string :governance_type
      t.integer :group_id
      t.timestamps
    end
  end
end
