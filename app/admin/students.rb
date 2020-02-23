ActiveAdmin.register Student do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :email, :encrypted_password, :firstname, :lastname, :school, :phone, :nis,
    :address, :city, :province, :zipcode, :periode, :status, :major_id, :reset_password_token,
    :reset_password_sent_at, :remember_created_at, :mother_name, :father_name, :emergency_number,
    :avatar, :password, :password_confirmation, :start_date, :end_date, :province_id, :latitude, :longitude
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :firstname, :lastname, :school, :phone, :nis, :address, :city, :province, :zipcode, :periode, :status, :major_id, :reset_password_token, :reset_password_sent_at, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  config.sort_order = 'email_asc'

  scope :all, default: true
  scope("Active") { |scope| scope.where(status: true) }
  scope("Inactive") { |scope| scope.where(status: false) }

  filter :email, filters: [:contains]
  filter :firstname, filters: [:contains]
  filter :lastname, filters: [:contains]

  index do
    selectable_column
    id_column
    column :firstname
    column :lastname
    column :email
    actions
  end

  index as: :grid do |student|
    link_to image_tag(student.avatar, width: "40%"), admin_student_path(student)  if student.avatar.attached?
  end

  show do
    panel "Personal" do
      attributes_table_for student do
        row :avatar do |av|
          if av.avatar.attached?
            image_tag url_for(av.avatar), width: "150px"
          else
            image_tag("avatar-default2.jpeg")
          end
        end

        row :firstname
        row :lastname
        row :email
        row :mother_name
        row :father_name
        row "Phone Number" do |r|
              r.phone
            end
        row :emergency_number
        row :zipcode
        row :address
        row :city
        row :province
      end
    end

    panel "School", only: :show do
      attributes_table_for student do
        row "Student ID"  do |r|
              r.nis
            end
        row :school
        row :major
        row :start_date
        row :end_date
        row "Active" do |r|
              r.status
            end
      end
    end
  end

  form do |f|
    f.inputs :multipart => true do
      f.input :status, :as => :boolean

      f.input :avatar, :as => :file, :hint => f.object.avatar.attached?\
                                              ? image_tag(f.object.avatar, width: "100px")
                                              : content_tag(:span, "No avatar yet")
      f.input :avatar_attachment, :as => :hidden
      f.input :firstname
      f.input :lastname
      f.input :email
      f.input :school
      f.input :nis
      f.input :phone
      f.input :mother_name
      f.input :father_name
      f.input :emergency_number
      f.input :address
      f.input :zipcode
      f.input :latitude
      f.input :longitude
      f.latlng height: 500, api_key_env: 'AIzaSyCQf-Ijz45IisL1t1wZ-Ys2anK0h0jCC18'
      f.input :city
      f.input :password
      f.input :password_confirmation
      f.input :province
      f.input :major
      f.input :start_date
      f.input :end_date
    end
    f.actions
  end

end
