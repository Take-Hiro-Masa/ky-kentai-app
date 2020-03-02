class CompaniesController < ApplicationController
  def step1
    @company = Company.new
  end

  def create
    session[:company_name]   = company_params[:company_name]
    session[:postal_code]    = company_params[:postal_code]
    session[:prefecture]     = company_params[:prefecture]
    session[:city]           = company_params[:city]
    session[:block]          = company_params[:block]
    session[:building]       = company_params[:building]
    session[:phone_num]      = company_params[:phone_num]
    session[:Representative] = company_params[:Representative]

    @company = Company.new(
      company_name:      session[:company_name],
      postal_code:       session[:postal_code],
      prefecture:        session[:prefecture],
      city:              session[:city],
      block:             session[:block],
      building:          session[:building],
      phone_num:         session[:phone_num], 
      Representative:    session[:Representative]
    )
    
    if @company.save!
      redirect_to signup_index_path
    else
      render 'companies/step1'
    end
  end

private

  def company_params
    params.require(:company).permit(
      :company_name,
      :postal_code,
      :prefecture,
      :city,
      :block,
      :building,
      :phone_num,
      :Representative
    ).merge(user_id: current_user.id)
  end
end
