ActiveAdmin.register Report do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :subject, :content, :student_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:subject, :content, :student_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

   actions :all, :except => [:new]

  filter :student
  filter :created_at

  index do
    selectable_column
    id_column
    column :subject
    # column (:content) { |report| raw(report.content) }
    # column "content" do |content|
    #   truncate(content.content, omision: "", length: 10)
    # end
    column :student
    column :created_at
    actions
  end


  show do
   attributes_table do
      row :subject
      row (:content) { |report| raw(report.content) }
      row :student
      row :created_at
    end
  end

end
