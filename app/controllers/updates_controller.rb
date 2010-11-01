class UpdatesController < ApplicationController
  def create
    u = Update.new(params[:update])
    u.save
    flash[:notice] = 'Saved'
    redirect_to :back
  end
end
