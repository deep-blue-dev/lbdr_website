class AddSpiritToGroups < ActiveRecord::Migration[5.0]
  def change
    add_column :groups, :spirit, :text
  end
end
