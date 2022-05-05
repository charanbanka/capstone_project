class HomeController < ApplicationController
  def index
    @projects = Project.all
    @user = current_user
  end
end
