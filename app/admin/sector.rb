ActiveAdmin.register Sector do
  permit_params :name, :description, :icon_image,  :sector_photo, :_wysihtml5_mode, :order
  menu parent: "Sectors", priority: 2, label: "Sector"


  index do
    selectable_column
    column :id
    column :order
    column :brand
    column :name
    actions
    # column '' do |post|
    #   link_to 'Edit', admin_post_path(post) if authorized? :update, post
    # end
  end

  filter :name
  filter :brands
  filter :description

  form do |f|
    f.inputs 'Sector' do
      f.input :order
      f.input :name
      f.input :icon_image
      f.input :description, as: :html_editor
      f.input :sector_photo, :as => :file
    end
    f.button 'Commit'
  end

end
