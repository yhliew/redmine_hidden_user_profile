require 'redmine'

Redmine::Plugin.register :redmine_hidden_user_profile do
  name 'Redmine Hidden User Profile plugin'
  author 'Monika Perwejnis'
  description 'Add permission to view user profile, hide members box in projects, Link to user is a string. Member profile page is not available - 403.'
  version '0.0.1'

  permission :view_profiles, :user => :show
end


