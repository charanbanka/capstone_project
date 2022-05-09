class HomeController < ApplicationController
  def index
    @projects = Project.all
    @user = current_user
    @new_count =0
    @onhold_count =0
    @inprogress_count =0
    @completed_count =0
    Project.all.each do |p|
      if p.status == "New"
        @new_count+=1
      elsif p.status == "OnHold"
        @onhold_count+=1
      elsif p.status =="InProgress"
        @inprogress_count+=1
      else
        @completed_count+=1
      end
    end
  end
end
