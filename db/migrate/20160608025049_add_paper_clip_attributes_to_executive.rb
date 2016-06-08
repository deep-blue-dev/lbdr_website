class AddPaperClipAttributesToExecutive < ActiveRecord::Migration[5.0]
  def change
     add_attachment :executives, :photo
  end
end
