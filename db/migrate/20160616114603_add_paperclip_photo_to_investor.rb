class AddPaperclipPhotoToInvestor < ActiveRecord::Migration[5.0]
  def change
    add_attachment :investors, :photo
  end
end
