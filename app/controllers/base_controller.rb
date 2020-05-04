class BaseController < ApplicationController
  layout :layout_by_resource

  before_action :authenticate_member!

  private

  def layout_by_resource
    devise_controller? ? 'devise' : 'application'
  end
end
