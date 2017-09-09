class ApplicationController < ActionController::Base
  before_filter :set_user_language
  
  private
  
  def set_user_language
    I18n.locale = 'en'
  end
end
