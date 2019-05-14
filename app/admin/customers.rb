ActiveAdmin.register Customer do

 permit_params :email, :password, :phonenumber, :firstname, :lastname, :optin_texts, :optin_email, :date_firstconsultation, :date_lastconsultation, :address_street, :address_city, :address_state, :address_zipcode
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
