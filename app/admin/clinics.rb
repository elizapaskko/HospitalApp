ActiveAdmin.register Clinic do
  permit_params :id, :name, :address, :category, :rating, :year

  action_item :new, only: :index do
    link_to 'Add Clinic', new_admin_clinic_path
  end

  index do
    selectable_column
    id_column
    column :id
    column :name
    column :address
    column :category
    column :rating
    column :year
    column :image
    actions defaults: true
  end

  form do |f|
    f.inputs "Clinic Details" do
      f.input :id
      f.input :name
      f.input :address
      f.input :category
      f.input :rating
      f.input :year
      f.input :image, as: :file
    end
    f.actions
  end
end


