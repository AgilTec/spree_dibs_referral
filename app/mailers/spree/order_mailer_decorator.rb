Spree::OrderMailer.class_eval do
  def confirm_email(order, resend = false)
    find_order(order)
    subject = (resend ? "[#{Spree.t(:resend).upcase}] " : '')
    subject += "#{Spree::Store.current.name} #{Spree.t('order_mailer.confirm_email.subject')} ##{@order.number}"
    if @order.dibs_referral
      mail(to: @order.email, from: from_address, subject: subject, cc: @order.dibs_referral.email)
    else
      mail(to: @order.email, from: from_address, subject: subject)
    end
  end

  def cancel_email(order, resend = false)
    find_order(order)
    subject = (resend ? "[#{Spree.t(:resend).upcase}] " : '')
    subject += "#{Spree::Store.current.name} #{Spree.t('order_mailer.cancel_email.subject')} ##{@order.number}"
    if @order.dibs_referral
      mail(to: @order.email, from: from_address, subject: subject, cc: @order.dibs_referral.email)
    else
      mail(to: @order.email, from: from_address, subject: subject)
    end
  end

  private
  def find_order(order)
    @order = order.respond_to?(:id) ? order : Spree::Order.find(order)
  end
end


