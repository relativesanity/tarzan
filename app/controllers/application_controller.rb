class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :markdown
  def markdown(string)
    RDiscount.new(string).to_html.html_safe
  end
end
