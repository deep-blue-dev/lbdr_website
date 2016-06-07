class CreateBanners < ActiveRecord::Migration[5.0]
  def change
    create_table :banners do |t|
      t.references :sector, index: true, foreign_key: true
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
