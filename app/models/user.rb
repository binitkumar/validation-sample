class User < ActiveRecord::Base
  attr_accessible :date_of_birth, :email, :phone_no, :country_code_id
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_format_of :email, :with => /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i, :message=>"Invalid email address"
  validates_uniqueness_of :phone_no
  validates :phone_no, :length => { :is => 10 },:numericality => true
  validates_date :date_of_birth, :before => lambda { 16.years.ago },:before_message => "must be at least 16 years old"
end
