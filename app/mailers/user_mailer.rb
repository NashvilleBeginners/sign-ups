class UserMailer < ApplicationMailer
  def confirmed_signup(user)
    @user = user
    mail to: 'sean@reax.io', from: 'the@app.com', subject: 'Hey, we have a new user'
  end
end
