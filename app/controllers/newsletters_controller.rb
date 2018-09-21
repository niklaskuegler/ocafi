class NewslettersController < ApplicationController

  def create

    @newsletter = Newsletter.new(email: newsletter_params)
    @newsletter.save

  end

  private

  def newsletter_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:email)
  end

end
