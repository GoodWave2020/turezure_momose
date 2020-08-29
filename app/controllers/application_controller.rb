class ApplicationController < ActionController::Base
  before_action :basic

  private
  def basic
    if Rails.env == "development"
      authenticate_or_request_with_http_basic do |name, password|
            name == ENV['BASIC_AUTH_USERNAME'] && password == ENV['BASIC_AUTH_PASSWORD']
      end
    end
  end
end
