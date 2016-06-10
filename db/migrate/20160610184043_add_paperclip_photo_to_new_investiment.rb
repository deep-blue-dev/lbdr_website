class AddPaperclipPhotoToNewInvestiment < ActiveRecord::Migration[5.0]
  def change
    add_attachment :new_investments, :photo
  end
end
