ActiveAdmin.register Content do
  permit_params :title, :description
  menu parent: "Home", priority: 3, label: "Content"

  filter :title
  filter :description

  form do |f|
    f.inputs 'Content' do
      f.input :title
      f.input :description, as: :html_editor
    end
    f.button 'Commit'
  end

end
