class OrderMailer < ActionMailer::Base
  default to: 'info@ocafi.de'

  def order_email(company_name, customer_first_name, customer_last_name, customer_email, phone_number, customer_billing_address, customer_billing_postcode, customer_billing_city, customer_billing_country, vat_number, special_request, quantities)
    @company_name = company_name
    @customer_email = customer_email
    @phone_number = phone_number
    @customer_first_name = customer_first_name
    @customer_last_name = customer_last_name
    @customer_billing_address = customer_billing_address
    @customer_billing_postcode = customer_billing_postcode
    @customer_billing_city = customer_billing_city
    @customer_billing_country = customer_billing_country
    @vat_number = vat_number
    @special_request = special_request
    @quantities = quantities

    mail(from: customer_email, subject: 'Customer Order Details')
  end

end
