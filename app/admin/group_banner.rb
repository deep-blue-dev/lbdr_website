ActiveAdmin.register GroupBanner do
  permit_params :title, :description, :photo
  menu parent: "Group", priority: 2, label: "Banner"

  filter :title
  filter :description

  index do
    selectable_column
    column :id
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
      f.input :title
      f.input :description, as: :html_editor
      f.input :photo, :as => :file
    end
    f.button 'Commit'
  end

end
