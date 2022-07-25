class TransactionSuccessMailer < ApplicationMailer
  default from: 'notifications@email.com'

  def successful_transaction_email(buyer, property)
    @buyer = buyer
    @property = property
    mail(to: [@buyer.email, @property.owner], subject: 'Property Sale Transaction has been Successful!')
  end

end
