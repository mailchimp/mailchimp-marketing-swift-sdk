import Foundation
import Testing
import Mailchimp

@Suite("AuthorizedAppsClient Wire Tests") struct AuthorizedAppsClientWireTests {
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
                  "apps": [
                    {
                      "_links": [
                        {}
                      ],
                      "description": "description",
                      "id": 1,
                      "name": "name",
                      "users": [
                        "users"
                      ]
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
        let expectedResponse = ListAuthorizedAppsResponse(
            links: Optional([
                ListAuthorizedAppsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListAuthorizedAppsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            apps: Optional([
                ListAuthorizedAppsResponseAppsItem(
                    links: Optional([
                        ListAuthorizedAppsResponseAppsItemLinksItem(

                        )
                    ]),
                    description: Optional("description"),
                    id: Optional(1),
                    name: Optional("name"),
                    users: Optional([
                        "users"
                    ])
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.authorizedApps.list(requestOptions: RequestOptions(additionalHeaders: stub.headers))
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
                  "description": "description",
                  "id": 1,
                  "name": "name",
                  "users": [
                    "users"
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
        let expectedResponse = GetAuthorizedAppsResponse(
            links: Optional([
                GetAuthorizedAppsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(GetAuthorizedAppsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            description: Optional("description"),
            id: Optional(1),
            name: Optional("name"),
            users: Optional([
                "users"
            ])
        )
        let response = try await client.authorizedApps.get(
            appId: "app_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}