ActiveAdmin.register Brand do
	permit_params :name, :description, :url, :brand_photo, :logo_for_brand, :sector_id, :_wysihtml5_mode, :new_investment_id
	menu parent: "Sectors", priority: 1, label: "Brand"

  filter :name
  filter :url
  filter :description

	form do |f|
		f.inputs "Brand Details" do
			f.input :sector
			f.input :new_investment
			f.input :name
			f.input :url
			f.input :description, as: :html_editor
			f.input :brand_photo, :as => :file
			f.input :logo_for_brand,:as => :file
		end
		f.button 'Commit'
	end
end
