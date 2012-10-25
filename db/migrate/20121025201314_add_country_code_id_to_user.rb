class AddCountryCodeIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :country_code_id, :integer
  end
end
