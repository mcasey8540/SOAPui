# WebService Calls

require 'savon'

	def callSeeBurger
	 
		client = Savon.client(
			#wsdl file path is relative
		  wsdl: "/Users/mcasey/Downloads/documents-export-2013-12-11/CreateOrChangeCustomerWSPort.wsdl",
			ssl_verify_mode: :none,
			pretty_print_xml: true
		)

		response = client.call(:create_or_change_customer_ws, xml: "
		<soapenv:Envelope xmlns:soapenv='http://schemas.xmlsoap.org/soap/envelope/' xmlns:cre='http://uri.seeburger.com/bisas/schema/CreateOrChangeCustomerWS'>
		   <soapenv:Header/>
		   <soapenv:Body>
		      <Customer xmlns='http://uri.seeburger.com/bisas/schema/CreateOrChangeCustomerWS'>
		         <Operation>Create</Operation>
		         <FirstName>Joe</FirstName>
		         <LastName>McPherson2</LastName>
		         <BillingAddress>
		            <StreetAddress>Some Address</StreetAddress>
		            <City>Atlanta</City>
		            <State>GA</State>
		            <PostalCode>30308</PostalCode>
		            <Country>US</Country>
		         </BillingAddress>
		         <TelephoneNumber>123</TelephoneNumber>
		         <EmailAddress>a@a.com</EmailAddress>
		         <Language>US</Language>
		         <Currency>USD</Currency>
		         <SalesOrganisation>1000</SalesOrganisation>
		         <DistributionChannel>10</DistributionChannel>
		         <Division>10</Division>
		         <user_id>cvetko_cenkov</user_id>
		         <nickname>cvetko</nickname>
		         <gender>M</gender>
		         <apt>123</apt>
		      </Customer>
		   </soapenv:Body>
		</soapenv:Envelope>"
		)

		return response.to_hash[:response][:sap_customer_number]
		
	end

	callSeeBurger			







