ActiveAdmin.register Sector do
  permit_params :name, :description, :sector_photo, :_wysihtml5_mode

  filter :name
  filter :brands
  filter :description

  form do |f|
    f.inputs 'Sector' do
      f.input :name
      f.input :description, as: :html_editor
      f.input :sector_photo, :as => :file
    end
    f.button 'Commit'
  end

end
