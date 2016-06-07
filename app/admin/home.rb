ActiveAdmin.register Home do
  permit_params :title, :description

  filter :title
  filter :description

  form do |f|
    f.inputs 'Home' do
      f.input :title
      f.input :description, as: :html_editor
    end
    f.button 'Commit'
  end

end
