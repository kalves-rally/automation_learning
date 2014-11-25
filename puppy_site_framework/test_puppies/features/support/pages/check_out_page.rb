class CheckOutPage
	include PageObject

	text_field(:name, :id => 'order_name')
	text_area(:address, :id => 'order_address')
	text_field(:email_address, :id => 'order_email')
	select_list(:pay_type, :id => 'order_pay_type')
	button(:place_order, :value => 'Place Order')

#self allows me to interact with the page
	def complete_order_with(options={})
		name_value = options[:name] || 'James'
		address_value = options[:address] || '1 street'
		email_value = options[:email] || '1@email.com'
		payment_type_value = options[:payment_type] || 'Check'



		self.name = name_value
		self.address = address_value
		self.email_address = email_value
		self.pay_type = payment_type_value
		place_order
	end
end	

#complete_order_with
#complete_order_with({:email => ''})