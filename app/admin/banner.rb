ActiveAdmin.register Banner do
  permit_params :sector_id, :title, :description, :order, :photo
  menu parent: "Home", priority: 2, label: "Banner"

  filter :sector
  filter :title
  filter :description

  index do
    selectable_column
    column :id
    column :order
    column :sector
    column :title
    column :description
    actions
    # column '' do |post|
    #   link_to 'Edit', admin_post_path(post) if authorized? :update, post
    # end
  end

  # action_item :add do
  #   link_to "Add Event", ""
  # end

  form do |f|
    f.inputs 'Banner' do
      f.input :order
      f.input :sector
      f.input :title
      f.input :description, as: :html_editor
      f.input :photo, :as => :file
    end
    f.button 'Commit'
  end

end
