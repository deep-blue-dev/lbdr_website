class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.text :about
      t.text :model
      t.text :executive_committee_description
      t.text :board_of_directors_description
      t.string :photo
      t.timestamps
    end
  end
end
