ActiveAdmin.register Brand do
	menu parent: "Brands", priority: 1
  filter :name
  filter :url
  filter :description
end
