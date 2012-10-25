# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
CountryCode.create(:name=>'India',:code=>'+91')
CountryCode.create(:name=>'United States',:code=>'+1')
CountryCode.create(:name=>'United Kingdom',:code=>'+44')
CountryCode.create(:name=>'Australia',:code=>'+66')
CountryCode.create(:name=>'Belgium',:code=>'+32')
CountryCode.create(:name=>'Brazil',:code=>'+55')
CountryCode.create(:name=>'Costa Rica',:code=>'+506')
CountryCode.create(:name=>'Egypt',:code=>'+20')



