class AssignMailer < ApplicationMailer
  default from: 'from@example.com'

  def assign_mail(email, password)
    @email = email
    @password = password
    mail to: @email, subject: I18n.t('views.messages.complete_registration')
  end

  def transfer_mail(email, team)
    @email = email
    @team = team
    mail to: @email, subject: I18n.t('views.messages.transfer_the_leader')
  end
end
