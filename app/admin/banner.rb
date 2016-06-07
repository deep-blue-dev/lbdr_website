ActiveAdmin.register Banner do
  permit_params :title, :description
  menu parent: "Pages", priority: 2, label: "Banner"

  filter :sector
  filter :title
  filter :description

  form do |f|
    f.inputs 'Banner' do
      f.input :sector
      f.input :title
      f.input :description, as: :html_editor
    end
    f.button 'Commit'
  end

end
