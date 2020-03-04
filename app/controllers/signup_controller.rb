class SignupController < ApplicationController
  def index
    @user = User.new
    @company = company.all
  end

  def step2
    session[:email]          = user_params[:email]
    session[:password]       = user_params[:password]
    @user = User.new
    # render 'signup/index' unless @user.valid?(:step2)
  end
  
  def create
    session[:f_name]         = user_params[:f_name]
    session[:l_name]         = user_params[:l_name]
    session[:f_name_kana]    = user_params[:f_name_kana]
    session[:l_name_kana]    = user_params[:l_name_kana]
    session[:gender]         = user_params[:gender]
    session[:birth_yyyy]     = user_params[:birth_yyyy]
    session[:birth_mm]       = user_params[:birth_mm]
    session[:birth_dd]       = user_params[:birth_dd]
    session[:job_type]       = user_params[:job_type]
    session[:blood_type]     = user_params[:blood_type]
    session[:company_id]     = user_params[:company_id]

    @user = User.new(
      email:            session[:email],
      password:         session[:password],
      f_name:           session[:f_name],
      l_name:           session[:l_name],
      f_name_kana:      session[:f_name_kana],
      l_name_kana:      session[:l_name_kana],
      gender:           session[:gender], 
      birth_yyyy:       session[:birth_yyyy],
      birth_mm:         session[:birth_mm],
      birth_dd:         session[:birth_dd],
      job_type:         session[:job_type],
      blood_type:       session[:blood_type],
      company_id:       session[:company_id]
    )
    
    if @user.save!
      session[:id] = @user.id
      redirect_to step3_signup_index_path
    else
      render 'signup/step2'
    end
  end

  def step3
    sign_in User.find(session[:id]) unless user_signed_in?
  end

private
  def user_params
    params.require(:user).permit(
      :email,
      :password,
      :f_name,
      :l_name,
      :f_name_kana,
      :l_name_kana,
      :gender,
      :birth_yyyy,
      :birth_mm,
      :birth_dd,
      :job_type,
      :blood_type,
      :company_id
    )
  end
end
