ActiveAdmin.register AdminUser do
  permit_params :name, :date, :status, :install_time, :address, :phone_number, :member, :install_type

  index do
    selectable_column
    id_column
    column :name
    column :phone_number
    column :created_at
    actions
  end

  show do
    attributes_table do
    row :name
    row :phone_number
    row :created_at
    end
    active_admin_comments
  end



  filter :name


  form do |f|
    f.inputs do
      f.input :name
      f.input :phone_number
    end
    f.actions
  end

end
