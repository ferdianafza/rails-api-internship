ActiveAdmin.register Student do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :email, :encrypted_password, :firstname, :lastname, :school, :phone, :nis,
    :address, :city, :province, :zipcode, :periode, :status, :major_id, :reset_password_token,
    :reset_password_sent_at, :remember_created_at, :mother_name, :father_name, :emergency_number,
    :avatar, :password, :password_confirmation, :start_at, :end_at, :province_id, :latitude, :longitude
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :firstname, :lastname, :school, :phone, :nis, :address, :city, :province, :zipcode, :periode, :status, :major_id, :reset_password_token, :reset_password_sent_at, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  scope :all, default: true
  scope("Active") { |scope| scope.where(status: true) }
  scope("Inactive") { |scope| scope.where(status: false) }

  filter :email, filters: [:contains]
  filter :firstname, filters: [:contains]
  filter :lastname, filters: [:contains]

  index do
    selectable_column
    id_column
    column :email
    column :firstname
    column :lastname
    actions
  end

  index as: :grid, default: true do |student|
    link_to image_tag(student.avatar, width: "40%"), admin_student_path(student)  if student.avatar.attached?
  end

  index as: :block do |student|
    div for: student do
      # resource_selection_cell student
      h2  auto_link     student.firstname
      div simple_format student.lastname
    end
  end

  index as: :blog do
  title :firstname # Calls #my_title on each resource
  body  :lastname  # Calls #my_body on each resource
end



  show do
   attributes_table do
      row :avatar do |av|
        image_tag av.avatar, width: "10%" if av.avatar.attached?
      end

      row :email
      row :nis
      row :firstname
      row :lastname
      row :status
      row :school
      row :major
      row :mother_name
      row :father_name
      row :phone
      row :zipcode
      row :address
      row :city
      row :province
      row :emergency_number
      row :start_at
      row :end_at

    end

  #  columns do
  # column do
  #   span "Column #1"
  #   attributes_table do
  #   row :email
  # end
  # end

  # column do
  #   span "Column #2"
  #   attributes_table do
  #   row :firstname
  # end
  # end

  end

  form do |f|
    f.inputs :multipart => true do
      f.input :nis
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :firstname
      f.input :lastname
      f.input :phone
      f.input :status, :as => :boolean
      f.input :major
      f.input :avatar, :as => :file
      f.input :school
      f.input :address
      f.input :latitude
      f.input :longitude
      f.input :city
      f.input :province
      f.input :zipcode
      f.input :mother_name
      f.input :father_name
      f.input :emergency_number
      f.input :start_at
      f.input :end_at
    end
    f.actions
  end

end
