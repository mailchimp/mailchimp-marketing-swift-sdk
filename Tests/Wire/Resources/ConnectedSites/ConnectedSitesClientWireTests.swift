import Foundation
import Testing
import Mailchimp

@Suite("ConnectedSitesClient Wire Tests") struct ConnectedSitesClientWireTests {
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
                  ],
                  "sites": [
                    {
                      "_links": [
                        {}
                      ],
                      "created_at": "2015-07-15T19:28:00Z",
                      "domain": "example.myshopify.com",
                      "foreign_id": "a180c384d7db88b if created in-app, MC001 if created via API",
                      "platform": "shopify, magento, bigcommerce, woocommerce",
                      "site_script": {
                        "fragment": "<script id=\"mcjs\">!function(c,h,i,m,p){m=c.createElement(h),p=c.getElementsByTagName(h)[0],m.async=1,m.src=i,p.parentNode.insertBefore(m,p)}(document,\"script\",\"https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js\");</script>",
                        "url": "https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js"
                      },
                      "store_id": "MC001",
                      "updated_at": "2015-07-15T19:35:00Z"
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
        let expectedResponse = ListConnectedSitesResponse(
            links: Optional([
                ListConnectedSitesResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListConnectedSitesResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            sites: Optional([
                ConnectedSite(
                    links: Optional([
                        ConnectedSiteLinksItem(

                        )
                    ]),
                    createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
                    domain: Optional("example.myshopify.com"),
                    foreignId: Optional("a180c384d7db88b if created in-app, MC001 if created via API"),
                    platform: Optional("shopify, magento, bigcommerce, woocommerce"),
                    siteScript: Optional(ConnectedSiteSiteScript(
                        fragment: Optional("<script id=\"mcjs\">!function(c,h,i,m,p){m=c.createElement(h),p=c.getElementsByTagName(h)[0],m.async=1,m.src=i,p.parentNode.insertBefore(m,p)}(document,\"script\",\"https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js\");</script>"),
                        url: Optional("https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js")
                    )),
                    storeId: Optional("MC001"),
                    updatedAt: Optional(try! Date("2015-07-15T19:35:00Z", strategy: .iso8601))
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.connectedSites.list(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func create1() async throws -> Void {
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
                  "created_at": "2015-07-15T19:28:00Z",
                  "domain": "example.myshopify.com",
                  "foreign_id": "a180c384d7db88b if created in-app, MC001 if created via API",
                  "platform": "shopify, magento, bigcommerce, woocommerce",
                  "site_script": {
                    "fragment": "<script id=\"mcjs\">!function(c,h,i,m,p){m=c.createElement(h),p=c.getElementsByTagName(h)[0],m.async=1,m.src=i,p.parentNode.insertBefore(m,p)}(document,\"script\",\"https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js\");</script>",
                    "url": "https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js"
                  },
                  "store_id": "MC001",
                  "updated_at": "2015-07-15T19:35:00Z"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ConnectedSite(
            links: Optional([
                ConnectedSiteLinksItem(
                    href: Optional("href"),
                    method: Optional(ConnectedSiteLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
            domain: Optional("example.myshopify.com"),
            foreignId: Optional("a180c384d7db88b if created in-app, MC001 if created via API"),
            platform: Optional("shopify, magento, bigcommerce, woocommerce"),
            siteScript: Optional(ConnectedSiteSiteScript(
                fragment: Optional("<script id=\"mcjs\">!function(c,h,i,m,p){m=c.createElement(h),p=c.getElementsByTagName(h)[0],m.async=1,m.src=i,p.parentNode.insertBefore(m,p)}(document,\"script\",\"https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js\");</script>"),
                url: Optional("https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js")
            )),
            storeId: Optional("MC001"),
            updatedAt: Optional(try! Date("2015-07-15T19:35:00Z", strategy: .iso8601))
        )
        let response = try await client.connectedSites.create(
            request: .init(
                domain: "example.com",
                foreignId: "MC001"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func get1() async throws -> Void {
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
                  "created_at": "2015-07-15T19:28:00Z",
                  "domain": "example.myshopify.com",
                  "foreign_id": "a180c384d7db88b if created in-app, MC001 if created via API",
                  "platform": "shopify, magento, bigcommerce, woocommerce",
                  "site_script": {
                    "fragment": "<script id=\"mcjs\">!function(c,h,i,m,p){m=c.createElement(h),p=c.getElementsByTagName(h)[0],m.async=1,m.src=i,p.parentNode.insertBefore(m,p)}(document,\"script\",\"https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js\");</script>",
                    "url": "https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js"
                  },
                  "store_id": "MC001",
                  "updated_at": "2015-07-15T19:35:00Z"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ConnectedSite(
            links: Optional([
                ConnectedSiteLinksItem(
                    href: Optional("href"),
                    method: Optional(ConnectedSiteLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            createdAt: Optional(try! Date("2015-07-15T19:28:00Z", strategy: .iso8601)),
            domain: Optional("example.myshopify.com"),
            foreignId: Optional("a180c384d7db88b if created in-app, MC001 if created via API"),
            platform: Optional("shopify, magento, bigcommerce, woocommerce"),
            siteScript: Optional(ConnectedSiteSiteScript(
                fragment: Optional("<script id=\"mcjs\">!function(c,h,i,m,p){m=c.createElement(h),p=c.getElementsByTagName(h)[0],m.async=1,m.src=i,p.parentNode.insertBefore(m,p)}(document,\"script\",\"https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js\");</script>"),
                url: Optional("https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js")
            )),
            storeId: Optional("MC001"),
            updatedAt: Optional(try! Date("2015-07-15T19:35:00Z", strategy: .iso8601))
        )
        let response = try await client.connectedSites.get(
            connectedSiteId: "connected_site_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}