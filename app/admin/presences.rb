ActiveAdmin.register Presence do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :checkin, :checkout, :student_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:checkin, :checkout, :student_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  actions :all, :except => [:new]

  filter :student
  filter :checkin
  filter :checkout

  index do
    selectable_column
    id_column
    column :checkin
    column :checkout
    column :student
    actions
  end

end
