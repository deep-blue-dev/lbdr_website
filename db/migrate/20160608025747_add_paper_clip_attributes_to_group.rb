class AddPaperClipAttributesToGroup < ActiveRecord::Migration[5.0]
  def change
    add_attachment :groups, :photo
  end
end
