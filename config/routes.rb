# == Route Map
#
#                                Prefix Verb       URI Pattern                                                                              Controller#Action
#                new_admin_user_session GET        /admin/login(.:format)                                                                   active_admin/devise/sessions#new
#                    admin_user_session POST       /admin/login(.:format)                                                                   active_admin/devise/sessions#create
#            destroy_admin_user_session DELETE|GET /admin/logout(.:format)                                                                  active_admin/devise/sessions#destroy
#               new_admin_user_password GET        /admin/password/new(.:format)                                                            active_admin/devise/passwords#new
#              edit_admin_user_password GET        /admin/password/edit(.:format)                                                           active_admin/devise/passwords#edit
#                   admin_user_password PATCH      /admin/password(.:format)                                                                active_admin/devise/passwords#update
#                                       PUT        /admin/password(.:format)                                                                active_admin/devise/passwords#update
#                                       POST       /admin/password(.:format)                                                                active_admin/devise/passwords#create
#                            admin_root GET        /admin(.:format)                                                                         admin/dashboard#index
#           batch_action_admin_students POST       /admin/students/batch_action(.:format)                                                   admin/students#batch_action
#                        admin_students GET        /admin/students(.:format)                                                                admin/students#index
#                                       POST       /admin/students(.:format)                                                                admin/students#create
#                     new_admin_student GET        /admin/students/new(.:format)                                                            admin/students#new
#                    edit_admin_student GET        /admin/students/:id/edit(.:format)                                                       admin/students#edit
#                         admin_student GET        /admin/students/:id(.:format)                                                            admin/students#show
#                                       PATCH      /admin/students/:id(.:format)                                                            admin/students#update
#                                       PUT        /admin/students/:id(.:format)                                                            admin/students#update
#                                       DELETE     /admin/students/:id(.:format)                                                            admin/students#destroy
#          batch_action_admin_provinces POST       /admin/provinces/batch_action(.:format)                                                  admin/provinces#batch_action
#                       admin_provinces GET        /admin/provinces(.:format)                                                               admin/provinces#index
#                                       POST       /admin/provinces(.:format)                                                               admin/provinces#create
#                    new_admin_province GET        /admin/provinces/new(.:format)                                                           admin/provinces#new
#                   edit_admin_province GET        /admin/provinces/:id/edit(.:format)                                                      admin/provinces#edit
#                        admin_province GET        /admin/provinces/:id(.:format)                                                           admin/provinces#show
#                                       PATCH      /admin/provinces/:id(.:format)                                                           admin/provinces#update
#                                       PUT        /admin/provinces/:id(.:format)                                                           admin/provinces#update
#                                       DELETE     /admin/provinces/:id(.:format)                                                           admin/provinces#destroy
#                       admin_dashboard GET        /admin/dashboard(.:format)                                                               admin/dashboard#index
#             batch_action_admin_majors POST       /admin/majors/batch_action(.:format)                                                     admin/majors#batch_action
#                          admin_majors GET        /admin/majors(.:format)                                                                  admin/majors#index
#                                       POST       /admin/majors(.:format)                                                                  admin/majors#create
#                       new_admin_major GET        /admin/majors/new(.:format)                                                              admin/majors#new
#                      edit_admin_major GET        /admin/majors/:id/edit(.:format)                                                         admin/majors#edit
#                           admin_major GET        /admin/majors/:id(.:format)                                                              admin/majors#show
#                                       PATCH      /admin/majors/:id(.:format)                                                              admin/majors#update
#                                       PUT        /admin/majors/:id(.:format)                                                              admin/majors#update
#                                       DELETE     /admin/majors/:id(.:format)                                                              admin/majors#destroy
#          batch_action_admin_presences POST       /admin/presences/batch_action(.:format)                                                  admin/presences#batch_action
#                       admin_presences GET        /admin/presences(.:format)                                                               admin/presences#index
#                                       POST       /admin/presences(.:format)                                                               admin/presences#create
#                   edit_admin_presence GET        /admin/presences/:id/edit(.:format)                                                      admin/presences#edit
#                        admin_presence GET        /admin/presences/:id(.:format)                                                           admin/presences#show
#                                       PATCH      /admin/presences/:id(.:format)                                                           admin/presences#update
#                                       PUT        /admin/presences/:id(.:format)                                                           admin/presences#update
#                                       DELETE     /admin/presences/:id(.:format)                                                           admin/presences#destroy
#        batch_action_admin_admin_users POST       /admin/admin_users/batch_action(.:format)                                                admin/admin_users#batch_action
#                     admin_admin_users GET        /admin/admin_users(.:format)                                                             admin/admin_users#index
#                                       POST       /admin/admin_users(.:format)                                                             admin/admin_users#create
#                  new_admin_admin_user GET        /admin/admin_users/new(.:format)                                                         admin/admin_users#new
#                 edit_admin_admin_user GET        /admin/admin_users/:id/edit(.:format)                                                    admin/admin_users#edit
#                      admin_admin_user GET        /admin/admin_users/:id(.:format)                                                         admin/admin_users#show
#                                       PATCH      /admin/admin_users/:id(.:format)                                                         admin/admin_users#update
#                                       PUT        /admin/admin_users/:id(.:format)                                                         admin/admin_users#update
#                                       DELETE     /admin/admin_users/:id(.:format)                                                         admin/admin_users#destroy
#            batch_action_admin_reports POST       /admin/reports/batch_action(.:format)                                                    admin/reports#batch_action
#                         admin_reports GET        /admin/reports(.:format)                                                                 admin/reports#index
#                                       POST       /admin/reports(.:format)                                                                 admin/reports#create
#                     edit_admin_report GET        /admin/reports/:id/edit(.:format)                                                        admin/reports#edit
#                          admin_report GET        /admin/reports/:id(.:format)                                                             admin/reports#show
#                                       PATCH      /admin/reports/:id(.:format)                                                             admin/reports#update
#                                       PUT        /admin/reports/:id(.:format)                                                             admin/reports#update
#                                       DELETE     /admin/reports/:id(.:format)                                                             admin/reports#destroy
#                        admin_comments GET        /admin/comments(.:format)                                                                admin/comments#index
#                                       POST       /admin/comments(.:format)                                                                admin/comments#create
#                         admin_comment GET        /admin/comments/:id(.:format)                                                            admin/comments#show
#                                       DELETE     /admin/comments/:id(.:format)                                                            admin/comments#destroy
#            new_api_v1_student_session GET        /api/v1/login(.:format)                                                                  api/v1/devise/sessions#new
#                api_v1_student_session POST       /api/v1/login(.:format)                                                                  api/v1/devise/sessions#create
#        destroy_api_v1_student_session DELETE     /api/v1/logout(.:format)                                                                 api/v1/devise/sessions#destroy
#           new_api_v1_student_password GET        /api/v1/password/new(.:format)                                                           api/v1/passwords#new
#          edit_api_v1_student_password GET        /api/v1/password/edit(.:format)                                                          api/v1/passwords#edit
#               api_v1_student_password PATCH      /api/v1/password(.:format)                                                               api/v1/passwords#update
#                                       PUT        /api/v1/password(.:format)                                                               api/v1/passwords#update
#                                       POST       /api/v1/password(.:format)                                                               api/v1/passwords#create
#    cancel_api_v1_student_registration GET        /api/v1/signup/cancel(.:format)                                                          api/v1/devise/registrations#cancel
#       new_api_v1_student_registration GET        /api/v1/signup/sign_up(.:format)                                                         api/v1/devise/registrations#new
#      edit_api_v1_student_registration GET        /api/v1/signup/edit(.:format)                                                            api/v1/devise/registrations#edit
#           api_v1_student_registration PATCH      /api/v1/signup(.:format)                                                                 api/v1/devise/registrations#update
#                                       PUT        /api/v1/signup(.:format)                                                                 api/v1/devise/registrations#update
#                                       DELETE     /api/v1/signup(.:format)                                                                 api/v1/devise/registrations#destroy
#                                       POST       /api/v1/signup(.:format)                                                                 api/v1/devise/registrations#create
#                       api_v1_students GET        /api/v1/students(.:format)                                                               api/v1/students#index
#                                       POST       /api/v1/students(.:format)                                                               api/v1/students#create
#                        api_v1_student GET        /api/v1/students/:id(.:format)                                                           api/v1/students#show
#                                       PATCH      /api/v1/students/:id(.:format)                                                           api/v1/students#update
#                                       PUT        /api/v1/students/:id(.:format)                                                           api/v1/students#update
#                                       DELETE     /api/v1/students/:id(.:format)                                                           api/v1/students#destroy
#                        api_v1_reports GET        /api/v1/reports(.:format)                                                                api/v1/reports#index
#                                       POST       /api/v1/reports(.:format)                                                                api/v1/reports#create
#                         api_v1_report GET        /api/v1/reports/:id(.:format)                                                            api/v1/reports#show
#                                       PATCH      /api/v1/reports/:id(.:format)                                                            api/v1/reports#update
#                                       PUT        /api/v1/reports/:id(.:format)                                                            api/v1/reports#update
#                                       DELETE     /api/v1/reports/:id(.:format)                                                            api/v1/reports#destroy
#                      api_v1_presences GET        /api/v1/presences(.:format)                                                              api/v1/presences#index
#                                       POST       /api/v1/presences(.:format)                                                              api/v1/presences#create
#                       api_v1_presence GET        /api/v1/presences/:id(.:format)                                                          api/v1/presences#show
#                                       PATCH      /api/v1/presences/:id(.:format)                                                          api/v1/presences#update
#                                       PUT        /api/v1/presences/:id(.:format)                                                          api/v1/presences#update
#                                       DELETE     /api/v1/presences/:id(.:format)                                                          api/v1/presences#destroy
#                   api_v1_friend_index GET        /api/v1/friend(.:format)                                                                 api/v1/friend#index
#                                       POST       /api/v1/friend(.:format)                                                                 api/v1/friend#create
#                         api_v1_friend GET        /api/v1/friend/:id(.:format)                                                             api/v1/friend#show
#                                       PATCH      /api/v1/friend/:id(.:format)                                                             api/v1/friend#update
#                                       PUT        /api/v1/friend/:id(.:format)                                                             api/v1/friend#update
#                                       DELETE     /api/v1/friend/:id(.:format)                                                             api/v1/friend#destroy
#                api_v1_homes_myprofile GET        /api/v1/homes/myprofile(.:format)                                                        api/v1/homes#myprofile
#                    api_v1_homes_index GET        /api/v1/homes/index(.:format)                                                            api/v1/homes#index
#         rails_mandrill_inbound_emails POST       /rails/action_mailbox/mandrill/inbound_emails(.:format)                                  action_mailbox/ingresses/mandrill/inbound_emails#create
#         rails_postmark_inbound_emails POST       /rails/action_mailbox/postmark/inbound_emails(.:format)                                  action_mailbox/ingresses/postmark/inbound_emails#create
#            rails_relay_inbound_emails POST       /rails/action_mailbox/relay/inbound_emails(.:format)                                     action_mailbox/ingresses/relay/inbound_emails#create
#         rails_sendgrid_inbound_emails POST       /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                  action_mailbox/ingresses/sendgrid/inbound_emails#create
#          rails_mailgun_inbound_emails POST       /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                              action_mailbox/ingresses/mailgun/inbound_emails#create
#        rails_conductor_inbound_emails GET        /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#index
#                                       POST       /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#create
#         rails_conductor_inbound_email GET        /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#show
#                                       PATCH      /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       PUT        /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       DELETE     /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#destroy
# rails_conductor_inbound_email_reroute POST       /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                      rails/conductor/action_mailbox/reroutes#create
#                    rails_service_blob GET        /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
#             rails_blob_representation GET        /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#                    rails_disk_service GET        /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
#             update_rails_disk_service PUT        /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#                  rails_direct_uploads POST       /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # devise_for :students, :skip => [:registerable, :registrations],
  #                       controllers: { sessions: 'students/sessions',
  #                                       passwords: "students/passwords" }
  # devise_scope :user do
  #   get 'sign_in', to: 'devise/sessions#new'
  #   get '/students/sign_out' => 'devise/sessions#destroy'
  #   get "/students/edit" => "devise/registrations#edit"
  #   put 'users' => 'devise/registrations#update', :as => 'user_registration'
  #   get '/students/edit', to: "devise/sessions#edit"
  # end

  # resources :reports, :except => [:edit, :update, :delete]
  # resources :presences, :except => [:delete]
  # resources :homes do
  #   get 'myprofile', :on => :collection
  # end

  # get "/friend/index" => "/friend/index"
  # get "/friend/show" => "/friend/show"


  # get "/presences/update" => "/presences/update"
  # post "/presences/update" => "/presences/update"


  namespace :api do
    namespace :v1 do

      devise_for :students,
                 path: '',
                 path_names: {
                   sign_in: 'login',
                   sign_out: 'logout',
                   registration: 'signup',
                 },
                 controllers: {
                   sessions: 'api/v1/devise/sessions',
                   registrations: 'api/v1/devise/registrations'
                 }

      resources :students
      resources :reports
      resources :presences
      resources :friend
      # get 'users/myprofile'
      get 'homes/myprofile'
      get 'homes/index'
    end
  end

  # root to: 'homes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
