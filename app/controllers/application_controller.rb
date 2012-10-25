class ApplicationController < ActionController::Base
  protect_from_forgery :except=>[{:controller=>'welcome',:action=>'validate_unique_email'},
                                 {:controller=>'welcome',:action=>'validate_unique_phone_no'}
                                ]
end
