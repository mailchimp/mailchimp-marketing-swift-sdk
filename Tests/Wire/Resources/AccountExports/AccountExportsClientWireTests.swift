import Foundation
import Testing
import Mailchimp

@Suite("AccountExportsClient Wire Tests") struct AccountExportsClientWireTests {
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
                  "exports": [
                    {
                      "_links": [
                        {}
                      ],
                      "download_url": "download_url",
                      "export_id": 1,
                      "finished": "2024-01-15T09:30:00Z",
                      "size_in_bytes": 1,
                      "started": "2024-01-15T09:30:00Z"
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
        let expectedResponse = ListAccountExportsResponse(
            links: Optional([
                ListAccountExportsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListAccountExportsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            exports: Optional([
                ListAccountExportsResponseExportsItem(
                    links: Optional([
                        ListAccountExportsResponseExportsItemLinksItem(

                        )
                    ]),
                    downloadUrl: Optional("download_url"),
                    exportId: Optional(1),
                    finished: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    sizeInBytes: Optional(1),
                    started: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.accountExports.list(requestOptions: RequestOptions(additionalHeaders: stub.headers))
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
                  "download_url": "download_url",
                  "export_id": 1,
                  "finished": "2024-01-15T09:30:00Z",
                  "size_in_bytes": 1,
                  "started": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CreateAccountExportsResponse(
            links: Optional([
                CreateAccountExportsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(CreateAccountExportsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            downloadUrl: Optional("download_url"),
            exportId: Optional(1),
            finished: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            sizeInBytes: Optional(1),
            started: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.accountExports.create(
            request: .init(includeStages: [
                .audiences,
                .galleryFiles
            ]),
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
                  "download_url": "download_url",
                  "export_id": 1,
                  "finished": "2024-01-15T09:30:00Z",
                  "size_in_bytes": 1,
                  "started": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = GetAccountExportsResponse(
            links: Optional([
                GetAccountExportsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(GetAccountExportsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            downloadUrl: Optional("download_url"),
            exportId: Optional(1),
            finished: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            sizeInBytes: Optional(1),
            started: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.accountExports.get(
            exportId: "export_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}