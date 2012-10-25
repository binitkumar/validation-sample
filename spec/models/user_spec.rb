require 'spec_helper'

describe User do
  before(:each) do
    @user = User.new(:email=>'a@a.com',:phone_no=>'1234567890',:date_of_birth=>17.years.ago )
  end
  it "should not accept empty email address" do
    @user.email = nil
    @user.valid?.should == false
  end

  it "should not accept empty phone number" do
   @user.phone_no = nil
   @user.valid?.should == false
  end

  it "should not accept empty date of birth" do
   @user.date_of_birth = nil
   @user.valid?.should == false
  end

  it "should not accept invalid email format" do
   @user.email = 'a@invalidformat'
   @user.valid?.should == false
  end

  it "should not accept invalid date format " do
   @user.date_of_birth = '01/01'
   @user.valid?.should == false
  end

  it "should not accept phone number less the ten integer" do
   @user.phone_no = 1234567
   @user.valid?.should == false
  end

  it "should not accept non integer value as phonenumber" do
    @user.phone_no = 'aabbcc'
    @user.valid?.should == false
  end

  it "should not accept alphanumeric value as phonenumber" do
    @user.phone_no = 'aabbcc1234'
    @user.valid?.should == false
  end


  it "should not accept less then 16 years as date of birth" do
    @user.date_of_birth = 15.years.ago
    @user.valid?.should == false
  end

  it "should accept all valid values" do
    @user.valid?.should == true
  end

end
