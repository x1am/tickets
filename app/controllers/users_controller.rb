class UsersController < ApplicationController
def update
  current_user.userinfo_list.add params[:userinfo_new] if params[:userinfo_new]
  current_user.userinfo.find(params[:tag_id]).destroy if params[:userinfo_del]
  current_user.save
  flash.notice = 'saved'
  redirect_to :back
end

end
