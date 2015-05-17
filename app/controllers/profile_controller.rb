class ProfileController < ApplicationController
  def userview
    @id=params[:id]
    @post=Postc.where(:user_idfk=>@id)

    @profile=Profile.where(:user_id=>@id)
  end

  def update
      if current_user
          @record=Profile.count(current_user.id)

          if @record==0
            @profile=Profile.new
          else
            @profile=Profile.where(:user_id=>current_user.id)
          end
      else
        redirect_to '/users/sign_in', alert: 'Please sign in'

        end
  end



  def create2
    @profile = Profile.where(:user_id => current_user.id).count
    if @profile ==0
    @upd=Profile.new( profile_param)
    @upd.user_id=current_user.id

    if @upd.save
      redirect_to '/postcs', alert: 'Successfully uploaded your profile'
    else
      redirect_to '/profile/update', alert: 'Something went wrong!'

    end

    else
    Profile.update(current_user.id, :user_name=>params[:user_name], :user_desc=>params[:user_desc])
    end
  end

  private

  def profile_param
    params.require(:profile).permit(:user_name, :user_desc)
  end

end
