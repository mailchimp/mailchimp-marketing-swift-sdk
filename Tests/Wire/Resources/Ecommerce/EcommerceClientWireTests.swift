import Foundation
import Testing
import Mailchimp

@Suite("EcommerceClient Wire Tests") struct EcommerceClientWireTests {
    @Test func list1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListEcommerceResponse(
            links: Optional([
                ListEcommerceResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListEcommerceResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ])
        )
        let response = try await client.ecommerce.list(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func listOrders1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "orders": [
                    {
                      "_links": [
                        {}
                      ],
                      "billing_address": {
                        "address1": "675 Ponce de Leon Ave NE",
                        "address2": "Suite 5000",
                        "city": "Atlanta",
                        "country": "United States",
                        "country_code": "US",
                        "latitude": 45.427408,
                        "longitude": -75.68903,
                        "name": "Freddie Chimpenheimer",
                        "phone": "8675309",
                        "postal_code": "30308",
                        "province": "Georgia",
                        "province_code": "GA"
                      },
                      "campaign_id": "839488a60b",
                      "cart_id": "cart-123",
                      "cancelled_at_foreign": "2015-07-15T19:28:00Z",
                      "currency_code": "currency_code",
                      "customer": {
                        "address": {
                          "address1": "675 Ponce de Leon Ave NE",
                          "address2": "Suite 5000",
                          "city": "Atlanta",
                          "country": "United States",
                          "country_code": "US",
                          "postal_code": "30308",
                          "province": "Georgia",
                          "province_code": "GA"
                        },
                        "created_at": "2015-07-15T19:28:00Z",
                        "orders_count": 4,
                        "updated_at": "2015-07-15T19:28:00Z"
                      },
                      "discount_total": 1.1,
                      "financial_status": "financial_status",
                      "fulfillment_status": "fulfillment_status",
                      "id": "id",
                      "landing_site": "http://www.example.com?source=abc",
                      "lines": [
                        {}
                      ],
                      "order_total": 1.1,
                      "order_url": "order_url",
                      "outreach": {
                        "id": "839488a60b",
                        "name": "Freddie's Jokes",
                        "published_time": "2017-06-06T13:56:12Z",
                        "type": "regular"
                      },
                      "processed_at_foreign": "2015-07-15T19:28:00Z",
                      "promos": [
                        {}
                      ],
                      "shipping_address": {
                        "address1": "675 Ponce de Leon Ave NE",
                        "address2": "Suite 5000",
                        "city": "Atlanta",
                        "country": "United States",
                        "country_code": "US",
                        "latitude": 45.427408,
                        "longitude": -75.68903,
                        "name": "Freddie Chimpenheimer",
                        "phone": "8675309",
                        "postal_code": "30308",
                        "province": "Georgia",
                        "province_code": "GA"
                      },
                      "shipping_total": 1.1,
                      "store_id": "store_id",
                      "tax_total": 1.1,
                      "tracking_carrier": "tracking_carrier",
                      "tracking_code": "prec",
                      "tracking_number": "tracking_number",
                      "tracking_url": "tracking_url",
                      "updated_at_foreign": "2015-07-15T19:28:00Z"
                    }
                  ],
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListOrdersEcommerceResponse(
            links: Optional([
                ListOrdersEcommerceResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListOrdersEcommerceResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            orders: Optional([
                ECommerceOrder(
                    links: Optional([
                        ECommerceOrderLinksItem(

                        )
                    ]),
                    billingAddress: Optional(ECommerceOrderBillingAddress(
                        address1: Optional("675 Ponce de Leon Ave NE"),
                        address2: Optional("Suite 5000"),
                        city: Optional("Atlanta"),
                        country: Optional("United States"),
                        countryCode: Optional("US"),
                        latitude: Optional(45.427408),
                        longitude: Optional(-75.68903),
                        name: Optional("Freddie Chimpenheimer"),
                        phone: Optional("8675309"),
                        postalCode: Optional("30308"),
                        province: Optional("Georgia"),
                        provinceCode: Optional("GA")
                    )),
                    campaignId: Optional("839488a60b"),
                    cartId: Optional("cart-123"),
                    cancelledAtForeign: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
                    currencyCode: Optional("currency_code"),
                    customer: Optional(ECommerceCustomer(
                        address: Optional(ECommerceCustomerAddress(
                            address1: Optional("675 Ponce de Leon Ave NE"),
                            address2: Optional("Suite 5000"),
                            city: Optional("Atlanta"),
                            country: Optional("United States"),
                            countryCode: Optional("US"),
                            postalCode: Optional("30308"),
                            province: Optional("Georgia"),
                            provinceCode: Optional("GA")
                        )),
                        createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
                        ordersCount: Optional(4),
                        updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601))
                    )),
                    discountTotal: Optional(1.1),
                    financialStatus: Optional("financial_status"),
                    fulfillmentStatus: Optional("fulfillment_status"),
                    id: Optional("id"),
                    landingSite: Optional("http://www.example.com?source=abc"),
                    lines: Optional([
                        ECommerceOrderLineItem(

                        )
                    ]),
                    orderTotal: Optional(ECommerceOrderOrderTotal.double(
                        1.1
                    )),
                    orderUrl: Optional("order_url"),
                    outreach: Optional(ECommerceOrderOutreach(
                        id: Optional("839488a60b"),
                        name: Optional("Freddie's Jokes"),
                        publishedTime: Optional(try! Date("2017-06-06T13:56:12Z", strategy: .iso8601)),
                        type: Optional("regular")
                    )),
                    processedAtForeign: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
                    promos: Optional([
                        ECommerceOrderPromosItem(

                        )
                    ]),
                    shippingAddress: Optional(ECommerceOrderShippingAddress(
                        address1: Optional("675 Ponce de Leon Ave NE"),
                        address2: Optional("Suite 5000"),
                        city: Optional("Atlanta"),
                        country: Optional("United States"),
                        countryCode: Optional("US"),
                        latitude: Optional(45.427408),
                        longitude: Optional(-75.68903),
                        name: Optional("Freddie Chimpenheimer"),
                        phone: Optional("8675309"),
                        postalCode: Optional("30308"),
                        province: Optional("Georgia"),
                        provinceCode: Optional("GA")
                    )),
                    shippingTotal: Optional(ECommerceOrderShippingTotal.double(
                        1.1
                    )),
                    storeId: Optional("store_id"),
                    taxTotal: Optional(ECommerceOrderTaxTotal.double(
                        1.1
                    )),
                    trackingCarrier: Optional("tracking_carrier"),
                    trackingCode: Optional(ECommerceOrderTrackingCode.prec),
                    trackingNumber: Optional("tracking_number"),
                    trackingUrl: Optional("tracking_url"),
                    updatedAtForeign: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601))
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.ecommerce.listOrders(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func listStores1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "stores": [
                    {
                      "_links": [
                        {}
                      ],
                      "address": {
                        "address1": "675 Ponce de Leon Ave NE",
                        "address2": "Suite 5000",
                        "city": "Atlanta",
                        "country": "United States",
                        "country_code": "US",
                        "latitude": 45.427408,
                        "longitude": -75.68903,
                        "postal_code": "30308",
                        "province": "Georgia",
                        "province_code": "GA"
                      },
                      "automations": {
                        "abandoned_browse": {
                          "id": "355a72bfc3",
                          "is_supported": false
                        },
                        "abandoned_cart": {
                          "id": "355a72bfc3",
                          "is_supported": false
                        }
                      },
                      "connected_site": {
                        "site_foreign_id": "a180c384d7db88b if created in-app, MC001 if created via API",
                        "site_script": {
                          "fragment": "<script id=\"mcjs\">!function(c,h,i,m,p){m=c.createElement(h),p=c.getElementsByTagName(h)[0],m.async=1,m.src=i,p.parentNode.insertBefore(m,p)}(document,\"script\",\"https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js\");</script>",
                          "url": "https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js"
                        }
                      },
                      "created_at": "2015-07-15T19:28:00Z",
                      "currency_code": "USD",
                      "domain": "example.com",
                      "email_address": "freddie@mailchimp.com",
                      "id": "example_store",
                      "is_syncing": true,
                      "list_id": "1a2df69511",
                      "list_is_active": true,
                      "money_format": "$",
                      "name": "Freddie's Cat Hat Emporium",
                      "phone": "+16155550128",
                      "platform": "platform",
                      "primary_locale": "fr",
                      "timezone": "Eastern",
                      "updated_at": "2015-07-15T19:28:00Z"
                    }
                  ],
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListStoresEcommerceResponse(
            links: Optional([
                ListStoresEcommerceResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListStoresEcommerceResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            stores: Optional([
                ECommerceStore(
                    links: Optional([
                        ECommerceStoreLinksItem(

                        )
                    ]),
                    address: Optional(ECommerceStoreAddress(
                        address1: Optional("675 Ponce de Leon Ave NE"),
                        address2: Optional("Suite 5000"),
                        city: Optional("Atlanta"),
                        country: Optional("United States"),
                        countryCode: Optional("US"),
                        latitude: Optional(45.427408),
                        longitude: Optional(-75.68903),
                        postalCode: Optional("30308"),
                        province: Optional("Georgia"),
                        provinceCode: Optional("GA")
                    )),
                    automations: Optional(ECommerceStoreAutomations(
                        abandonedBrowse: Optional(ECommerceStoreAutomationsAbandonedBrowse(
                            id: Optional("355a72bfc3"),
                            isSupported: Optional(false)
                        )),
                        abandonedCart: Optional(ECommerceStoreAutomationsAbandonedCart(
                            id: Optional("355a72bfc3"),
                            isSupported: Optional(false)
                        ))
                    )),
                    connectedSite: Optional(ECommerceStoreConnectedSite(
                        siteForeignId: Optional("a180c384d7db88b if created in-app, MC001 if created via API"),
                        siteScript: Optional(ECommerceStoreConnectedSiteSiteScript(
                            fragment: Optional("<script id=\"mcjs\">!function(c,h,i,m,p){m=c.createElement(h),p=c.getElementsByTagName(h)[0],m.async=1,m.src=i,p.parentNode.insertBefore(m,p)}(document,\"script\",\"https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js\");</script>"),
                            url: Optional("https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js")
                        ))
                    )),
                    createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
                    currencyCode: Optional("USD"),
                    domain: Optional("example.com"),
                    emailAddress: Optional("freddie@mailchimp.com"),
                    id: Optional("example_store"),
                    isSyncing: Optional(true),
                    listId: Optional("1a2df69511"),
                    listIsActive: Optional(true),
                    moneyFormat: Optional("$"),
                    name: Optional("Freddie's Cat Hat Emporium"),
                    phone: Optional("+16155550128"),
                    platform: Optional("platform"),
                    primaryLocale: Optional("fr"),
                    timezone: Optional("Eastern"),
                    updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601))
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.ecommerce.listStores(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func createStore1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "address": {
                    "address1": "675 Ponce de Leon Ave NE",
                    "address2": "Suite 5000",
                    "city": "Atlanta",
                    "country": "United States",
                    "country_code": "US",
                    "latitude": 45.427408,
                    "longitude": -75.68903,
                    "postal_code": "30308",
                    "province": "Georgia",
                    "province_code": "GA"
                  },
                  "automations": {
                    "abandoned_browse": {
                      "id": "355a72bfc3",
                      "is_supported": false,
                      "status": "save"
                    },
                    "abandoned_cart": {
                      "id": "355a72bfc3",
                      "is_supported": false,
                      "status": "save"
                    }
                  },
                  "connected_site": {
                    "site_foreign_id": "a180c384d7db88b if created in-app, MC001 if created via API",
                    "site_script": {
                      "fragment": "<script id=\"mcjs\">!function(c,h,i,m,p){m=c.createElement(h),p=c.getElementsByTagName(h)[0],m.async=1,m.src=i,p.parentNode.insertBefore(m,p)}(document,\"script\",\"https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js\");</script>",
                      "url": "https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js"
                    }
                  },
                  "created_at": "2015-07-15T19:28:00Z",
                  "currency_code": "USD",
                  "domain": "example.com",
                  "email_address": "freddie@mailchimp.com",
                  "id": "example_store",
                  "is_syncing": true,
                  "list_id": "1a2df69511",
                  "list_is_active": true,
                  "money_format": "$",
                  "name": "Freddie's Cat Hat Emporium",
                  "phone": "+16155550128",
                  "platform": "platform",
                  "primary_locale": "fr",
                  "timezone": "Eastern",
                  "updated_at": "2015-07-15T19:28:00Z"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommerceStore(
            links: Optional([
                ECommerceStoreLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommerceStoreLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            address: Optional(ECommerceStoreAddress(
                address1: Optional("675 Ponce de Leon Ave NE"),
                address2: Optional("Suite 5000"),
                city: Optional("Atlanta"),
                country: Optional("United States"),
                countryCode: Optional("US"),
                latitude: Optional(45.427408),
                longitude: Optional(-75.68903),
                postalCode: Optional("30308"),
                province: Optional("Georgia"),
                provinceCode: Optional("GA")
            )),
            automations: Optional(ECommerceStoreAutomations(
                abandonedBrowse: Optional(ECommerceStoreAutomationsAbandonedBrowse(
                    id: Optional("355a72bfc3"),
                    isSupported: Optional(false),
                    status: Optional(ECommerceStoreAutomationsAbandonedBrowseStatus.save)
                )),
                abandonedCart: Optional(ECommerceStoreAutomationsAbandonedCart(
                    id: Optional("355a72bfc3"),
                    isSupported: Optional(false),
                    status: Optional(ECommerceStoreAutomationsAbandonedCartStatus.save)
                ))
            )),
            connectedSite: Optional(ECommerceStoreConnectedSite(
                siteForeignId: Optional("a180c384d7db88b if created in-app, MC001 if created via API"),
                siteScript: Optional(ECommerceStoreConnectedSiteSiteScript(
                    fragment: Optional("<script id=\"mcjs\">!function(c,h,i,m,p){m=c.createElement(h),p=c.getElementsByTagName(h)[0],m.async=1,m.src=i,p.parentNode.insertBefore(m,p)}(document,\"script\",\"https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js\");</script>"),
                    url: Optional("https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js")
                ))
            )),
            createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
            currencyCode: Optional("USD"),
            domain: Optional("example.com"),
            emailAddress: Optional("freddie@mailchimp.com"),
            id: Optional("example_store"),
            isSyncing: Optional(true),
            listId: Optional("1a2df69511"),
            listIsActive: Optional(true),
            moneyFormat: Optional("$"),
            name: Optional("Freddie's Cat Hat Emporium"),
            phone: Optional("+16155550128"),
            platform: Optional("platform"),
            primaryLocale: Optional("fr"),
            timezone: Optional("Eastern"),
            updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601))
        )
        let response = try await client.ecommerce.createStore(
            request: .init(
                currencyCode: "USD",
                id: "example_store",
                listId: "1a2df69511",
                name: "Freddie's Cat Hat Emporium"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getStore1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "address": {
                    "address1": "675 Ponce de Leon Ave NE",
                    "address2": "Suite 5000",
                    "city": "Atlanta",
                    "country": "United States",
                    "country_code": "US",
                    "latitude": 45.427408,
                    "longitude": -75.68903,
                    "postal_code": "30308",
                    "province": "Georgia",
                    "province_code": "GA"
                  },
                  "automations": {
                    "abandoned_browse": {
                      "id": "355a72bfc3",
                      "is_supported": false,
                      "status": "save"
                    },
                    "abandoned_cart": {
                      "id": "355a72bfc3",
                      "is_supported": false,
                      "status": "save"
                    }
                  },
                  "connected_site": {
                    "site_foreign_id": "a180c384d7db88b if created in-app, MC001 if created via API",
                    "site_script": {
                      "fragment": "<script id=\"mcjs\">!function(c,h,i,m,p){m=c.createElement(h),p=c.getElementsByTagName(h)[0],m.async=1,m.src=i,p.parentNode.insertBefore(m,p)}(document,\"script\",\"https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js\");</script>",
                      "url": "https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js"
                    }
                  },
                  "created_at": "2015-07-15T19:28:00Z",
                  "currency_code": "USD",
                  "domain": "example.com",
                  "email_address": "freddie@mailchimp.com",
                  "id": "example_store",
                  "is_syncing": true,
                  "list_id": "1a2df69511",
                  "list_is_active": true,
                  "money_format": "$",
                  "name": "Freddie's Cat Hat Emporium",
                  "phone": "+16155550128",
                  "platform": "platform",
                  "primary_locale": "fr",
                  "timezone": "Eastern",
                  "updated_at": "2015-07-15T19:28:00Z"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommerceStore(
            links: Optional([
                ECommerceStoreLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommerceStoreLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            address: Optional(ECommerceStoreAddress(
                address1: Optional("675 Ponce de Leon Ave NE"),
                address2: Optional("Suite 5000"),
                city: Optional("Atlanta"),
                country: Optional("United States"),
                countryCode: Optional("US"),
                latitude: Optional(45.427408),
                longitude: Optional(-75.68903),
                postalCode: Optional("30308"),
                province: Optional("Georgia"),
                provinceCode: Optional("GA")
            )),
            automations: Optional(ECommerceStoreAutomations(
                abandonedBrowse: Optional(ECommerceStoreAutomationsAbandonedBrowse(
                    id: Optional("355a72bfc3"),
                    isSupported: Optional(false),
                    status: Optional(ECommerceStoreAutomationsAbandonedBrowseStatus.save)
                )),
                abandonedCart: Optional(ECommerceStoreAutomationsAbandonedCart(
                    id: Optional("355a72bfc3"),
                    isSupported: Optional(false),
                    status: Optional(ECommerceStoreAutomationsAbandonedCartStatus.save)
                ))
            )),
            connectedSite: Optional(ECommerceStoreConnectedSite(
                siteForeignId: Optional("a180c384d7db88b if created in-app, MC001 if created via API"),
                siteScript: Optional(ECommerceStoreConnectedSiteSiteScript(
                    fragment: Optional("<script id=\"mcjs\">!function(c,h,i,m,p){m=c.createElement(h),p=c.getElementsByTagName(h)[0],m.async=1,m.src=i,p.parentNode.insertBefore(m,p)}(document,\"script\",\"https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js\");</script>"),
                    url: Optional("https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js")
                ))
            )),
            createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
            currencyCode: Optional("USD"),
            domain: Optional("example.com"),
            emailAddress: Optional("freddie@mailchimp.com"),
            id: Optional("example_store"),
            isSyncing: Optional(true),
            listId: Optional("1a2df69511"),
            listIsActive: Optional(true),
            moneyFormat: Optional("$"),
            name: Optional("Freddie's Cat Hat Emporium"),
            phone: Optional("+16155550128"),
            platform: Optional("platform"),
            primaryLocale: Optional("fr"),
            timezone: Optional("Eastern"),
            updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601))
        )
        let response = try await client.ecommerce.getStore(
            storeId: "store_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateStore1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "address": {
                    "address1": "675 Ponce de Leon Ave NE",
                    "address2": "Suite 5000",
                    "city": "Atlanta",
                    "country": "United States",
                    "country_code": "US",
                    "latitude": 45.427408,
                    "longitude": -75.68903,
                    "postal_code": "30308",
                    "province": "Georgia",
                    "province_code": "GA"
                  },
                  "automations": {
                    "abandoned_browse": {
                      "id": "355a72bfc3",
                      "is_supported": false,
                      "status": "save"
                    },
                    "abandoned_cart": {
                      "id": "355a72bfc3",
                      "is_supported": false,
                      "status": "save"
                    }
                  },
                  "connected_site": {
                    "site_foreign_id": "a180c384d7db88b if created in-app, MC001 if created via API",
                    "site_script": {
                      "fragment": "<script id=\"mcjs\">!function(c,h,i,m,p){m=c.createElement(h),p=c.getElementsByTagName(h)[0],m.async=1,m.src=i,p.parentNode.insertBefore(m,p)}(document,\"script\",\"https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js\");</script>",
                      "url": "https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js"
                    }
                  },
                  "created_at": "2015-07-15T19:28:00Z",
                  "currency_code": "USD",
                  "domain": "example.com",
                  "email_address": "freddie@mailchimp.com",
                  "id": "example_store",
                  "is_syncing": true,
                  "list_id": "1a2df69511",
                  "list_is_active": true,
                  "money_format": "$",
                  "name": "Freddie's Cat Hat Emporium",
                  "phone": "+16155550128",
                  "platform": "platform",
                  "primary_locale": "fr",
                  "timezone": "Eastern",
                  "updated_at": "2015-07-15T19:28:00Z"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommerceStore(
            links: Optional([
                ECommerceStoreLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommerceStoreLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            address: Optional(ECommerceStoreAddress(
                address1: Optional("675 Ponce de Leon Ave NE"),
                address2: Optional("Suite 5000"),
                city: Optional("Atlanta"),
                country: Optional("United States"),
                countryCode: Optional("US"),
                latitude: Optional(45.427408),
                longitude: Optional(-75.68903),
                postalCode: Optional("30308"),
                province: Optional("Georgia"),
                provinceCode: Optional("GA")
            )),
            automations: Optional(ECommerceStoreAutomations(
                abandonedBrowse: Optional(ECommerceStoreAutomationsAbandonedBrowse(
                    id: Optional("355a72bfc3"),
                    isSupported: Optional(false),
                    status: Optional(ECommerceStoreAutomationsAbandonedBrowseStatus.save)
                )),
                abandonedCart: Optional(ECommerceStoreAutomationsAbandonedCart(
                    id: Optional("355a72bfc3"),
                    isSupported: Optional(false),
                    status: Optional(ECommerceStoreAutomationsAbandonedCartStatus.save)
                ))
            )),
            connectedSite: Optional(ECommerceStoreConnectedSite(
                siteForeignId: Optional("a180c384d7db88b if created in-app, MC001 if created via API"),
                siteScript: Optional(ECommerceStoreConnectedSiteSiteScript(
                    fragment: Optional("<script id=\"mcjs\">!function(c,h,i,m,p){m=c.createElement(h),p=c.getElementsByTagName(h)[0],m.async=1,m.src=i,p.parentNode.insertBefore(m,p)}(document,\"script\",\"https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js\");</script>"),
                    url: Optional("https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js")
                ))
            )),
            createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
            currencyCode: Optional("USD"),
            domain: Optional("example.com"),
            emailAddress: Optional("freddie@mailchimp.com"),
            id: Optional("example_store"),
            isSyncing: Optional(true),
            listId: Optional("1a2df69511"),
            listIsActive: Optional(true),
            moneyFormat: Optional("$"),
            name: Optional("Freddie's Cat Hat Emporium"),
            phone: Optional("+16155550128"),
            platform: Optional("platform"),
            primaryLocale: Optional("fr"),
            timezone: Optional("Eastern"),
            updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601))
        )
        let response = try await client.ecommerce.updateStore(
            storeId: "store_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listStoreCarts1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "carts": [
                    {
                      "_links": [
                        {}
                      ],
                      "campaign_id": "839488a60b",
                      "checkout_url": "checkout_url",
                      "created_at": "2015-07-15T19:28:00Z",
                      "currency_code": "currency_code",
                      "customer": {
                        "address": {
                          "address1": "675 Ponce de Leon Ave NE",
                          "address2": "Suite 5000",
                          "city": "Atlanta",
                          "country": "United States",
                          "country_code": "US",
                          "postal_code": "30308",
                          "province": "Georgia",
                          "province_code": "GA"
                        },
                        "created_at": "2015-07-15T19:28:00Z",
                        "orders_count": 4,
                        "updated_at": "2015-07-15T19:28:00Z"
                      },
                      "id": "id",
                      "lines": [
                        {}
                      ],
                      "order_total": 1.1,
                      "tax_total": 1.1,
                      "updated_at": "2015-07-15T19:28:00Z"
                    }
                  ],
                  "store_id": "store_id",
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListStoreCartsEcommerceResponse(
            links: Optional([
                ListStoreCartsEcommerceResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListStoreCartsEcommerceResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            carts: Optional([
                ECommerceCart(
                    links: Optional([
                        ECommerceCartLinksItem(

                        )
                    ]),
                    campaignId: Optional("839488a60b"),
                    checkoutUrl: Optional("checkout_url"),
                    createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
                    currencyCode: Optional("currency_code"),
                    customer: Optional(ECommerceCustomer(
                        address: Optional(ECommerceCustomerAddress(
                            address1: Optional("675 Ponce de Leon Ave NE"),
                            address2: Optional("Suite 5000"),
                            city: Optional("Atlanta"),
                            country: Optional("United States"),
                            countryCode: Optional("US"),
                            postalCode: Optional("30308"),
                            province: Optional("Georgia"),
                            provinceCode: Optional("GA")
                        )),
                        createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
                        ordersCount: Optional(4),
                        updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601))
                    )),
                    id: Optional("id"),
                    lines: Optional([
                        ECommerceCartLineItem(

                        )
                    ]),
                    orderTotal: Optional(1.1),
                    taxTotal: Optional(1.1),
                    updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601))
                )
            ]),
            storeId: Optional("store_id"),
            totalItems: Optional(1)
        )
        let response = try await client.ecommerce.listStoreCarts(
            storeId: "store_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createStoreCart1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "campaign_id": "839488a60b",
                  "checkout_url": "checkout_url",
                  "created_at": "2015-07-15T19:28:00Z",
                  "currency_code": "currency_code",
                  "customer": {
                    "_links": [
                      {}
                    ],
                    "address": {
                      "address1": "675 Ponce de Leon Ave NE",
                      "address2": "Suite 5000",
                      "city": "Atlanta",
                      "country": "United States",
                      "country_code": "US",
                      "postal_code": "30308",
                      "province": "Georgia",
                      "province_code": "GA"
                    },
                    "company": "company",
                    "created_at": "2015-07-15T19:28:00Z",
                    "email_address": "email_address",
                    "first_name": "first_name",
                    "id": "id",
                    "last_name": "last_name",
                    "opt_in_status": true,
                    "orders_count": 4,
                    "sms_phone_number": "sms_phone_number",
                    "total_spent": 1.1,
                    "updated_at": "2015-07-15T19:28:00Z"
                  },
                  "id": "id",
                  "lines": [
                    {
                      "_links": [
                        {}
                      ],
                      "id": "id",
                      "price": 1.1,
                      "product_id": "product_id",
                      "product_title": "product_title",
                      "product_variant_id": "product_variant_id",
                      "product_variant_title": "product_variant_title",
                      "quantity": 1
                    }
                  ],
                  "order_total": 1.1,
                  "tax_total": 1.1,
                  "updated_at": "2015-07-15T19:28:00Z"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommerceCart(
            links: Optional([
                ECommerceCartLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommerceCartLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            campaignId: Optional("839488a60b"),
            checkoutUrl: Optional("checkout_url"),
            createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
            currencyCode: Optional("currency_code"),
            customer: Optional(ECommerceCustomer(
                links: Optional([
                    ECommerceCustomerLinksItem(

                    )
                ]),
                address: Optional(ECommerceCustomerAddress(
                    address1: Optional("675 Ponce de Leon Ave NE"),
                    address2: Optional("Suite 5000"),
                    city: Optional("Atlanta"),
                    country: Optional("United States"),
                    countryCode: Optional("US"),
                    postalCode: Optional("30308"),
                    province: Optional("Georgia"),
                    provinceCode: Optional("GA")
                )),
                company: Optional("company"),
                createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
                emailAddress: Optional("email_address"),
                firstName: Optional("first_name"),
                id: Optional("id"),
                lastName: Optional("last_name"),
                optInStatus: Optional(true),
                ordersCount: Optional(4),
                smsPhoneNumber: Optional("sms_phone_number"),
                totalSpent: Optional(ECommerceCustomerTotalSpent.double(
                    1.1
                )),
                updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601))
            )),
            id: Optional("id"),
            lines: Optional([
                ECommerceCartLineItem(
                    links: Optional([
                        ECommerceCartLineItemLinksItem(

                        )
                    ]),
                    id: Optional("id"),
                    price: Optional(1.1),
                    productId: Optional("product_id"),
                    productTitle: Optional("product_title"),
                    productVariantId: Optional("product_variant_id"),
                    productVariantTitle: Optional("product_variant_title"),
                    quantity: Optional(1)
                )
            ]),
            orderTotal: Optional(1.1),
            taxTotal: Optional(1.1),
            updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601))
        )
        let response = try await client.ecommerce.createStoreCart(
            storeId: "store_id",
            request: .init(
                currencyCode: "currency_code",
                customer: EcommerceStoresCartsPost(
                    id: "id"
                ),
                id: CreateStoreCartEcommerceRequestId.string(
                    "id"
                ),
                lines: [
                    CreateStoreCartEcommerceRequestLinesItem(
                        id: "id",
                        price: CreateStoreCartEcommerceRequestLinesItemPrice.double(
                            1.1
                        ),
                        productId: "product_id",
                        productVariantId: "product_variant_id",
                        quantity: 1
                    )
                ],
                orderTotal: CreateStoreCartEcommerceRequestOrderTotal.double(
                    1.1
                )
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getStoreCart1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "campaign_id": "839488a60b",
                  "checkout_url": "checkout_url",
                  "created_at": "2015-07-15T19:28:00Z",
                  "currency_code": "currency_code",
                  "customer": {
                    "_links": [
                      {}
                    ],
                    "address": {
                      "address1": "675 Ponce de Leon Ave NE",
                      "address2": "Suite 5000",
                      "city": "Atlanta",
                      "country": "United States",
                      "country_code": "US",
                      "postal_code": "30308",
                      "province": "Georgia",
                      "province_code": "GA"
                    },
                    "company": "company",
                    "created_at": "2015-07-15T19:28:00Z",
                    "email_address": "email_address",
                    "first_name": "first_name",
                    "id": "id",
                    "last_name": "last_name",
                    "opt_in_status": true,
                    "orders_count": 4,
                    "sms_phone_number": "sms_phone_number",
                    "total_spent": 1.1,
                    "updated_at": "2015-07-15T19:28:00Z"
                  },
                  "id": "id",
                  "lines": [
                    {
                      "_links": [
                        {}
                      ],
                      "id": "id",
                      "price": 1.1,
                      "product_id": "product_id",
                      "product_title": "product_title",
                      "product_variant_id": "product_variant_id",
                      "product_variant_title": "product_variant_title",
                      "quantity": 1
                    }
                  ],
                  "order_total": 1.1,
                  "tax_total": 1.1,
                  "updated_at": "2015-07-15T19:28:00Z"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommerceCart(
            links: Optional([
                ECommerceCartLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommerceCartLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            campaignId: Optional("839488a60b"),
            checkoutUrl: Optional("checkout_url"),
            createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
            currencyCode: Optional("currency_code"),
            customer: Optional(ECommerceCustomer(
                links: Optional([
                    ECommerceCustomerLinksItem(

                    )
                ]),
                address: Optional(ECommerceCustomerAddress(
                    address1: Optional("675 Ponce de Leon Ave NE"),
                    address2: Optional("Suite 5000"),
                    city: Optional("Atlanta"),
                    country: Optional("United States"),
                    countryCode: Optional("US"),
                    postalCode: Optional("30308"),
                    province: Optional("Georgia"),
                    provinceCode: Optional("GA")
                )),
                company: Optional("company"),
                createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
                emailAddress: Optional("email_address"),
                firstName: Optional("first_name"),
                id: Optional("id"),
                lastName: Optional("last_name"),
                optInStatus: Optional(true),
                ordersCount: Optional(4),
                smsPhoneNumber: Optional("sms_phone_number"),
                totalSpent: Optional(ECommerceCustomerTotalSpent.double(
                    1.1
                )),
                updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601))
            )),
            id: Optional("id"),
            lines: Optional([
                ECommerceCartLineItem(
                    links: Optional([
                        ECommerceCartLineItemLinksItem(

                        )
                    ]),
                    id: Optional("id"),
                    price: Optional(1.1),
                    productId: Optional("product_id"),
                    productTitle: Optional("product_title"),
                    productVariantId: Optional("product_variant_id"),
                    productVariantTitle: Optional("product_variant_title"),
                    quantity: Optional(1)
                )
            ]),
            orderTotal: Optional(1.1),
            taxTotal: Optional(1.1),
            updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601))
        )
        let response = try await client.ecommerce.getStoreCart(
            storeId: "store_id",
            cartId: "cart_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateStoreCart1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "campaign_id": "839488a60b",
                  "checkout_url": "checkout_url",
                  "created_at": "2015-07-15T19:28:00Z",
                  "currency_code": "currency_code",
                  "customer": {
                    "_links": [
                      {}
                    ],
                    "address": {
                      "address1": "675 Ponce de Leon Ave NE",
                      "address2": "Suite 5000",
                      "city": "Atlanta",
                      "country": "United States",
                      "country_code": "US",
                      "postal_code": "30308",
                      "province": "Georgia",
                      "province_code": "GA"
                    },
                    "company": "company",
                    "created_at": "2015-07-15T19:28:00Z",
                    "email_address": "email_address",
                    "first_name": "first_name",
                    "id": "id",
                    "last_name": "last_name",
                    "opt_in_status": true,
                    "orders_count": 4,
                    "sms_phone_number": "sms_phone_number",
                    "total_spent": 1.1,
                    "updated_at": "2015-07-15T19:28:00Z"
                  },
                  "id": "id",
                  "lines": [
                    {
                      "_links": [
                        {}
                      ],
                      "id": "id",
                      "price": 1.1,
                      "product_id": "product_id",
                      "product_title": "product_title",
                      "product_variant_id": "product_variant_id",
                      "product_variant_title": "product_variant_title",
                      "quantity": 1
                    }
                  ],
                  "order_total": 1.1,
                  "tax_total": 1.1,
                  "updated_at": "2015-07-15T19:28:00Z"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommerceCart(
            links: Optional([
                ECommerceCartLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommerceCartLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            campaignId: Optional("839488a60b"),
            checkoutUrl: Optional("checkout_url"),
            createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
            currencyCode: Optional("currency_code"),
            customer: Optional(ECommerceCustomer(
                links: Optional([
                    ECommerceCustomerLinksItem(

                    )
                ]),
                address: Optional(ECommerceCustomerAddress(
                    address1: Optional("675 Ponce de Leon Ave NE"),
                    address2: Optional("Suite 5000"),
                    city: Optional("Atlanta"),
                    country: Optional("United States"),
                    countryCode: Optional("US"),
                    postalCode: Optional("30308"),
                    province: Optional("Georgia"),
                    provinceCode: Optional("GA")
                )),
                company: Optional("company"),
                createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
                emailAddress: Optional("email_address"),
                firstName: Optional("first_name"),
                id: Optional("id"),
                lastName: Optional("last_name"),
                optInStatus: Optional(true),
                ordersCount: Optional(4),
                smsPhoneNumber: Optional("sms_phone_number"),
                totalSpent: Optional(ECommerceCustomerTotalSpent.double(
                    1.1
                )),
                updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601))
            )),
            id: Optional("id"),
            lines: Optional([
                ECommerceCartLineItem(
                    links: Optional([
                        ECommerceCartLineItemLinksItem(

                        )
                    ]),
                    id: Optional("id"),
                    price: Optional(1.1),
                    productId: Optional("product_id"),
                    productTitle: Optional("product_title"),
                    productVariantId: Optional("product_variant_id"),
                    productVariantTitle: Optional("product_variant_title"),
                    quantity: Optional(1)
                )
            ]),
            orderTotal: Optional(1.1),
            taxTotal: Optional(1.1),
            updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601))
        )
        let response = try await client.ecommerce.updateStoreCart(
            storeId: "store_id",
            cartId: "cart_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listStoreCartLines1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "cart_id": "cart_id",
                  "lines": [
                    {
                      "_links": [
                        {}
                      ],
                      "id": "id",
                      "price": 1.1,
                      "product_id": "product_id",
                      "product_title": "product_title",
                      "product_variant_id": "product_variant_id",
                      "product_variant_title": "product_variant_title",
                      "quantity": 1
                    }
                  ],
                  "store_id": "store_id",
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListStoreCartLinesEcommerceResponse(
            links: Optional([
                ListStoreCartLinesEcommerceResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListStoreCartLinesEcommerceResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            cartId: Optional("cart_id"),
            lines: Optional([
                ECommerceCartLineItem(
                    links: Optional([
                        ECommerceCartLineItemLinksItem(

                        )
                    ]),
                    id: Optional("id"),
                    price: Optional(1.1),
                    productId: Optional("product_id"),
                    productTitle: Optional("product_title"),
                    productVariantId: Optional("product_variant_id"),
                    productVariantTitle: Optional("product_variant_title"),
                    quantity: Optional(1)
                )
            ]),
            storeId: Optional("store_id"),
            totalItems: Optional(1)
        )
        let response = try await client.ecommerce.listStoreCartLines(
            storeId: "store_id",
            cartId: "cart_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createStoreCartLine1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "id": "id",
                  "price": 1.1,
                  "product_id": "product_id",
                  "product_title": "product_title",
                  "product_variant_id": "product_variant_id",
                  "product_variant_title": "product_variant_title",
                  "quantity": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommerceCartLineItem(
            links: Optional([
                ECommerceCartLineItemLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommerceCartLineItemLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            id: Optional("id"),
            price: Optional(1.1),
            productId: Optional("product_id"),
            productTitle: Optional("product_title"),
            productVariantId: Optional("product_variant_id"),
            productVariantTitle: Optional("product_variant_title"),
            quantity: Optional(1)
        )
        let response = try await client.ecommerce.createStoreCartLine(
            storeId: "store_id",
            cartId: "cart_id",
            request: .init(
                id: "id",
                price: CreateStoreCartLineEcommerceRequestPrice.double(
                    1.1
                ),
                productId: "product_id",
                productVariantId: "product_variant_id",
                quantity: 1
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getStoreCartLine1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "id": "id",
                  "price": 1.1,
                  "product_id": "product_id",
                  "product_title": "product_title",
                  "product_variant_id": "product_variant_id",
                  "product_variant_title": "product_variant_title",
                  "quantity": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommerceCartLineItem(
            links: Optional([
                ECommerceCartLineItemLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommerceCartLineItemLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            id: Optional("id"),
            price: Optional(1.1),
            productId: Optional("product_id"),
            productTitle: Optional("product_title"),
            productVariantId: Optional("product_variant_id"),
            productVariantTitle: Optional("product_variant_title"),
            quantity: Optional(1)
        )
        let response = try await client.ecommerce.getStoreCartLine(
            storeId: "store_id",
            cartId: "cart_id",
            lineId: "line_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateStoreCartLine1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "id": "id",
                  "price": 1.1,
                  "product_id": "product_id",
                  "product_title": "product_title",
                  "product_variant_id": "product_variant_id",
                  "product_variant_title": "product_variant_title",
                  "quantity": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommerceCartLineItem(
            links: Optional([
                ECommerceCartLineItemLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommerceCartLineItemLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            id: Optional("id"),
            price: Optional(1.1),
            productId: Optional("product_id"),
            productTitle: Optional("product_title"),
            productVariantId: Optional("product_variant_id"),
            productVariantTitle: Optional("product_variant_title"),
            quantity: Optional(1)
        )
        let response = try await client.ecommerce.updateStoreCartLine(
            storeId: "store_id",
            cartId: "cart_id",
            lineId: "line_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listStoreCustomers1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "customers": [
                    {
                      "_links": [
                        {}
                      ],
                      "address": {
                        "address1": "675 Ponce de Leon Ave NE",
                        "address2": "Suite 5000",
                        "city": "Atlanta",
                        "country": "United States",
                        "country_code": "US",
                        "postal_code": "30308",
                        "province": "Georgia",
                        "province_code": "GA"
                      },
                      "company": "company",
                      "created_at": "2015-07-15T19:28:00Z",
                      "email_address": "email_address",
                      "first_name": "first_name",
                      "id": "id",
                      "last_name": "last_name",
                      "opt_in_status": true,
                      "orders_count": 4,
                      "sms_phone_number": "sms_phone_number",
                      "total_spent": 1.1,
                      "updated_at": "2015-07-15T19:28:00Z"
                    }
                  ],
                  "store_id": "store_id",
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListStoreCustomersEcommerceResponse(
            links: Optional([
                ListStoreCustomersEcommerceResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListStoreCustomersEcommerceResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            customers: Optional([
                ECommerceCustomer(
                    links: Optional([
                        ECommerceCustomerLinksItem(

                        )
                    ]),
                    address: Optional(ECommerceCustomerAddress(
                        address1: Optional("675 Ponce de Leon Ave NE"),
                        address2: Optional("Suite 5000"),
                        city: Optional("Atlanta"),
                        country: Optional("United States"),
                        countryCode: Optional("US"),
                        postalCode: Optional("30308"),
                        province: Optional("Georgia"),
                        provinceCode: Optional("GA")
                    )),
                    company: Optional("company"),
                    createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
                    emailAddress: Optional("email_address"),
                    firstName: Optional("first_name"),
                    id: Optional("id"),
                    lastName: Optional("last_name"),
                    optInStatus: Optional(true),
                    ordersCount: Optional(4),
                    smsPhoneNumber: Optional("sms_phone_number"),
                    totalSpent: Optional(ECommerceCustomerTotalSpent.double(
                        1.1
                    )),
                    updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601))
                )
            ]),
            storeId: Optional("store_id"),
            totalItems: Optional(1)
        )
        let response = try await client.ecommerce.listStoreCustomers(
            storeId: "store_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createStoreCustomer1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "address": {
                    "address1": "675 Ponce de Leon Ave NE",
                    "address2": "Suite 5000",
                    "city": "Atlanta",
                    "country": "United States",
                    "country_code": "US",
                    "postal_code": "30308",
                    "province": "Georgia",
                    "province_code": "GA"
                  },
                  "company": "company",
                  "created_at": "2015-07-15T19:28:00Z",
                  "email_address": "email_address",
                  "first_name": "first_name",
                  "id": "id",
                  "last_name": "last_name",
                  "opt_in_status": true,
                  "orders_count": 4,
                  "sms_phone_number": "sms_phone_number",
                  "total_spent": 1.1,
                  "updated_at": "2015-07-15T19:28:00Z"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommerceCustomer(
            links: Optional([
                ECommerceCustomerLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommerceCustomerLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            address: Optional(ECommerceCustomerAddress(
                address1: Optional("675 Ponce de Leon Ave NE"),
                address2: Optional("Suite 5000"),
                city: Optional("Atlanta"),
                country: Optional("United States"),
                countryCode: Optional("US"),
                postalCode: Optional("30308"),
                province: Optional("Georgia"),
                provinceCode: Optional("GA")
            )),
            company: Optional("company"),
            createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
            emailAddress: Optional("email_address"),
            firstName: Optional("first_name"),
            id: Optional("id"),
            lastName: Optional("last_name"),
            optInStatus: Optional(true),
            ordersCount: Optional(4),
            smsPhoneNumber: Optional("sms_phone_number"),
            totalSpent: Optional(ECommerceCustomerTotalSpent.double(
                1.1
            )),
            updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601))
        )
        let response = try await client.ecommerce.createStoreCustomer(
            storeId: "store_id",
            request: .init(
                id: "id",
                optInStatus: true
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getStoreCustomer1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "address": {
                    "address1": "675 Ponce de Leon Ave NE",
                    "address2": "Suite 5000",
                    "city": "Atlanta",
                    "country": "United States",
                    "country_code": "US",
                    "postal_code": "30308",
                    "province": "Georgia",
                    "province_code": "GA"
                  },
                  "company": "company",
                  "created_at": "2015-07-15T19:28:00Z",
                  "email_address": "email_address",
                  "first_name": "first_name",
                  "id": "id",
                  "last_name": "last_name",
                  "opt_in_status": true,
                  "orders_count": 4,
                  "sms_phone_number": "sms_phone_number",
                  "total_spent": 1.1,
                  "updated_at": "2015-07-15T19:28:00Z"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommerceCustomer(
            links: Optional([
                ECommerceCustomerLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommerceCustomerLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            address: Optional(ECommerceCustomerAddress(
                address1: Optional("675 Ponce de Leon Ave NE"),
                address2: Optional("Suite 5000"),
                city: Optional("Atlanta"),
                country: Optional("United States"),
                countryCode: Optional("US"),
                postalCode: Optional("30308"),
                province: Optional("Georgia"),
                provinceCode: Optional("GA")
            )),
            company: Optional("company"),
            createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
            emailAddress: Optional("email_address"),
            firstName: Optional("first_name"),
            id: Optional("id"),
            lastName: Optional("last_name"),
            optInStatus: Optional(true),
            ordersCount: Optional(4),
            smsPhoneNumber: Optional("sms_phone_number"),
            totalSpent: Optional(ECommerceCustomerTotalSpent.double(
                1.1
            )),
            updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601))
        )
        let response = try await client.ecommerce.getStoreCustomer(
            storeId: "store_id",
            customerId: "customer_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func upsertStoreCustomer1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "address": {
                    "address1": "675 Ponce de Leon Ave NE",
                    "address2": "Suite 5000",
                    "city": "Atlanta",
                    "country": "United States",
                    "country_code": "US",
                    "postal_code": "30308",
                    "province": "Georgia",
                    "province_code": "GA"
                  },
                  "company": "company",
                  "created_at": "2015-07-15T19:28:00Z",
                  "email_address": "email_address",
                  "first_name": "first_name",
                  "id": "id",
                  "last_name": "last_name",
                  "opt_in_status": true,
                  "orders_count": 4,
                  "sms_phone_number": "sms_phone_number",
                  "total_spent": 1.1,
                  "updated_at": "2015-07-15T19:28:00Z"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommerceCustomer(
            links: Optional([
                ECommerceCustomerLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommerceCustomerLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            address: Optional(ECommerceCustomerAddress(
                address1: Optional("675 Ponce de Leon Ave NE"),
                address2: Optional("Suite 5000"),
                city: Optional("Atlanta"),
                country: Optional("United States"),
                countryCode: Optional("US"),
                postalCode: Optional("30308"),
                province: Optional("Georgia"),
                provinceCode: Optional("GA")
            )),
            company: Optional("company"),
            createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
            emailAddress: Optional("email_address"),
            firstName: Optional("first_name"),
            id: Optional("id"),
            lastName: Optional("last_name"),
            optInStatus: Optional(true),
            ordersCount: Optional(4),
            smsPhoneNumber: Optional("sms_phone_number"),
            totalSpent: Optional(ECommerceCustomerTotalSpent.double(
                1.1
            )),
            updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601))
        )
        let response = try await client.ecommerce.upsertStoreCustomer(
            storeId: "store_id",
            customerId: "customer_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateStoreCustomer1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "address": {
                    "address1": "675 Ponce de Leon Ave NE",
                    "address2": "Suite 5000",
                    "city": "Atlanta",
                    "country": "United States",
                    "country_code": "US",
                    "postal_code": "30308",
                    "province": "Georgia",
                    "province_code": "GA"
                  },
                  "company": "company",
                  "created_at": "2015-07-15T19:28:00Z",
                  "email_address": "email_address",
                  "first_name": "first_name",
                  "id": "id",
                  "last_name": "last_name",
                  "opt_in_status": true,
                  "orders_count": 4,
                  "sms_phone_number": "sms_phone_number",
                  "total_spent": 1.1,
                  "updated_at": "2015-07-15T19:28:00Z"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommerceCustomer(
            links: Optional([
                ECommerceCustomerLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommerceCustomerLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            address: Optional(ECommerceCustomerAddress(
                address1: Optional("675 Ponce de Leon Ave NE"),
                address2: Optional("Suite 5000"),
                city: Optional("Atlanta"),
                country: Optional("United States"),
                countryCode: Optional("US"),
                postalCode: Optional("30308"),
                province: Optional("Georgia"),
                provinceCode: Optional("GA")
            )),
            company: Optional("company"),
            createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
            emailAddress: Optional("email_address"),
            firstName: Optional("first_name"),
            id: Optional("id"),
            lastName: Optional("last_name"),
            optInStatus: Optional(true),
            ordersCount: Optional(4),
            smsPhoneNumber: Optional("sms_phone_number"),
            totalSpent: Optional(ECommerceCustomerTotalSpent.double(
                1.1
            )),
            updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601))
        )
        let response = try await client.ecommerce.updateStoreCustomer(
            storeId: "store_id",
            customerId: "customer_id",
            request: EcommerceStoresCartsPatch(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listStoreOrders1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "store_id": "store_id",
                  "orders": [
                    {
                      "_links": [
                        {}
                      ],
                      "billing_address": {
                        "address1": "675 Ponce de Leon Ave NE",
                        "address2": "Suite 5000",
                        "city": "Atlanta",
                        "country": "United States",
                        "country_code": "US",
                        "latitude": 45.427408,
                        "longitude": -75.68903,
                        "name": "Freddie Chimpenheimer",
                        "phone": "8675309",
                        "postal_code": "30308",
                        "province": "Georgia",
                        "province_code": "GA"
                      },
                      "campaign_id": "839488a60b",
                      "cart_id": "cart-123",
                      "cancelled_at_foreign": "2015-07-15T19:28:00Z",
                      "currency_code": "currency_code",
                      "customer": {
                        "address": {
                          "address1": "675 Ponce de Leon Ave NE",
                          "address2": "Suite 5000",
                          "city": "Atlanta",
                          "country": "United States",
                          "country_code": "US",
                          "postal_code": "30308",
                          "province": "Georgia",
                          "province_code": "GA"
                        },
                        "created_at": "2015-07-15T19:28:00Z",
                        "orders_count": 4,
                        "updated_at": "2015-07-15T19:28:00Z"
                      },
                      "discount_total": 1.1,
                      "financial_status": "financial_status",
                      "fulfillment_status": "fulfillment_status",
                      "id": "id",
                      "landing_site": "http://www.example.com?source=abc",
                      "lines": [
                        {}
                      ],
                      "order_total": 1.1,
                      "order_url": "order_url",
                      "outreach": {
                        "id": "839488a60b",
                        "name": "Freddie's Jokes",
                        "published_time": "2017-06-06T13:56:12Z",
                        "type": "regular"
                      },
                      "processed_at_foreign": "2015-07-15T19:28:00Z",
                      "promos": [
                        {}
                      ],
                      "shipping_address": {
                        "address1": "675 Ponce de Leon Ave NE",
                        "address2": "Suite 5000",
                        "city": "Atlanta",
                        "country": "United States",
                        "country_code": "US",
                        "latitude": 45.427408,
                        "longitude": -75.68903,
                        "name": "Freddie Chimpenheimer",
                        "phone": "8675309",
                        "postal_code": "30308",
                        "province": "Georgia",
                        "province_code": "GA"
                      },
                      "shipping_total": 1.1,
                      "store_id": "store_id",
                      "tax_total": 1.1,
                      "tracking_carrier": "tracking_carrier",
                      "tracking_code": "prec",
                      "tracking_number": "tracking_number",
                      "tracking_url": "tracking_url",
                      "updated_at_foreign": "2015-07-15T19:28:00Z"
                    }
                  ],
                  "total_items": 1,
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListStoreOrdersEcommerceResponse(
            storeId: Optional("store_id"),
            orders: Optional([
                ECommerceOrder(
                    links: Optional([
                        ECommerceOrderLinksItem(

                        )
                    ]),
                    billingAddress: Optional(ECommerceOrderBillingAddress(
                        address1: Optional("675 Ponce de Leon Ave NE"),
                        address2: Optional("Suite 5000"),
                        city: Optional("Atlanta"),
                        country: Optional("United States"),
                        countryCode: Optional("US"),
                        latitude: Optional(45.427408),
                        longitude: Optional(-75.68903),
                        name: Optional("Freddie Chimpenheimer"),
                        phone: Optional("8675309"),
                        postalCode: Optional("30308"),
                        province: Optional("Georgia"),
                        provinceCode: Optional("GA")
                    )),
                    campaignId: Optional("839488a60b"),
                    cartId: Optional("cart-123"),
                    cancelledAtForeign: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
                    currencyCode: Optional("currency_code"),
                    customer: Optional(ECommerceCustomer(
                        address: Optional(ECommerceCustomerAddress(
                            address1: Optional("675 Ponce de Leon Ave NE"),
                            address2: Optional("Suite 5000"),
                            city: Optional("Atlanta"),
                            country: Optional("United States"),
                            countryCode: Optional("US"),
                            postalCode: Optional("30308"),
                            province: Optional("Georgia"),
                            provinceCode: Optional("GA")
                        )),
                        createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
                        ordersCount: Optional(4),
                        updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601))
                    )),
                    discountTotal: Optional(1.1),
                    financialStatus: Optional("financial_status"),
                    fulfillmentStatus: Optional("fulfillment_status"),
                    id: Optional("id"),
                    landingSite: Optional("http://www.example.com?source=abc"),
                    lines: Optional([
                        ECommerceOrderLineItem(

                        )
                    ]),
                    orderTotal: Optional(ECommerceOrderOrderTotal.double(
                        1.1
                    )),
                    orderUrl: Optional("order_url"),
                    outreach: Optional(ECommerceOrderOutreach(
                        id: Optional("839488a60b"),
                        name: Optional("Freddie's Jokes"),
                        publishedTime: Optional(try! Date("2017-06-06T13:56:12Z", strategy: .iso8601)),
                        type: Optional("regular")
                    )),
                    processedAtForeign: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
                    promos: Optional([
                        ECommerceOrderPromosItem(

                        )
                    ]),
                    shippingAddress: Optional(ECommerceOrderShippingAddress(
                        address1: Optional("675 Ponce de Leon Ave NE"),
                        address2: Optional("Suite 5000"),
                        city: Optional("Atlanta"),
                        country: Optional("United States"),
                        countryCode: Optional("US"),
                        latitude: Optional(45.427408),
                        longitude: Optional(-75.68903),
                        name: Optional("Freddie Chimpenheimer"),
                        phone: Optional("8675309"),
                        postalCode: Optional("30308"),
                        province: Optional("Georgia"),
                        provinceCode: Optional("GA")
                    )),
                    shippingTotal: Optional(ECommerceOrderShippingTotal.double(
                        1.1
                    )),
                    storeId: Optional("store_id"),
                    taxTotal: Optional(ECommerceOrderTaxTotal.double(
                        1.1
                    )),
                    trackingCarrier: Optional("tracking_carrier"),
                    trackingCode: Optional(ECommerceOrderTrackingCode.prec),
                    trackingNumber: Optional("tracking_number"),
                    trackingUrl: Optional("tracking_url"),
                    updatedAtForeign: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601))
                )
            ]),
            totalItems: Optional(1),
            links: Optional([
                ListStoreOrdersEcommerceResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListStoreOrdersEcommerceResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ])
        )
        let response = try await client.ecommerce.listStoreOrders(
            storeId: "store_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createStoreOrder1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "billing_address": {
                    "address1": "675 Ponce de Leon Ave NE",
                    "address2": "Suite 5000",
                    "city": "Atlanta",
                    "company": "company",
                    "country": "United States",
                    "country_code": "US",
                    "latitude": 45.427408,
                    "longitude": -75.68903,
                    "name": "Freddie Chimpenheimer",
                    "phone": "8675309",
                    "postal_code": "30308",
                    "province": "Georgia",
                    "province_code": "GA"
                  },
                  "campaign_id": "839488a60b",
                  "cart_id": "cart-123",
                  "cancelled_at_foreign": "2015-07-15T19:28:00Z",
                  "currency_code": "currency_code",
                  "customer": {
                    "_links": [
                      {}
                    ],
                    "address": {
                      "address1": "675 Ponce de Leon Ave NE",
                      "address2": "Suite 5000",
                      "city": "Atlanta",
                      "country": "United States",
                      "country_code": "US",
                      "postal_code": "30308",
                      "province": "Georgia",
                      "province_code": "GA"
                    },
                    "company": "company",
                    "created_at": "2015-07-15T19:28:00Z",
                    "email_address": "email_address",
                    "first_name": "first_name",
                    "id": "id",
                    "last_name": "last_name",
                    "opt_in_status": true,
                    "orders_count": 4,
                    "sms_phone_number": "sms_phone_number",
                    "total_spent": 1.1,
                    "updated_at": "2015-07-15T19:28:00Z"
                  },
                  "discount_total": 1.1,
                  "financial_status": "financial_status",
                  "fulfillment_status": "fulfillment_status",
                  "id": "id",
                  "landing_site": "http://www.example.com?source=abc",
                  "lines": [
                    {
                      "_links": [
                        {}
                      ],
                      "discount": 1.1,
                      "id": "id",
                      "image_url": "image_url",
                      "price": 1.1,
                      "product_id": "product_id",
                      "product_title": "product_title",
                      "product_variant_id": "product_variant_id",
                      "product_variant_title": "product_variant_title",
                      "quantity": 1
                    }
                  ],
                  "order_total": 1.1,
                  "order_url": "order_url",
                  "outreach": {
                    "id": "839488a60b",
                    "name": "Freddie's Jokes",
                    "published_time": "2017-06-06T13:56:12Z",
                    "type": "regular"
                  },
                  "processed_at_foreign": "2015-07-15T19:28:00Z",
                  "promos": [
                    {
                      "amount_discounted": 1.1,
                      "code": "code",
                      "type": "fixed"
                    }
                  ],
                  "shipping_address": {
                    "address1": "675 Ponce de Leon Ave NE",
                    "address2": "Suite 5000",
                    "city": "Atlanta",
                    "company": "company",
                    "country": "United States",
                    "country_code": "US",
                    "latitude": 45.427408,
                    "longitude": -75.68903,
                    "name": "Freddie Chimpenheimer",
                    "phone": "8675309",
                    "postal_code": "30308",
                    "province": "Georgia",
                    "province_code": "GA"
                  },
                  "shipping_total": 1.1,
                  "store_id": "store_id",
                  "tax_total": 1.1,
                  "tracking_carrier": "tracking_carrier",
                  "tracking_code": "prec",
                  "tracking_number": "tracking_number",
                  "tracking_url": "tracking_url",
                  "updated_at_foreign": "2015-07-15T19:28:00Z"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommerceOrder(
            links: Optional([
                ECommerceOrderLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommerceOrderLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            billingAddress: Optional(ECommerceOrderBillingAddress(
                address1: Optional("675 Ponce de Leon Ave NE"),
                address2: Optional("Suite 5000"),
                city: Optional("Atlanta"),
                company: Optional("company"),
                country: Optional("United States"),
                countryCode: Optional("US"),
                latitude: Optional(45.427408),
                longitude: Optional(-75.68903),
                name: Optional("Freddie Chimpenheimer"),
                phone: Optional("8675309"),
                postalCode: Optional("30308"),
                province: Optional("Georgia"),
                provinceCode: Optional("GA")
            )),
            campaignId: Optional("839488a60b"),
            cartId: Optional("cart-123"),
            cancelledAtForeign: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
            currencyCode: Optional("currency_code"),
            customer: Optional(ECommerceCustomer(
                links: Optional([
                    ECommerceCustomerLinksItem(

                    )
                ]),
                address: Optional(ECommerceCustomerAddress(
                    address1: Optional("675 Ponce de Leon Ave NE"),
                    address2: Optional("Suite 5000"),
                    city: Optional("Atlanta"),
                    country: Optional("United States"),
                    countryCode: Optional("US"),
                    postalCode: Optional("30308"),
                    province: Optional("Georgia"),
                    provinceCode: Optional("GA")
                )),
                company: Optional("company"),
                createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
                emailAddress: Optional("email_address"),
                firstName: Optional("first_name"),
                id: Optional("id"),
                lastName: Optional("last_name"),
                optInStatus: Optional(true),
                ordersCount: Optional(4),
                smsPhoneNumber: Optional("sms_phone_number"),
                totalSpent: Optional(ECommerceCustomerTotalSpent.double(
                    1.1
                )),
                updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601))
            )),
            discountTotal: Optional(1.1),
            financialStatus: Optional("financial_status"),
            fulfillmentStatus: Optional("fulfillment_status"),
            id: Optional("id"),
            landingSite: Optional("http://www.example.com?source=abc"),
            lines: Optional([
                ECommerceOrderLineItem(
                    links: Optional([
                        ECommerceOrderLineItemLinksItem(

                        )
                    ]),
                    discount: Optional(1.1),
                    id: Optional("id"),
                    imageUrl: Optional("image_url"),
                    price: Optional(ECommerceOrderLineItemPrice.double(
                        1.1
                    )),
                    productId: Optional("product_id"),
                    productTitle: Optional("product_title"),
                    productVariantId: Optional("product_variant_id"),
                    productVariantTitle: Optional("product_variant_title"),
                    quantity: Optional(1)
                )
            ]),
            orderTotal: Optional(ECommerceOrderOrderTotal.double(
                1.1
            )),
            orderUrl: Optional("order_url"),
            outreach: Optional(ECommerceOrderOutreach(
                id: Optional("839488a60b"),
                name: Optional("Freddie's Jokes"),
                publishedTime: Optional(try! Date("2017-06-06T13:56:12Z", strategy: .iso8601)),
                type: Optional("regular")
            )),
            processedAtForeign: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
            promos: Optional([
                ECommerceOrderPromosItem(
                    amountDiscounted: Optional(1.1),
                    code: Optional("code"),
                    type: Optional(ECommerceOrderPromosItemType.fixed)
                )
            ]),
            shippingAddress: Optional(ECommerceOrderShippingAddress(
                address1: Optional("675 Ponce de Leon Ave NE"),
                address2: Optional("Suite 5000"),
                city: Optional("Atlanta"),
                company: Optional("company"),
                country: Optional("United States"),
                countryCode: Optional("US"),
                latitude: Optional(45.427408),
                longitude: Optional(-75.68903),
                name: Optional("Freddie Chimpenheimer"),
                phone: Optional("8675309"),
                postalCode: Optional("30308"),
                province: Optional("Georgia"),
                provinceCode: Optional("GA")
            )),
            shippingTotal: Optional(ECommerceOrderShippingTotal.double(
                1.1
            )),
            storeId: Optional("store_id"),
            taxTotal: Optional(ECommerceOrderTaxTotal.double(
                1.1
            )),
            trackingCarrier: Optional("tracking_carrier"),
            trackingCode: Optional(ECommerceOrderTrackingCode.prec),
            trackingNumber: Optional("tracking_number"),
            trackingUrl: Optional("tracking_url"),
            updatedAtForeign: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601))
        )
        let response = try await client.ecommerce.createStoreOrder(
            storeId: "store_id",
            request: .init(
                currencyCode: "currency_code",
                customer: EcommerceStoresCartsPost(
                    id: "id"
                ),
                id: "id",
                lines: [
                    CreateStoreOrderEcommerceRequestLinesItem(
                        id: "id",
                        price: CreateStoreOrderEcommerceRequestLinesItemPrice.double(
                            1.1
                        ),
                        productId: "product_id",
                        productVariantId: "product_variant_id",
                        quantity: 1
                    )
                ],
                orderTotal: CreateStoreOrderEcommerceRequestOrderTotal.double(
                    1.1
                )
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getStoreOrder1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "billing_address": {
                    "address1": "675 Ponce de Leon Ave NE",
                    "address2": "Suite 5000",
                    "city": "Atlanta",
                    "company": "company",
                    "country": "United States",
                    "country_code": "US",
                    "latitude": 45.427408,
                    "longitude": -75.68903,
                    "name": "Freddie Chimpenheimer",
                    "phone": "8675309",
                    "postal_code": "30308",
                    "province": "Georgia",
                    "province_code": "GA"
                  },
                  "campaign_id": "839488a60b",
                  "cart_id": "cart-123",
                  "cancelled_at_foreign": "2015-07-15T19:28:00Z",
                  "currency_code": "currency_code",
                  "customer": {
                    "_links": [
                      {}
                    ],
                    "address": {
                      "address1": "675 Ponce de Leon Ave NE",
                      "address2": "Suite 5000",
                      "city": "Atlanta",
                      "country": "United States",
                      "country_code": "US",
                      "postal_code": "30308",
                      "province": "Georgia",
                      "province_code": "GA"
                    },
                    "company": "company",
                    "created_at": "2015-07-15T19:28:00Z",
                    "email_address": "email_address",
                    "first_name": "first_name",
                    "id": "id",
                    "last_name": "last_name",
                    "opt_in_status": true,
                    "orders_count": 4,
                    "sms_phone_number": "sms_phone_number",
                    "total_spent": 1.1,
                    "updated_at": "2015-07-15T19:28:00Z"
                  },
                  "discount_total": 1.1,
                  "financial_status": "financial_status",
                  "fulfillment_status": "fulfillment_status",
                  "id": "id",
                  "landing_site": "http://www.example.com?source=abc",
                  "lines": [
                    {
                      "_links": [
                        {}
                      ],
                      "discount": 1.1,
                      "id": "id",
                      "image_url": "image_url",
                      "price": 1.1,
                      "product_id": "product_id",
                      "product_title": "product_title",
                      "product_variant_id": "product_variant_id",
                      "product_variant_title": "product_variant_title",
                      "quantity": 1
                    }
                  ],
                  "order_total": 1.1,
                  "order_url": "order_url",
                  "outreach": {
                    "id": "839488a60b",
                    "name": "Freddie's Jokes",
                    "published_time": "2017-06-06T13:56:12Z",
                    "type": "regular"
                  },
                  "processed_at_foreign": "2015-07-15T19:28:00Z",
                  "promos": [
                    {
                      "amount_discounted": 1.1,
                      "code": "code",
                      "type": "fixed"
                    }
                  ],
                  "shipping_address": {
                    "address1": "675 Ponce de Leon Ave NE",
                    "address2": "Suite 5000",
                    "city": "Atlanta",
                    "company": "company",
                    "country": "United States",
                    "country_code": "US",
                    "latitude": 45.427408,
                    "longitude": -75.68903,
                    "name": "Freddie Chimpenheimer",
                    "phone": "8675309",
                    "postal_code": "30308",
                    "province": "Georgia",
                    "province_code": "GA"
                  },
                  "shipping_total": 1.1,
                  "store_id": "store_id",
                  "tax_total": 1.1,
                  "tracking_carrier": "tracking_carrier",
                  "tracking_code": "prec",
                  "tracking_number": "tracking_number",
                  "tracking_url": "tracking_url",
                  "updated_at_foreign": "2015-07-15T19:28:00Z"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommerceOrder(
            links: Optional([
                ECommerceOrderLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommerceOrderLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            billingAddress: Optional(ECommerceOrderBillingAddress(
                address1: Optional("675 Ponce de Leon Ave NE"),
                address2: Optional("Suite 5000"),
                city: Optional("Atlanta"),
                company: Optional("company"),
                country: Optional("United States"),
                countryCode: Optional("US"),
                latitude: Optional(45.427408),
                longitude: Optional(-75.68903),
                name: Optional("Freddie Chimpenheimer"),
                phone: Optional("8675309"),
                postalCode: Optional("30308"),
                province: Optional("Georgia"),
                provinceCode: Optional("GA")
            )),
            campaignId: Optional("839488a60b"),
            cartId: Optional("cart-123"),
            cancelledAtForeign: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
            currencyCode: Optional("currency_code"),
            customer: Optional(ECommerceCustomer(
                links: Optional([
                    ECommerceCustomerLinksItem(

                    )
                ]),
                address: Optional(ECommerceCustomerAddress(
                    address1: Optional("675 Ponce de Leon Ave NE"),
                    address2: Optional("Suite 5000"),
                    city: Optional("Atlanta"),
                    country: Optional("United States"),
                    countryCode: Optional("US"),
                    postalCode: Optional("30308"),
                    province: Optional("Georgia"),
                    provinceCode: Optional("GA")
                )),
                company: Optional("company"),
                createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
                emailAddress: Optional("email_address"),
                firstName: Optional("first_name"),
                id: Optional("id"),
                lastName: Optional("last_name"),
                optInStatus: Optional(true),
                ordersCount: Optional(4),
                smsPhoneNumber: Optional("sms_phone_number"),
                totalSpent: Optional(ECommerceCustomerTotalSpent.double(
                    1.1
                )),
                updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601))
            )),
            discountTotal: Optional(1.1),
            financialStatus: Optional("financial_status"),
            fulfillmentStatus: Optional("fulfillment_status"),
            id: Optional("id"),
            landingSite: Optional("http://www.example.com?source=abc"),
            lines: Optional([
                ECommerceOrderLineItem(
                    links: Optional([
                        ECommerceOrderLineItemLinksItem(

                        )
                    ]),
                    discount: Optional(1.1),
                    id: Optional("id"),
                    imageUrl: Optional("image_url"),
                    price: Optional(ECommerceOrderLineItemPrice.double(
                        1.1
                    )),
                    productId: Optional("product_id"),
                    productTitle: Optional("product_title"),
                    productVariantId: Optional("product_variant_id"),
                    productVariantTitle: Optional("product_variant_title"),
                    quantity: Optional(1)
                )
            ]),
            orderTotal: Optional(ECommerceOrderOrderTotal.double(
                1.1
            )),
            orderUrl: Optional("order_url"),
            outreach: Optional(ECommerceOrderOutreach(
                id: Optional("839488a60b"),
                name: Optional("Freddie's Jokes"),
                publishedTime: Optional(try! Date("2017-06-06T13:56:12Z", strategy: .iso8601)),
                type: Optional("regular")
            )),
            processedAtForeign: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
            promos: Optional([
                ECommerceOrderPromosItem(
                    amountDiscounted: Optional(1.1),
                    code: Optional("code"),
                    type: Optional(ECommerceOrderPromosItemType.fixed)
                )
            ]),
            shippingAddress: Optional(ECommerceOrderShippingAddress(
                address1: Optional("675 Ponce de Leon Ave NE"),
                address2: Optional("Suite 5000"),
                city: Optional("Atlanta"),
                company: Optional("company"),
                country: Optional("United States"),
                countryCode: Optional("US"),
                latitude: Optional(45.427408),
                longitude: Optional(-75.68903),
                name: Optional("Freddie Chimpenheimer"),
                phone: Optional("8675309"),
                postalCode: Optional("30308"),
                province: Optional("Georgia"),
                provinceCode: Optional("GA")
            )),
            shippingTotal: Optional(ECommerceOrderShippingTotal.double(
                1.1
            )),
            storeId: Optional("store_id"),
            taxTotal: Optional(ECommerceOrderTaxTotal.double(
                1.1
            )),
            trackingCarrier: Optional("tracking_carrier"),
            trackingCode: Optional(ECommerceOrderTrackingCode.prec),
            trackingNumber: Optional("tracking_number"),
            trackingUrl: Optional("tracking_url"),
            updatedAtForeign: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601))
        )
        let response = try await client.ecommerce.getStoreOrder(
            storeId: "store_id",
            orderId: "order_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateStoreOrder1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "billing_address": {
                    "address1": "675 Ponce de Leon Ave NE",
                    "address2": "Suite 5000",
                    "city": "Atlanta",
                    "company": "company",
                    "country": "United States",
                    "country_code": "US",
                    "latitude": 45.427408,
                    "longitude": -75.68903,
                    "name": "Freddie Chimpenheimer",
                    "phone": "8675309",
                    "postal_code": "30308",
                    "province": "Georgia",
                    "province_code": "GA"
                  },
                  "campaign_id": "839488a60b",
                  "cart_id": "cart-123",
                  "cancelled_at_foreign": "2015-07-15T19:28:00Z",
                  "currency_code": "currency_code",
                  "customer": {
                    "_links": [
                      {}
                    ],
                    "address": {
                      "address1": "675 Ponce de Leon Ave NE",
                      "address2": "Suite 5000",
                      "city": "Atlanta",
                      "country": "United States",
                      "country_code": "US",
                      "postal_code": "30308",
                      "province": "Georgia",
                      "province_code": "GA"
                    },
                    "company": "company",
                    "created_at": "2015-07-15T19:28:00Z",
                    "email_address": "email_address",
                    "first_name": "first_name",
                    "id": "id",
                    "last_name": "last_name",
                    "opt_in_status": true,
                    "orders_count": 4,
                    "sms_phone_number": "sms_phone_number",
                    "total_spent": 1.1,
                    "updated_at": "2015-07-15T19:28:00Z"
                  },
                  "discount_total": 1.1,
                  "financial_status": "financial_status",
                  "fulfillment_status": "fulfillment_status",
                  "id": "id",
                  "landing_site": "http://www.example.com?source=abc",
                  "lines": [
                    {
                      "_links": [
                        {}
                      ],
                      "discount": 1.1,
                      "id": "id",
                      "image_url": "image_url",
                      "price": 1.1,
                      "product_id": "product_id",
                      "product_title": "product_title",
                      "product_variant_id": "product_variant_id",
                      "product_variant_title": "product_variant_title",
                      "quantity": 1
                    }
                  ],
                  "order_total": 1.1,
                  "order_url": "order_url",
                  "outreach": {
                    "id": "839488a60b",
                    "name": "Freddie's Jokes",
                    "published_time": "2017-06-06T13:56:12Z",
                    "type": "regular"
                  },
                  "processed_at_foreign": "2015-07-15T19:28:00Z",
                  "promos": [
                    {
                      "amount_discounted": 1.1,
                      "code": "code",
                      "type": "fixed"
                    }
                  ],
                  "shipping_address": {
                    "address1": "675 Ponce de Leon Ave NE",
                    "address2": "Suite 5000",
                    "city": "Atlanta",
                    "company": "company",
                    "country": "United States",
                    "country_code": "US",
                    "latitude": 45.427408,
                    "longitude": -75.68903,
                    "name": "Freddie Chimpenheimer",
                    "phone": "8675309",
                    "postal_code": "30308",
                    "province": "Georgia",
                    "province_code": "GA"
                  },
                  "shipping_total": 1.1,
                  "store_id": "store_id",
                  "tax_total": 1.1,
                  "tracking_carrier": "tracking_carrier",
                  "tracking_code": "prec",
                  "tracking_number": "tracking_number",
                  "tracking_url": "tracking_url",
                  "updated_at_foreign": "2015-07-15T19:28:00Z"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommerceOrder(
            links: Optional([
                ECommerceOrderLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommerceOrderLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            billingAddress: Optional(ECommerceOrderBillingAddress(
                address1: Optional("675 Ponce de Leon Ave NE"),
                address2: Optional("Suite 5000"),
                city: Optional("Atlanta"),
                company: Optional("company"),
                country: Optional("United States"),
                countryCode: Optional("US"),
                latitude: Optional(45.427408),
                longitude: Optional(-75.68903),
                name: Optional("Freddie Chimpenheimer"),
                phone: Optional("8675309"),
                postalCode: Optional("30308"),
                province: Optional("Georgia"),
                provinceCode: Optional("GA")
            )),
            campaignId: Optional("839488a60b"),
            cartId: Optional("cart-123"),
            cancelledAtForeign: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
            currencyCode: Optional("currency_code"),
            customer: Optional(ECommerceCustomer(
                links: Optional([
                    ECommerceCustomerLinksItem(

                    )
                ]),
                address: Optional(ECommerceCustomerAddress(
                    address1: Optional("675 Ponce de Leon Ave NE"),
                    address2: Optional("Suite 5000"),
                    city: Optional("Atlanta"),
                    country: Optional("United States"),
                    countryCode: Optional("US"),
                    postalCode: Optional("30308"),
                    province: Optional("Georgia"),
                    provinceCode: Optional("GA")
                )),
                company: Optional("company"),
                createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
                emailAddress: Optional("email_address"),
                firstName: Optional("first_name"),
                id: Optional("id"),
                lastName: Optional("last_name"),
                optInStatus: Optional(true),
                ordersCount: Optional(4),
                smsPhoneNumber: Optional("sms_phone_number"),
                totalSpent: Optional(ECommerceCustomerTotalSpent.double(
                    1.1
                )),
                updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601))
            )),
            discountTotal: Optional(1.1),
            financialStatus: Optional("financial_status"),
            fulfillmentStatus: Optional("fulfillment_status"),
            id: Optional("id"),
            landingSite: Optional("http://www.example.com?source=abc"),
            lines: Optional([
                ECommerceOrderLineItem(
                    links: Optional([
                        ECommerceOrderLineItemLinksItem(

                        )
                    ]),
                    discount: Optional(1.1),
                    id: Optional("id"),
                    imageUrl: Optional("image_url"),
                    price: Optional(ECommerceOrderLineItemPrice.double(
                        1.1
                    )),
                    productId: Optional("product_id"),
                    productTitle: Optional("product_title"),
                    productVariantId: Optional("product_variant_id"),
                    productVariantTitle: Optional("product_variant_title"),
                    quantity: Optional(1)
                )
            ]),
            orderTotal: Optional(ECommerceOrderOrderTotal.double(
                1.1
            )),
            orderUrl: Optional("order_url"),
            outreach: Optional(ECommerceOrderOutreach(
                id: Optional("839488a60b"),
                name: Optional("Freddie's Jokes"),
                publishedTime: Optional(try! Date("2017-06-06T13:56:12Z", strategy: .iso8601)),
                type: Optional("regular")
            )),
            processedAtForeign: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
            promos: Optional([
                ECommerceOrderPromosItem(
                    amountDiscounted: Optional(1.1),
                    code: Optional("code"),
                    type: Optional(ECommerceOrderPromosItemType.fixed)
                )
            ]),
            shippingAddress: Optional(ECommerceOrderShippingAddress(
                address1: Optional("675 Ponce de Leon Ave NE"),
                address2: Optional("Suite 5000"),
                city: Optional("Atlanta"),
                company: Optional("company"),
                country: Optional("United States"),
                countryCode: Optional("US"),
                latitude: Optional(45.427408),
                longitude: Optional(-75.68903),
                name: Optional("Freddie Chimpenheimer"),
                phone: Optional("8675309"),
                postalCode: Optional("30308"),
                province: Optional("Georgia"),
                provinceCode: Optional("GA")
            )),
            shippingTotal: Optional(ECommerceOrderShippingTotal.double(
                1.1
            )),
            storeId: Optional("store_id"),
            taxTotal: Optional(ECommerceOrderTaxTotal.double(
                1.1
            )),
            trackingCarrier: Optional("tracking_carrier"),
            trackingCode: Optional(ECommerceOrderTrackingCode.prec),
            trackingNumber: Optional("tracking_number"),
            trackingUrl: Optional("tracking_url"),
            updatedAtForeign: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601))
        )
        let response = try await client.ecommerce.updateStoreOrder(
            storeId: "store_id",
            orderId: "order_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listStoreOrderLines1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "lines": [
                    {
                      "_links": [
                        {}
                      ],
                      "discount": 1.1,
                      "id": "id",
                      "image_url": "image_url",
                      "price": 1.1,
                      "product_id": "product_id",
                      "product_title": "product_title",
                      "product_variant_id": "product_variant_id",
                      "product_variant_title": "product_variant_title",
                      "quantity": 1
                    }
                  ],
                  "order_id": "order_id",
                  "store_id": "store_id",
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListStoreOrderLinesEcommerceResponse(
            links: Optional([
                ListStoreOrderLinesEcommerceResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListStoreOrderLinesEcommerceResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            lines: Optional([
                ECommerceOrderLineItem(
                    links: Optional([
                        ECommerceOrderLineItemLinksItem(

                        )
                    ]),
                    discount: Optional(1.1),
                    id: Optional("id"),
                    imageUrl: Optional("image_url"),
                    price: Optional(ECommerceOrderLineItemPrice.double(
                        1.1
                    )),
                    productId: Optional("product_id"),
                    productTitle: Optional("product_title"),
                    productVariantId: Optional("product_variant_id"),
                    productVariantTitle: Optional("product_variant_title"),
                    quantity: Optional(1)
                )
            ]),
            orderId: Optional("order_id"),
            storeId: Optional("store_id"),
            totalItems: Optional(1)
        )
        let response = try await client.ecommerce.listStoreOrderLines(
            storeId: "store_id",
            orderId: "order_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createStoreOrderLine1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "discount": 1.1,
                  "id": "id",
                  "image_url": "image_url",
                  "price": 1.1,
                  "product_id": "product_id",
                  "product_title": "product_title",
                  "product_variant_id": "product_variant_id",
                  "product_variant_title": "product_variant_title",
                  "quantity": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommerceOrderLineItem(
            links: Optional([
                ECommerceOrderLineItemLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommerceOrderLineItemLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            discount: Optional(1.1),
            id: Optional("id"),
            imageUrl: Optional("image_url"),
            price: Optional(ECommerceOrderLineItemPrice.double(
                1.1
            )),
            productId: Optional("product_id"),
            productTitle: Optional("product_title"),
            productVariantId: Optional("product_variant_id"),
            productVariantTitle: Optional("product_variant_title"),
            quantity: Optional(1)
        )
        let response = try await client.ecommerce.createStoreOrderLine(
            storeId: "store_id",
            orderId: "order_id",
            request: .init(
                id: "id",
                price: CreateStoreOrderLineEcommerceRequestPrice.double(
                    1.1
                ),
                productId: "product_id",
                productVariantId: "product_variant_id",
                quantity: 1
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getStoreOrderLine1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "discount": 1.1,
                  "id": "id",
                  "image_url": "image_url",
                  "price": 1.1,
                  "product_id": "product_id",
                  "product_title": "product_title",
                  "product_variant_id": "product_variant_id",
                  "product_variant_title": "product_variant_title",
                  "quantity": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommerceOrderLineItem(
            links: Optional([
                ECommerceOrderLineItemLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommerceOrderLineItemLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            discount: Optional(1.1),
            id: Optional("id"),
            imageUrl: Optional("image_url"),
            price: Optional(ECommerceOrderLineItemPrice.double(
                1.1
            )),
            productId: Optional("product_id"),
            productTitle: Optional("product_title"),
            productVariantId: Optional("product_variant_id"),
            productVariantTitle: Optional("product_variant_title"),
            quantity: Optional(1)
        )
        let response = try await client.ecommerce.getStoreOrderLine(
            storeId: "store_id",
            orderId: "order_id",
            lineId: "line_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateStoreOrderLine1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "discount": 1.1,
                  "id": "id",
                  "image_url": "image_url",
                  "price": 1.1,
                  "product_id": "product_id",
                  "product_title": "product_title",
                  "product_variant_id": "product_variant_id",
                  "product_variant_title": "product_variant_title",
                  "quantity": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommerceOrderLineItem(
            links: Optional([
                ECommerceOrderLineItemLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommerceOrderLineItemLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            discount: Optional(1.1),
            id: Optional("id"),
            imageUrl: Optional("image_url"),
            price: Optional(ECommerceOrderLineItemPrice.double(
                1.1
            )),
            productId: Optional("product_id"),
            productTitle: Optional("product_title"),
            productVariantId: Optional("product_variant_id"),
            productVariantTitle: Optional("product_variant_title"),
            quantity: Optional(1)
        )
        let response = try await client.ecommerce.updateStoreOrderLine(
            storeId: "store_id",
            orderId: "order_id",
            lineId: "line_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listStoreProducts1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "products": [
                    {
                      "_links": [
                        {}
                      ],
                      "currency_code": "currency_code",
                      "description": "This is a cat hat.",
                      "handle": "cat-hat",
                      "id": "id",
                      "image_url": "image_url",
                      "images": [
                        {}
                      ],
                      "published_at_foreign": "2015-07-15T19:28:00Z",
                      "title": "Cat Hat",
                      "type": "Accessories",
                      "url": "url",
                      "variants": [
                        {
                          "created_at": "2015-07-15T19:28:00Z",
                          "title": "Cat Hat",
                          "updated_at": "2015-07-15T19:28:00Z"
                        }
                      ],
                      "vendor": "vendor"
                    }
                  ],
                  "store_id": "store_id",
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListStoreProductsEcommerceResponse(
            links: Optional([
                ListStoreProductsEcommerceResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListStoreProductsEcommerceResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            products: Optional([
                ECommerceProduct(
                    links: Optional([
                        ECommerceProductLinksItem(

                        )
                    ]),
                    currencyCode: Optional("currency_code"),
                    description: Optional("This is a cat hat."),
                    handle: Optional("cat-hat"),
                    id: Optional("id"),
                    imageUrl: Optional("image_url"),
                    images: Optional([
                        ECommerceProductImagesItem(

                        )
                    ]),
                    publishedAtForeign: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
                    title: Optional("Cat Hat"),
                    type: Optional("Accessories"),
                    url: Optional("url"),
                    variants: Optional([
                        ECommerceProductVariant(
                            createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
                            title: Optional("Cat Hat"),
                            updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601))
                        )
                    ]),
                    vendor: Optional("vendor")
                )
            ]),
            storeId: Optional("store_id"),
            totalItems: Optional(1)
        )
        let response = try await client.ecommerce.listStoreProducts(
            storeId: "store_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createStoreProduct1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "currency_code": "currency_code",
                  "description": "This is a cat hat.",
                  "handle": "cat-hat",
                  "id": "id",
                  "image_url": "image_url",
                  "images": [
                    {
                      "_links": [
                        {}
                      ],
                      "id": "id",
                      "url": "url",
                      "variant_ids": [
                        "variant_ids"
                      ]
                    }
                  ],
                  "published_at_foreign": "2015-07-15T19:28:00Z",
                  "title": "Cat Hat",
                  "type": "Accessories",
                  "url": "url",
                  "variants": [
                    {
                      "_links": [
                        {}
                      ],
                      "backorders": "backorders",
                      "created_at": "2015-07-15T19:28:00Z",
                      "id": "id",
                      "image_url": "image_url",
                      "inventory_quantity": 1,
                      "price": 1.1,
                      "sku": "sku",
                      "title": "Cat Hat",
                      "updated_at": "2015-07-15T19:28:00Z",
                      "url": "url",
                      "visibility": "visibility"
                    }
                  ],
                  "vendor": "vendor"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommerceProduct(
            links: Optional([
                ECommerceProductLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommerceProductLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            currencyCode: Optional("currency_code"),
            description: Optional("This is a cat hat."),
            handle: Optional("cat-hat"),
            id: Optional("id"),
            imageUrl: Optional("image_url"),
            images: Optional([
                ECommerceProductImagesItem(
                    links: Optional([
                        ECommerceProductImagesItemLinksItem(

                        )
                    ]),
                    id: Optional("id"),
                    url: Optional("url"),
                    variantIds: Optional([
                        "variant_ids"
                    ])
                )
            ]),
            publishedAtForeign: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
            title: Optional("Cat Hat"),
            type: Optional("Accessories"),
            url: Optional("url"),
            variants: Optional([
                ECommerceProductVariant(
                    links: Optional([
                        ECommerceProductVariantLinksItem(

                        )
                    ]),
                    backorders: Optional("backorders"),
                    createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
                    id: Optional("id"),
                    imageUrl: Optional("image_url"),
                    inventoryQuantity: Optional(1),
                    price: Optional(1.1),
                    sku: Optional("sku"),
                    title: Optional("Cat Hat"),
                    updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
                    url: Optional("url"),
                    visibility: Optional("visibility")
                )
            ]),
            vendor: Optional("vendor")
        )
        let response = try await client.ecommerce.createStoreProduct(
            storeId: "store_id",
            request: EcommerceStoresOrdersPost(
                id: EcommerceStoresOrdersPostId.string(
                    "id"
                ),
                title: "Cat Hat",
                variants: [
                    EcommerceStoresOrdersPostVariantsItem(
                        id: EcommerceStoresOrdersPostVariantsItemId.string(
                            "id"
                        ),
                        title: "Cat Hat"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getStoreProduct1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "currency_code": "currency_code",
                  "description": "This is a cat hat.",
                  "handle": "cat-hat",
                  "id": "id",
                  "image_url": "image_url",
                  "images": [
                    {
                      "_links": [
                        {}
                      ],
                      "id": "id",
                      "url": "url",
                      "variant_ids": [
                        "variant_ids"
                      ]
                    }
                  ],
                  "published_at_foreign": "2015-07-15T19:28:00Z",
                  "title": "Cat Hat",
                  "type": "Accessories",
                  "url": "url",
                  "variants": [
                    {
                      "_links": [
                        {}
                      ],
                      "backorders": "backorders",
                      "created_at": "2015-07-15T19:28:00Z",
                      "id": "id",
                      "image_url": "image_url",
                      "inventory_quantity": 1,
                      "price": 1.1,
                      "sku": "sku",
                      "title": "Cat Hat",
                      "updated_at": "2015-07-15T19:28:00Z",
                      "url": "url",
                      "visibility": "visibility"
                    }
                  ],
                  "vendor": "vendor"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommerceProduct(
            links: Optional([
                ECommerceProductLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommerceProductLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            currencyCode: Optional("currency_code"),
            description: Optional("This is a cat hat."),
            handle: Optional("cat-hat"),
            id: Optional("id"),
            imageUrl: Optional("image_url"),
            images: Optional([
                ECommerceProductImagesItem(
                    links: Optional([
                        ECommerceProductImagesItemLinksItem(

                        )
                    ]),
                    id: Optional("id"),
                    url: Optional("url"),
                    variantIds: Optional([
                        "variant_ids"
                    ])
                )
            ]),
            publishedAtForeign: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
            title: Optional("Cat Hat"),
            type: Optional("Accessories"),
            url: Optional("url"),
            variants: Optional([
                ECommerceProductVariant(
                    links: Optional([
                        ECommerceProductVariantLinksItem(

                        )
                    ]),
                    backorders: Optional("backorders"),
                    createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
                    id: Optional("id"),
                    imageUrl: Optional("image_url"),
                    inventoryQuantity: Optional(1),
                    price: Optional(1.1),
                    sku: Optional("sku"),
                    title: Optional("Cat Hat"),
                    updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
                    url: Optional("url"),
                    visibility: Optional("visibility")
                )
            ]),
            vendor: Optional("vendor")
        )
        let response = try await client.ecommerce.getStoreProduct(
            storeId: "store_id",
            productId: "product_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func upsertStoreProduct1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "currency_code": "currency_code",
                  "description": "This is a cat hat.",
                  "handle": "cat-hat",
                  "id": "id",
                  "image_url": "image_url",
                  "images": [
                    {
                      "_links": [
                        {}
                      ],
                      "id": "id",
                      "url": "url",
                      "variant_ids": [
                        "variant_ids"
                      ]
                    }
                  ],
                  "published_at_foreign": "2015-07-15T19:28:00Z",
                  "title": "Cat Hat",
                  "type": "Accessories",
                  "url": "url",
                  "variants": [
                    {
                      "_links": [
                        {}
                      ],
                      "backorders": "backorders",
                      "created_at": "2015-07-15T19:28:00Z",
                      "id": "id",
                      "image_url": "image_url",
                      "inventory_quantity": 1,
                      "price": 1.1,
                      "sku": "sku",
                      "title": "Cat Hat",
                      "updated_at": "2015-07-15T19:28:00Z",
                      "url": "url",
                      "visibility": "visibility"
                    }
                  ],
                  "vendor": "vendor"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommerceProduct(
            links: Optional([
                ECommerceProductLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommerceProductLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            currencyCode: Optional("currency_code"),
            description: Optional("This is a cat hat."),
            handle: Optional("cat-hat"),
            id: Optional("id"),
            imageUrl: Optional("image_url"),
            images: Optional([
                ECommerceProductImagesItem(
                    links: Optional([
                        ECommerceProductImagesItemLinksItem(

                        )
                    ]),
                    id: Optional("id"),
                    url: Optional("url"),
                    variantIds: Optional([
                        "variant_ids"
                    ])
                )
            ]),
            publishedAtForeign: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
            title: Optional("Cat Hat"),
            type: Optional("Accessories"),
            url: Optional("url"),
            variants: Optional([
                ECommerceProductVariant(
                    links: Optional([
                        ECommerceProductVariantLinksItem(

                        )
                    ]),
                    backorders: Optional("backorders"),
                    createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
                    id: Optional("id"),
                    imageUrl: Optional("image_url"),
                    inventoryQuantity: Optional(1),
                    price: Optional(1.1),
                    sku: Optional("sku"),
                    title: Optional("Cat Hat"),
                    updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
                    url: Optional("url"),
                    visibility: Optional("visibility")
                )
            ]),
            vendor: Optional("vendor")
        )
        let response = try await client.ecommerce.upsertStoreProduct(
            storeId: "store_id",
            productId: "product_id",
            request: .init(id: UpsertStoreProductEcommerceRequestId.string(
                "id"
            )),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateStoreProduct1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "currency_code": "currency_code",
                  "description": "This is a cat hat.",
                  "handle": "cat-hat",
                  "id": "id",
                  "image_url": "image_url",
                  "images": [
                    {
                      "_links": [
                        {}
                      ],
                      "id": "id",
                      "url": "url",
                      "variant_ids": [
                        "variant_ids"
                      ]
                    }
                  ],
                  "published_at_foreign": "2015-07-15T19:28:00Z",
                  "title": "Cat Hat",
                  "type": "Accessories",
                  "url": "url",
                  "variants": [
                    {
                      "_links": [
                        {}
                      ],
                      "backorders": "backorders",
                      "created_at": "2015-07-15T19:28:00Z",
                      "id": "id",
                      "image_url": "image_url",
                      "inventory_quantity": 1,
                      "price": 1.1,
                      "sku": "sku",
                      "title": "Cat Hat",
                      "updated_at": "2015-07-15T19:28:00Z",
                      "url": "url",
                      "visibility": "visibility"
                    }
                  ],
                  "vendor": "vendor"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommerceProduct(
            links: Optional([
                ECommerceProductLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommerceProductLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            currencyCode: Optional("currency_code"),
            description: Optional("This is a cat hat."),
            handle: Optional("cat-hat"),
            id: Optional("id"),
            imageUrl: Optional("image_url"),
            images: Optional([
                ECommerceProductImagesItem(
                    links: Optional([
                        ECommerceProductImagesItemLinksItem(

                        )
                    ]),
                    id: Optional("id"),
                    url: Optional("url"),
                    variantIds: Optional([
                        "variant_ids"
                    ])
                )
            ]),
            publishedAtForeign: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
            title: Optional("Cat Hat"),
            type: Optional("Accessories"),
            url: Optional("url"),
            variants: Optional([
                ECommerceProductVariant(
                    links: Optional([
                        ECommerceProductVariantLinksItem(

                        )
                    ]),
                    backorders: Optional("backorders"),
                    createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
                    id: Optional("id"),
                    imageUrl: Optional("image_url"),
                    inventoryQuantity: Optional(1),
                    price: Optional(1.1),
                    sku: Optional("sku"),
                    title: Optional("Cat Hat"),
                    updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
                    url: Optional("url"),
                    visibility: Optional("visibility")
                )
            ]),
            vendor: Optional("vendor")
        )
        let response = try await client.ecommerce.updateStoreProduct(
            storeId: "store_id",
            productId: "product_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listStoreProductImages1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "images": [
                    {
                      "_links": [
                        {}
                      ],
                      "id": "id",
                      "url": "url",
                      "variant_ids": [
                        "variant_ids"
                      ]
                    }
                  ],
                  "product_id": "product_id",
                  "store_id": "store_id",
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListStoreProductImagesEcommerceResponse(
            links: Optional([
                ListStoreProductImagesEcommerceResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListStoreProductImagesEcommerceResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            images: Optional([
                ListStoreProductImagesEcommerceResponseImagesItem(
                    links: Optional([
                        ListStoreProductImagesEcommerceResponseImagesItemLinksItem(

                        )
                    ]),
                    id: Optional("id"),
                    url: Optional("url"),
                    variantIds: Optional([
                        "variant_ids"
                    ])
                )
            ]),
            productId: Optional("product_id"),
            storeId: Optional("store_id"),
            totalItems: Optional(1)
        )
        let response = try await client.ecommerce.listStoreProductImages(
            storeId: "store_id",
            productId: "product_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createStoreProductImage1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "id": "id",
                  "url": "url",
                  "variant_ids": [
                    "variant_ids"
                  ]
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CreateStoreProductImageEcommerceResponse(
            links: Optional([
                CreateStoreProductImageEcommerceResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(CreateStoreProductImageEcommerceResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            id: Optional("id"),
            url: Optional("url"),
            variantIds: Optional([
                "variant_ids"
            ])
        )
        let response = try await client.ecommerce.createStoreProductImage(
            storeId: "store_id",
            productId: "product_id",
            request: .init(
                id: "id",
                url: "url"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getStoreProductImage1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "id": "id",
                  "url": "url",
                  "variant_ids": [
                    "variant_ids"
                  ]
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = GetStoreProductImageEcommerceResponse(
            links: Optional([
                GetStoreProductImageEcommerceResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(GetStoreProductImageEcommerceResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            id: Optional("id"),
            url: Optional("url"),
            variantIds: Optional([
                "variant_ids"
            ])
        )
        let response = try await client.ecommerce.getStoreProductImage(
            storeId: "store_id",
            productId: "product_id",
            imageId: "image_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateStoreProductImage1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "id": "id",
                  "url": "url",
                  "variant_ids": [
                    "variant_ids"
                  ]
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = UpdateStoreProductImageEcommerceResponse(
            links: Optional([
                UpdateStoreProductImageEcommerceResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(UpdateStoreProductImageEcommerceResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            id: Optional("id"),
            url: Optional("url"),
            variantIds: Optional([
                "variant_ids"
            ])
        )
        let response = try await client.ecommerce.updateStoreProductImage(
            storeId: "store_id",
            productId: "product_id",
            imageId: "image_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listStoreProductVariants1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "product_id": "product_id",
                  "store_id": "store_id",
                  "total_items": 1,
                  "variants": [
                    {
                      "_links": [
                        {}
                      ],
                      "backorders": "backorders",
                      "created_at": "2015-07-15T19:28:00Z",
                      "id": "id",
                      "image_url": "image_url",
                      "inventory_quantity": 1,
                      "price": 1.1,
                      "sku": "sku",
                      "title": "Cat Hat",
                      "updated_at": "2015-07-15T19:28:00Z",
                      "url": "url",
                      "visibility": "visibility"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListStoreProductVariantsEcommerceResponse(
            links: Optional([
                ListStoreProductVariantsEcommerceResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListStoreProductVariantsEcommerceResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            productId: Optional("product_id"),
            storeId: Optional("store_id"),
            totalItems: Optional(1),
            variants: Optional([
                ECommerceProductVariant(
                    links: Optional([
                        ECommerceProductVariantLinksItem(

                        )
                    ]),
                    backorders: Optional("backorders"),
                    createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
                    id: Optional("id"),
                    imageUrl: Optional("image_url"),
                    inventoryQuantity: Optional(1),
                    price: Optional(1.1),
                    sku: Optional("sku"),
                    title: Optional("Cat Hat"),
                    updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
                    url: Optional("url"),
                    visibility: Optional("visibility")
                )
            ])
        )
        let response = try await client.ecommerce.listStoreProductVariants(
            storeId: "store_id",
            productId: "product_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createStoreProductVariant1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "backorders": "backorders",
                  "created_at": "2015-07-15T19:28:00Z",
                  "id": "id",
                  "image_url": "image_url",
                  "inventory_quantity": 1,
                  "price": 1.1,
                  "sku": "sku",
                  "title": "Cat Hat",
                  "updated_at": "2015-07-15T19:28:00Z",
                  "url": "url",
                  "visibility": "visibility"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommerceProductVariant(
            links: Optional([
                ECommerceProductVariantLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommerceProductVariantLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            backorders: Optional("backorders"),
            createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
            id: Optional("id"),
            imageUrl: Optional("image_url"),
            inventoryQuantity: Optional(1),
            price: Optional(1.1),
            sku: Optional("sku"),
            title: Optional("Cat Hat"),
            updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
            url: Optional("url"),
            visibility: Optional("visibility")
        )
        let response = try await client.ecommerce.createStoreProductVariant(
            storeId: "store_id",
            productId: "product_id",
            request: .init(
                id: CreateStoreProductVariantEcommerceRequestId.string(
                    "id"
                ),
                title: "Cat Hat"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getStoreProductVariant1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "backorders": "backorders",
                  "created_at": "2015-07-15T19:28:00Z",
                  "id": "id",
                  "image_url": "image_url",
                  "inventory_quantity": 1,
                  "price": 1.1,
                  "sku": "sku",
                  "title": "Cat Hat",
                  "updated_at": "2015-07-15T19:28:00Z",
                  "url": "url",
                  "visibility": "visibility"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommerceProductVariant(
            links: Optional([
                ECommerceProductVariantLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommerceProductVariantLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            backorders: Optional("backorders"),
            createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
            id: Optional("id"),
            imageUrl: Optional("image_url"),
            inventoryQuantity: Optional(1),
            price: Optional(1.1),
            sku: Optional("sku"),
            title: Optional("Cat Hat"),
            updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
            url: Optional("url"),
            visibility: Optional("visibility")
        )
        let response = try await client.ecommerce.getStoreProductVariant(
            storeId: "store_id",
            productId: "product_id",
            variantId: "variant_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func upsertStoreProductVariant1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "backorders": "backorders",
                  "created_at": "2015-07-15T19:28:00Z",
                  "id": "id",
                  "image_url": "image_url",
                  "inventory_quantity": 1,
                  "price": 1.1,
                  "sku": "sku",
                  "title": "Cat Hat",
                  "updated_at": "2015-07-15T19:28:00Z",
                  "url": "url",
                  "visibility": "visibility"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommerceProductVariant(
            links: Optional([
                ECommerceProductVariantLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommerceProductVariantLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            backorders: Optional("backorders"),
            createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
            id: Optional("id"),
            imageUrl: Optional("image_url"),
            inventoryQuantity: Optional(1),
            price: Optional(1.1),
            sku: Optional("sku"),
            title: Optional("Cat Hat"),
            updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
            url: Optional("url"),
            visibility: Optional("visibility")
        )
        let response = try await client.ecommerce.upsertStoreProductVariant(
            storeId: "store_id",
            productId: "product_id",
            variantId: "variant_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateStoreProductVariant1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "backorders": "backorders",
                  "created_at": "2015-07-15T19:28:00Z",
                  "id": "id",
                  "image_url": "image_url",
                  "inventory_quantity": 1,
                  "price": 1.1,
                  "sku": "sku",
                  "title": "Cat Hat",
                  "updated_at": "2015-07-15T19:28:00Z",
                  "url": "url",
                  "visibility": "visibility"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommerceProductVariant(
            links: Optional([
                ECommerceProductVariantLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommerceProductVariantLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            backorders: Optional("backorders"),
            createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
            id: Optional("id"),
            imageUrl: Optional("image_url"),
            inventoryQuantity: Optional(1),
            price: Optional(1.1),
            sku: Optional("sku"),
            title: Optional("Cat Hat"),
            updatedAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
            url: Optional("url"),
            visibility: Optional("visibility")
        )
        let response = try await client.ecommerce.updateStoreProductVariant(
            storeId: "store_id",
            productId: "product_id",
            variantId: "variant_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listStorePromoRules1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "promo_rules": [
                    {
                      "_links": [
                        {}
                      ],
                      "amount": 0.5,
                      "created_at_foreign": "2024-01-15T09:30:00Z",
                      "description": "Save BIG during our summer sale!",
                      "enabled": true,
                      "ends_at": "ends_at",
                      "id": "id",
                      "starts_at": "2024-01-15T09:30:00Z",
                      "target": "per_item",
                      "title": "50% off Total Order",
                      "type": "fixed",
                      "updated_at_foreign": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "store_id": "store_id",
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListStorePromoRulesEcommerceResponse(
            links: Optional([
                ListStorePromoRulesEcommerceResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListStorePromoRulesEcommerceResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            promoRules: Optional([
                ECommercePromoRule(
                    links: Optional([
                        ECommercePromoRuleLinksItem(

                        )
                    ]),
                    amount: Optional(0.5),
                    createdAtForeign: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    description: Optional("Save BIG during our summer sale!"),
                    enabled: Optional(true),
                    endsAt: Optional("ends_at"),
                    id: Optional("id"),
                    startsAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    target: Optional(ECommercePromoRuleTarget.perItem),
                    title: Optional("50% off Total Order"),
                    type: Optional(ECommercePromoRuleType.fixed),
                    updatedAtForeign: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ]),
            storeId: Optional("store_id"),
            totalItems: Optional(1)
        )
        let response = try await client.ecommerce.listStorePromoRules(
            storeId: "store_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createStorePromoRule1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "amount": 0.5,
                  "created_at_foreign": "2024-01-15T09:30:00Z",
                  "description": "Save BIG during our summer sale!",
                  "enabled": true,
                  "ends_at": "ends_at",
                  "id": "id",
                  "starts_at": "2024-01-15T09:30:00Z",
                  "target": "per_item",
                  "title": "50% off Total Order",
                  "type": "fixed",
                  "updated_at_foreign": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommercePromoRule(
            links: Optional([
                ECommercePromoRuleLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommercePromoRuleLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            amount: Optional(0.5),
            createdAtForeign: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            description: Optional("Save BIG during our summer sale!"),
            enabled: Optional(true),
            endsAt: Optional("ends_at"),
            id: Optional("id"),
            startsAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            target: Optional(ECommercePromoRuleTarget.perItem),
            title: Optional("50% off Total Order"),
            type: Optional(ECommercePromoRuleType.fixed),
            updatedAtForeign: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.ecommerce.createStorePromoRule(
            storeId: "store_id",
            request: .init(
                amount: CreateStorePromoRuleEcommerceRequestAmount.double(
                    1.1
                ),
                description: "Save BIG during our summer sale!",
                id: "id",
                target: .perItem,
                type: .fixed
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getStorePromoRule1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "amount": 0.5,
                  "created_at_foreign": "2024-01-15T09:30:00Z",
                  "description": "Save BIG during our summer sale!",
                  "enabled": true,
                  "ends_at": "ends_at",
                  "id": "id",
                  "starts_at": "2024-01-15T09:30:00Z",
                  "target": "per_item",
                  "title": "50% off Total Order",
                  "type": "fixed",
                  "updated_at_foreign": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommercePromoRule(
            links: Optional([
                ECommercePromoRuleLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommercePromoRuleLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            amount: Optional(0.5),
            createdAtForeign: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            description: Optional("Save BIG during our summer sale!"),
            enabled: Optional(true),
            endsAt: Optional("ends_at"),
            id: Optional("id"),
            startsAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            target: Optional(ECommercePromoRuleTarget.perItem),
            title: Optional("50% off Total Order"),
            type: Optional(ECommercePromoRuleType.fixed),
            updatedAtForeign: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.ecommerce.getStorePromoRule(
            storeId: "store_id",
            promoRuleId: "promo_rule_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateStorePromoRule1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "amount": 0.5,
                  "created_at_foreign": "2024-01-15T09:30:00Z",
                  "description": "Save BIG during our summer sale!",
                  "enabled": true,
                  "ends_at": "ends_at",
                  "id": "id",
                  "starts_at": "2024-01-15T09:30:00Z",
                  "target": "per_item",
                  "title": "50% off Total Order",
                  "type": "fixed",
                  "updated_at_foreign": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommercePromoRule(
            links: Optional([
                ECommercePromoRuleLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommercePromoRuleLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            amount: Optional(0.5),
            createdAtForeign: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            description: Optional("Save BIG during our summer sale!"),
            enabled: Optional(true),
            endsAt: Optional("ends_at"),
            id: Optional("id"),
            startsAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            target: Optional(ECommercePromoRuleTarget.perItem),
            title: Optional("50% off Total Order"),
            type: Optional(ECommercePromoRuleType.fixed),
            updatedAtForeign: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.ecommerce.updateStorePromoRule(
            storeId: "store_id",
            promoRuleId: "promo_rule_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listStorePromoRulePromoCodes1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "promo_codes": [
                    {
                      "_links": [
                        {}
                      ],
                      "code": "summersale",
                      "created_at_foreign": "2024-01-15T09:30:00Z",
                      "enabled": true,
                      "id": "id",
                      "redemption_url": "A url that applies promo code directly at checkout or a url that points to sale page or store url",
                      "updated_at_foreign": "2024-01-15T09:30:00Z",
                      "usage_count": 1
                    }
                  ],
                  "store_id": "store_id",
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListStorePromoRulePromoCodesEcommerceResponse(
            links: Optional([
                ListStorePromoRulePromoCodesEcommerceResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListStorePromoRulePromoCodesEcommerceResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            promoCodes: Optional([
                ECommercePromoCode(
                    links: Optional([
                        ECommercePromoCodeLinksItem(

                        )
                    ]),
                    code: Optional("summersale"),
                    createdAtForeign: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    enabled: Optional(true),
                    id: Optional("id"),
                    redemptionUrl: Optional("A url that applies promo code directly at checkout or a url that points to sale page or store url"),
                    updatedAtForeign: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    usageCount: Optional(1)
                )
            ]),
            storeId: Optional("store_id"),
            totalItems: Optional(1)
        )
        let response = try await client.ecommerce.listStorePromoRulePromoCodes(
            storeId: "store_id",
            promoRuleId: "promo_rule_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createStorePromoRulePromoCode1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "code": "summersale",
                  "created_at_foreign": "2024-01-15T09:30:00Z",
                  "enabled": true,
                  "id": "id",
                  "redemption_url": "A url that applies promo code directly at checkout or a url that points to sale page or store url",
                  "updated_at_foreign": "2024-01-15T09:30:00Z",
                  "usage_count": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommercePromoCode(
            links: Optional([
                ECommercePromoCodeLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommercePromoCodeLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            code: Optional("summersale"),
            createdAtForeign: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            enabled: Optional(true),
            id: Optional("id"),
            redemptionUrl: Optional("A url that applies promo code directly at checkout or a url that points to sale page or store url"),
            updatedAtForeign: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            usageCount: Optional(1)
        )
        let response = try await client.ecommerce.createStorePromoRulePromoCode(
            storeId: "store_id",
            promoRuleId: "promo_rule_id",
            request: .init(
                code: "summersale",
                id: "id",
                redemptionUrl: "A url that applies promo code directly at checkout or a url that points to sale page or store url"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getStorePromoRulePromoCode1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "code": "summersale",
                  "created_at_foreign": "2024-01-15T09:30:00Z",
                  "enabled": true,
                  "id": "id",
                  "redemption_url": "A url that applies promo code directly at checkout or a url that points to sale page or store url",
                  "updated_at_foreign": "2024-01-15T09:30:00Z",
                  "usage_count": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommercePromoCode(
            links: Optional([
                ECommercePromoCodeLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommercePromoCodeLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            code: Optional("summersale"),
            createdAtForeign: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            enabled: Optional(true),
            id: Optional("id"),
            redemptionUrl: Optional("A url that applies promo code directly at checkout or a url that points to sale page or store url"),
            updatedAtForeign: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            usageCount: Optional(1)
        )
        let response = try await client.ecommerce.getStorePromoRulePromoCode(
            storeId: "store_id",
            promoRuleId: "promo_rule_id",
            promoCodeId: "promo_code_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateStorePromoRulePromoCode1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "code": "summersale",
                  "created_at_foreign": "2024-01-15T09:30:00Z",
                  "enabled": true,
                  "id": "id",
                  "redemption_url": "A url that applies promo code directly at checkout or a url that points to sale page or store url",
                  "updated_at_foreign": "2024-01-15T09:30:00Z",
                  "usage_count": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ECommercePromoCode(
            links: Optional([
                ECommercePromoCodeLinksItem(
                    href: Optional("href"),
                    method: Optional(ECommercePromoCodeLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            code: Optional("summersale"),
            createdAtForeign: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            enabled: Optional(true),
            id: Optional("id"),
            redemptionUrl: Optional("A url that applies promo code directly at checkout or a url that points to sale page or store url"),
            updatedAtForeign: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            usageCount: Optional(1)
        )
        let response = try await client.ecommerce.updateStorePromoRulePromoCode(
            storeId: "store_id",
            promoRuleId: "promo_rule_id",
            promoCodeId: "promo_code_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}