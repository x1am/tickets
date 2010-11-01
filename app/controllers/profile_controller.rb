class ProfileController < ApplicationController

def update
  current_user.userinfo << pasams[:userinfo_new] if params[:userinfo_new]
  current_user.save
end

end
