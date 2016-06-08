ActiveAdmin.register Group do
  permit_params :about, :model, :executive_committee_description, :board_of_directors_description, :photo, :spirit, executive_ids: []
  menu parent: "Group", priority: 1, label: "Group Details"


  form do |f|
		f.inputs "Group" do
			f.input :about, as: :html_editor
      f.input :model, as: :html_editor
      f.input :spirit, as: :html_editor
      f.input :executive_committee_description, as: :html_editor
      f.input :board_of_directors_description, as: :html_editor
			f.input :photo, :as => :file
		end
		f.button 'Commit'
	end

end
