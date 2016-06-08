class CreateGroupBanners < ActiveRecord::Migration[5.0]
  def change
    create_table :group_banners do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
