ActiveAdmin.register Schedule do
  permit_params :name, :date, :status, :time, :address, :phone_number,:member,:install_type

  index do
    selectable_column
    id_column
    column :name
    column :date
    column :status
    column :time
    column :address
    column "Phone Number" do |phone|
      number_to_phone(phone.phone_number, pattern: /(\d{0,2})(\d{3,4})(\d{4})$/, area_code: true, country_code: 82)
    end
    column :install_type
    column :member
    column :created_at
    actions
  end

  show do
    attributes_table do
    row :name
    row :date
    row :status
    row :time
    row :address
    row :phone_number
    row :member
    row :install_type
    row :created_at
    end
    active_admin_comments
  end



  filter :name
  filter :date
  filter :status
  filter :time
  filter :member
  filter :install_type


  form do |f|
    f.inputs do
      f.input :name
      f.input :date
      f.input :time
      f.input :address
      f.input :status
      f.input :install_type
      f.input :member
      f.input :phone_number


    end
    f.actions
  end

end
