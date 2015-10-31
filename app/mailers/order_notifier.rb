class OrderNotifier < ApplicationMailer
  default from: 'Sam Ruby <dd@example.com>'

  def received(order)
    @order = order

    mail to: order.email, subject: 'Подтверждение заказа в Pragmatic Store'
  end

  def shipped
    @order = order

    mail to: order.email, subject: 'Заказ из Pragmatic Store отправлен.'
  end
end
