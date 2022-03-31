class BirthayReminderMailer < ApplicationMailer
    default from: 'abcforme91@gmail.com'
    
    #send a mail to user
    def send_brithday_reminder(user, birthday)
        @user = user
        @birthday = birthday
        mail( to: @user.email, subject: "This is a reminder" )

    end


end
