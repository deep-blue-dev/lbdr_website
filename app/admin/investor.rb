ActiveAdmin.register Investor do
  permit_params :firstname, :lastname, :description, :photo
  menu parent: "Investor", priority: 1, label: "Investor"

  filter :firstname
  filter :lastname
  filter :description

  index do
    selectable_column
    column :id
    column :firstname
    column :lastname
    actions
    # column '' do |post|
    #   link_to 'Edit', admin_post_path(post) if authorized? :update, post
    # end
  end

  # action_item :add do
  #   link_to "Add Event", ""
  # end

  form do |f|
    f.inputs 'Investor' do
      f.input :firstname
      f.input :lastname
      f.input :description, as: :html_editor
      f.input :photo, :as => :file
    end
    f.button 'Commit'
  end

end
