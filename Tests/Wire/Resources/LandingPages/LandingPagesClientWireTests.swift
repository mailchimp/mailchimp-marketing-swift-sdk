import Foundation
import Testing
import Mailchimp

@Suite("LandingPagesClient Wire Tests") struct LandingPagesClientWireTests {
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
                  "landing_pages": [
                    {
                      "_links": [
                        {}
                      ],
                      "created_at": "2024-01-15T09:30:00Z",
                      "created_by_source": "created_by_source",
                      "description": "description",
                      "id": "030092c2e1f0",
                      "list_id": "fde02ad86b",
                      "name": "name",
                      "published_at": "2024-01-15T09:30:00Z",
                      "status": "published",
                      "store_id": "store_id",
                      "template_id": 1,
                      "title": "title",
                      "unpublished_at": "2024-01-15T09:30:00Z",
                      "updated_at": "2024-01-15T09:30:00Z",
                      "url": "url",
                      "web_id": 1
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
        let expectedResponse = ListLandingPagesResponse(
            links: Optional([
                ListLandingPagesResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListLandingPagesResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            landingPages: Optional([
                LandingPage(
                    links: Optional([
                        LandingPageLinksItem(

                        )
                    ]),
                    createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    createdBySource: Optional("created_by_source"),
                    description: Optional("description"),
                    id: Optional("030092c2e1f0"),
                    listId: Optional("fde02ad86b"),
                    name: Optional("name"),
                    publishedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    status: Optional(LandingPageStatus.published),
                    storeId: Optional("store_id"),
                    templateId: Optional(1),
                    title: Optional("title"),
                    unpublishedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    updatedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    url: Optional("url"),
                    webId: Optional(1)
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.landingPages.list(requestOptions: RequestOptions(additionalHeaders: stub.headers))
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
                  "created_at": "2024-01-15T09:30:00Z",
                  "created_by_source": "created_by_source",
                  "description": "description",
                  "id": "030092c2e1f0",
                  "list_id": "fde02ad86b",
                  "name": "name",
                  "published_at": "2024-01-15T09:30:00Z",
                  "status": "published",
                  "store_id": "store_id",
                  "template_id": 1,
                  "title": "title",
                  "tracking": {
                    "enable_restricted_data_processing": true,
                    "track_with_mailchimp": true
                  },
                  "unpublished_at": "2024-01-15T09:30:00Z",
                  "updated_at": "2024-01-15T09:30:00Z",
                  "url": "url",
                  "web_id": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = LandingPage(
            links: Optional([
                LandingPageLinksItem(
                    href: Optional("href"),
                    method: Optional(LandingPageLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdBySource: Optional("created_by_source"),
            description: Optional("description"),
            id: Optional("030092c2e1f0"),
            listId: Optional("fde02ad86b"),
            name: Optional("name"),
            publishedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            status: Optional(LandingPageStatus.published),
            storeId: Optional("store_id"),
            templateId: Optional(1),
            title: Optional("title"),
            tracking: Optional(LandingPageTracking(
                enableRestrictedDataProcessing: Optional(true),
                trackWithMailchimp: Optional(true)
            )),
            unpublishedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            updatedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            url: Optional("url"),
            webId: Optional(1)
        )
        let response = try await client.landingPages.create(
            request: .init(),
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
                  "created_at": "2024-01-15T09:30:00Z",
                  "created_by_source": "created_by_source",
                  "description": "description",
                  "id": "030092c2e1f0",
                  "list_id": "fde02ad86b",
                  "name": "name",
                  "published_at": "2024-01-15T09:30:00Z",
                  "status": "published",
                  "store_id": "store_id",
                  "template_id": 1,
                  "title": "title",
                  "tracking": {
                    "enable_restricted_data_processing": true,
                    "track_with_mailchimp": true
                  },
                  "unpublished_at": "2024-01-15T09:30:00Z",
                  "updated_at": "2024-01-15T09:30:00Z",
                  "url": "url",
                  "web_id": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = LandingPage(
            links: Optional([
                LandingPageLinksItem(
                    href: Optional("href"),
                    method: Optional(LandingPageLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdBySource: Optional("created_by_source"),
            description: Optional("description"),
            id: Optional("030092c2e1f0"),
            listId: Optional("fde02ad86b"),
            name: Optional("name"),
            publishedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            status: Optional(LandingPageStatus.published),
            storeId: Optional("store_id"),
            templateId: Optional(1),
            title: Optional("title"),
            tracking: Optional(LandingPageTracking(
                enableRestrictedDataProcessing: Optional(true),
                trackWithMailchimp: Optional(true)
            )),
            unpublishedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            updatedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            url: Optional("url"),
            webId: Optional(1)
        )
        let response = try await client.landingPages.get(
            pageId: "page_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func update1() async throws -> Void {
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
                  "created_at": "2024-01-15T09:30:00Z",
                  "created_by_source": "created_by_source",
                  "description": "description",
                  "id": "030092c2e1f0",
                  "list_id": "fde02ad86b",
                  "name": "name",
                  "published_at": "2024-01-15T09:30:00Z",
                  "status": "published",
                  "store_id": "store_id",
                  "template_id": 1,
                  "title": "title",
                  "tracking": {
                    "enable_restricted_data_processing": true,
                    "track_with_mailchimp": true
                  },
                  "unpublished_at": "2024-01-15T09:30:00Z",
                  "updated_at": "2024-01-15T09:30:00Z",
                  "url": "url",
                  "web_id": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = LandingPage(
            links: Optional([
                LandingPageLinksItem(
                    href: Optional("href"),
                    method: Optional(LandingPageLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdBySource: Optional("created_by_source"),
            description: Optional("description"),
            id: Optional("030092c2e1f0"),
            listId: Optional("fde02ad86b"),
            name: Optional("name"),
            publishedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            status: Optional(LandingPageStatus.published),
            storeId: Optional("store_id"),
            templateId: Optional(1),
            title: Optional("title"),
            tracking: Optional(LandingPageTracking(
                enableRestrictedDataProcessing: Optional(true),
                trackWithMailchimp: Optional(true)
            )),
            unpublishedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            updatedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            url: Optional("url"),
            webId: Optional(1)
        )
        let response = try await client.landingPages.update(
            pageId: "page_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listContent1() async throws -> Void {
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
                  "html": "html",
                  "json": "json"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListContentLandingPagesResponse(
            links: Optional([
                ListContentLandingPagesResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListContentLandingPagesResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            html: Optional("html"),
            json: Optional("json")
        )
        let response = try await client.landingPages.listContent(
            pageId: "page_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}