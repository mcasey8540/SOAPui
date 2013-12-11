# WebService Call For New SAP Order

require 'savon'

	def callSeeBurger
	 
		client = Savon.client(
			#wsdl file path is relative
		  wsdl: "/Users/mcasey/Desktop/SOAPUI/CreateOrChangeOrderWS-NEW.wsdl",
			ssl_verify_mode: :none,
			pretty_print_xml: true
		)

		response = client.call(:create_or_change_order_ws, xml: "
			<soapenv:Envelope xmlns:soapenv='http://schemas.xmlsoap.org/soap/envelope/'' xmlns:cre='http://uri.seeburger.com/bisas/schema/CreateOrChangeOrderWS'>
			   <soapenv:Header/>
			   <soapenv:Body>
			      <Order xmlns='http://uri.seeburger.com/bisas/schema/CreateOrChangeOrderWS'>
			         <Operation>Create</Operation>
			         <SAPCustomerNumber>0800000025</SAPCustomerNumber>
			         <OrangeCustomerNumber>10</OrangeCustomerNumber>
			         <OrangeOrderNumber>636</OrangeOrderNumber>
			         <SAPOrderNumber></SAPOrderNumber>
			         <BillingAddress>
			            <StreetAddress></StreetAddress>
			            <City></City>
			            <State></State>
			            <PostalCode></PostalCode>
			            <Country></Country>
			         </BillingAddress>
			         <ShippingAddress>
			            <StreetAddress>?</StreetAddress>
			            <City>?</City>
			            <State>?</State>
			            <PostalCode>?</PostalCode>
			            <Country>?</Country>
			         </ShippingAddress>
			         <ShippingMethod>?</ShippingMethod>
			         <OrderDate>20130916</OrderDate>
			         <GrossAmount>10</GrossAmount>
			         <DiscountAmount></DiscountAmount>
			         <NetAmount>8</NetAmount>
			         <TaxAmount>2</TaxAmount>
			         <ShippingAmount></ShippingAmount>
			         <Campaign></Campaign>
			         <PromoCode>?</PromoCode>
			         <OrderLines>
			            <LineNumber>10</LineNumber>
			            <ItemID>11</ItemID>
			            <QuantityOrdered>11</QuantityOrdered>
			            <RequestedQuantity>11</RequestedQuantity>
			            <Status>?</Status>
			            <StartDate>?</StartDate>
			            <Duration>?</Duration>
			            <Cycle>?</Cycle>
			            <GrossAmount>11</GrossAmount>
			            <DiscountAmount></DiscountAmount>
			            <NetAmount>10</NetAmount>
			            <TaxAmount>1</TaxAmount>
			            <ShippingAmount>?</ShippingAmount>
			            <PaidAmount>?</PaidAmount>
			            <Campaign>?</Campaign>
			            <PromoCode>?</PromoCode>
			            <Deferment>?</Deferment>
			            <DefermentPeriod>?</DefermentPeriod>
			         </OrderLines>
			         <Status>?</Status>
			      </Order>
			   </soapenv:Body>
			</soapenv:Envelope>"
		)

		return response

	end

	callSeeBurger			







