class EmailMailer < ActionMailer::Base
  default to: "joshuakemp85@gmail.com"

  def lets_talk(email)
    @email = email 

    mail(from: email.email, subject: "Let's Talk!")
  end
end
