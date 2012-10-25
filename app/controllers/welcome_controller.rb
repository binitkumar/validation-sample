class WelcomeController < ApplicationController
  protect_from_forgery :except=>[:validate_unique_email,:validate_unique_phone_no]
  def home
    @user = User.new(params[:user])
    if @user.save

    else
      @country_codes = CountryCode.all
      render :index,:notice=>"User added successfully"
    end
  end

  def index
    @user = User.new
    @country_codes = CountryCode.all
  end
  def validate_unique_email
    if User.where(:email=>params[:fieldValue]).length == 0
      render :json=> ['user_email',true]
    else
      #render :json=> ['user_email',false]
      render :json=> ['user_email',true]
    end
  end

  def validate_unique_phone_no
    if User.where(:phone_no => params[:fieldValue].to_i).length == 0
      render :json=>['user_phone_no',true]
    else
      #render :json=>['user_phone_no',false]
      render :json=>['user_phone_no',true]
    end

  end
end
