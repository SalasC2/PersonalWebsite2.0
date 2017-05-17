class FormMailer < ApplicationMailer
  # Welcome email to user
  def welcome_email(user)
    @user = user
    mail(to: @user[:email], subject: 'C/S | Thanks For Reaching Out!')
  end

  # Email to site owner
  def contact_owner(user)
    @user = user
    mail(to: 'christiansalas96@gmail.com', subject: 'Contact Us Form | Someone Reached Out!')
  end

end
