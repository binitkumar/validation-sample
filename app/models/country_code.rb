class CountryCode < ActiveRecord::Base
  attr_accessible :code, :name

  def country_code_details
    self.name + ' (' +  self.code + ')'
  end
end
