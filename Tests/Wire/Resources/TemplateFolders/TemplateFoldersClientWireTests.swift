import Foundation
import Testing
import Mailchimp

@Suite("TemplateFoldersClient Wire Tests") struct TemplateFoldersClientWireTests {
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
                  "folders": [
                    {
                      "_links": [
                        {}
                      ],
                      "count": 1,
                      "id": "id",
                      "name": "name"
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
        let expectedResponse = ListTemplateFoldersResponse(
            links: Optional([
                ListTemplateFoldersResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListTemplateFoldersResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            folders: Optional([
                ListTemplateFoldersResponseFoldersItem(
                    links: Optional([
                        ListTemplateFoldersResponseFoldersItemLinksItem(

                        )
                    ]),
                    count: Optional(1),
                    id: Optional("id"),
                    name: Optional("name")
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.templateFolders.list(requestOptions: RequestOptions(additionalHeaders: stub.headers))
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
                  "count": 1,
                  "id": "id",
                  "name": "name"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CreateTemplateFoldersResponse(
            links: Optional([
                CreateTemplateFoldersResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(CreateTemplateFoldersResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            count: Optional(1),
            id: Optional("id"),
            name: Optional("name")
        )
        let response = try await client.templateFolders.create(
            request: .init(name: "name"),
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
                  "count": 1,
                  "id": "id",
                  "name": "name"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = GetTemplateFoldersResponse(
            links: Optional([
                GetTemplateFoldersResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(GetTemplateFoldersResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            count: Optional(1),
            id: Optional("id"),
            name: Optional("name")
        )
        let response = try await client.templateFolders.get(
            folderId: "folder_id",
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
                  "count": 1,
                  "id": "id",
                  "name": "name"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = UpdateTemplateFoldersResponse(
            links: Optional([
                UpdateTemplateFoldersResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(UpdateTemplateFoldersResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            count: Optional(1),
            id: Optional("id"),
            name: Optional("name")
        )
        let response = try await client.templateFolders.update(
            folderId: "folder_id",
            request: .init(name: "name"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}