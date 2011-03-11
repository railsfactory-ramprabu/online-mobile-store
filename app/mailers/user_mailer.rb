class UserMailer < ActionMailer::Base
  default :from => "from@example.com"
  
  def 	send_test_email(email)
   puts "--------------" 
   puts email.inspect
    mail(:from=>"ramprabu@gmail.com",
            :to=>email,
            :subject=>"friend")
    
  end
end
