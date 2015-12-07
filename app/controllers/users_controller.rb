require 'redmine'
require_dependency 'users_controller'

class UsersController < ApplicationController
  before_filter :check_hidden_permission, :only => [:show]

    helper :sort
    include SortHelper
    helper :custom_fields
    include CustomFieldsHelper

  def check_hidden_permission
     if !User.current.admin && User.current.allowed_to?(:view_profiles, @project, :global => true).nil?
         render_403
     end
  end
end
