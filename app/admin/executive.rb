ActiveAdmin.register Executive do
  permit_params :first_name, :last_name, :position, :photo, :governance_type, :group_id
  menu parent: "Group", priority: 2, label: "Executives"


  form do |f|
		f.inputs "Executive" do
      f.input :group_id, :as => :select, :collection => Group.all.map {|u| [u.id, u.id]}, :include_blank => false
      f.input :first_name
      f.input :last_name
      f.input :position, :as => :select, :collection => ["Executive Committee", "Board of Directors"], :include_blank => false
			f.input :photo, :as => :file
		end
		f.button 'Commit'
	end

end
