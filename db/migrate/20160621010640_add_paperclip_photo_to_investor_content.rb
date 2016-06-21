class AddPaperclipPhotoToInvestorContent < ActiveRecord::Migration[5.0]
  def change
    add_attachment :investor_contents, :photo
  end
end
