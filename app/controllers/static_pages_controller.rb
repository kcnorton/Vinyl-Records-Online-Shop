class StaticPagesController < ApplicationController
  def index
  end
  def landing_page
  	@products = Product.all
  end
   ActionMailer::Base.mail(:from => 'from@domain.com', :to => 'to@domain.com', :subject => "Welcome to My Awesome Site", :body => 'I am the email body.').deliver_now
  def thank_you
  	@name = params[:name]
  	@email = params[:email]
  	@message = params[:message]
  	UserMailer.contact_form(@email, @name, @message).deliver_now
  	#ActionMailer::Base.mail(:from => @email,
  	#	:to => 'nortonkara057@gmail.com',
  	#	:subject => "A new contact form message from #{@name}",
  	#	:body => @message).deliver_now
  end
end
