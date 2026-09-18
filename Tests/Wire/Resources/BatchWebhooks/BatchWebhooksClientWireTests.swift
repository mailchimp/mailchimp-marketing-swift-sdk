import Foundation
import Testing
import Mailchimp

@Suite("BatchWebhooksClient Wire Tests") struct BatchWebhooksClientWireTests {
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
                  "total_items": 1,
                  "webhooks": [
                    {
                      "_links": [
                        [
                          {}
                        ]
                      ],
                      "enabled": true,
                      "id": "id",
                      "signing_enabled": true,
                      "url": "http://yourdomain.com/webhook"
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
        let expectedResponse = ListBatchWebhooksResponse(
            links: Optional([
                ListBatchWebhooksResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListBatchWebhooksResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            totalItems: Optional(1),
            webhooks: Optional([
                BatchWebhook(
                    links: Optional([
                        [
                            BatchWebhookLinksItemItem(

                            )
                        ]
                    ]),
                    enabled: Optional(true),
                    id: Optional("id"),
                    signingEnabled: Optional(true),
                    url: Optional("http://yourdomain.com/webhook")
                )
            ])
        )
        let response = try await client.batchWebhooks.list(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func create1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    [
                      {}
                    ]
                  ],
                  "enabled": true,
                  "id": "id",
                  "signing_enabled": true,
                  "url": "http://yourdomain.com/webhook",
                  "signing_secret": "zI3tsLziqBWhlz6V4PRlGg41u0gdhu7LhYXX4wa0ARM"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CreateBatchWebhooksResponse(
            links: Optional([
                [
                    BatchWebhookLinksItemItem(

                    )
                ]
            ]),
            enabled: Optional(true),
            id: Optional("id"),
            signingEnabled: Optional(true),
            url: Optional("http://yourdomain.com/webhook"),
            signingSecret: Optional("zI3tsLziqBWhlz6V4PRlGg41u0gdhu7LhYXX4wa0ARM")
        )
        let response = try await client.batchWebhooks.create(
            request: .init(url: "http://yourdomain.com/webhook"),
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
                    [
                      {}
                    ]
                  ],
                  "enabled": true,
                  "id": "id",
                  "signing_enabled": true,
                  "url": "http://yourdomain.com/webhook"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = BatchWebhook(
            links: Optional([
                [
                    BatchWebhookLinksItemItem(

                    )
                ]
            ]),
            enabled: Optional(true),
            id: Optional("id"),
            signingEnabled: Optional(true),
            url: Optional("http://yourdomain.com/webhook")
        )
        let response = try await client.batchWebhooks.get(
            batchWebhookId: "batch_webhook_id",
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
                    [
                      {}
                    ]
                  ],
                  "enabled": true,
                  "id": "id",
                  "signing_enabled": true,
                  "url": "http://yourdomain.com/webhook"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = BatchWebhook(
            links: Optional([
                [
                    BatchWebhookLinksItemItem(

                    )
                ]
            ]),
            enabled: Optional(true),
            id: Optional("id"),
            signingEnabled: Optional(true),
            url: Optional("http://yourdomain.com/webhook")
        )
        let response = try await client.batchWebhooks.update(
            batchWebhookId: "batch_webhook_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}