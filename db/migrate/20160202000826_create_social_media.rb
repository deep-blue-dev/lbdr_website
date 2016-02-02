class CreateSocialMedia < ActiveRecord::Migration[5.0]
  def change
    create_table :social_media do |t|
      t.references :brand, foreign_key: true
      t.string :type
      t.string :link

      t.timestamps
    end
  end
end
