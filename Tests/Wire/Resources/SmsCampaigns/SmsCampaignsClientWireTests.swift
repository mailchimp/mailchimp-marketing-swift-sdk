import Foundation
import Testing
import Mailchimp

@Suite("SmsCampaignsClient Wire Tests") struct SmsCampaignsClientWireTests {
    @Test func list1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "sms_campaigns": [
                    {
                      "id": "id",
                      "web_id": "web_id",
                      "name": "name",
                      "status": "status",
                      "channel": "channel",
                      "list_id": 1,
                      "recipient_count": 1,
                      "create_time": "2024-01-15T09:30:00Z",
                      "send_time": "2024-01-15T09:30:00Z",
                      "updated_at": "2024-01-15T09:30:00Z",
                      "expire_time": "2024-01-15T09:30:00Z",
                      "is_send_now": true,
                      "folder_id": "folder_id",
                      "segments": [
                        1
                      ],
                      "excluded_segments": [
                        1
                      ],
                      "_links": [
                        {}
                      ]
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
        let expectedResponse = ListSmsCampaignsResponse(
            smsCampaigns: Optional([
                SmsCampaign(
                    id: Optional("id"),
                    webId: Optional("web_id"),
                    name: Optional("name"),
                    status: Optional("status"),
                    channel: Optional("channel"),
                    listId: Optional(1),
                    recipientCount: Optional(1),
                    createTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    sendTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    updatedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    expireTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    isSendNow: Optional(true),
                    folderId: Optional("folder_id"),
                    segments: Optional([
                        1
                    ]),
                    excludedSegments: Optional([
                        1
                    ]),
                    links: Optional([
                        SmsCampaignLinksItem(

                        )
                    ])
                )
            ]),
            totalItems: Optional(1),
            links: Optional([
                ListSmsCampaignsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListSmsCampaignsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ])
        )
        let response = try await client.smsCampaigns.list(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func create1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "web_id": "web_id",
                  "name": "name",
                  "status": "status",
                  "channel": "channel",
                  "list_id": 1,
                  "recipient_count": 1,
                  "create_time": "2024-01-15T09:30:00Z",
                  "send_time": "2024-01-15T09:30:00Z",
                  "updated_at": "2024-01-15T09:30:00Z",
                  "expire_time": "2024-01-15T09:30:00Z",
                  "is_send_now": true,
                  "folder_id": "folder_id",
                  "segments": [
                    1
                  ],
                  "excluded_segments": [
                    1
                  ],
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
        let expectedResponse = SmsCampaign(
            id: Optional("id"),
            webId: Optional("web_id"),
            name: Optional("name"),
            status: Optional("status"),
            channel: Optional("channel"),
            listId: Optional(1),
            recipientCount: Optional(1),
            createTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            sendTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            updatedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            expireTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            isSendNow: Optional(true),
            folderId: Optional("folder_id"),
            segments: Optional([
                1
            ]),
            excludedSegments: Optional([
                1
            ]),
            links: Optional([
                SmsCampaignLinksItem(
                    href: Optional("href"),
                    method: Optional(SmsCampaignLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ])
        )
        let response = try await client.smsCampaigns.create(
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
                  "id": "id",
                  "web_id": "web_id",
                  "name": "name",
                  "status": "status",
                  "channel": "channel",
                  "list_id": 1,
                  "recipient_count": 1,
                  "create_time": "2024-01-15T09:30:00Z",
                  "send_time": "2024-01-15T09:30:00Z",
                  "updated_at": "2024-01-15T09:30:00Z",
                  "expire_time": "2024-01-15T09:30:00Z",
                  "is_send_now": true,
                  "folder_id": "folder_id",
                  "segments": [
                    1
                  ],
                  "excluded_segments": [
                    1
                  ],
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
        let expectedResponse = SmsCampaign(
            id: Optional("id"),
            webId: Optional("web_id"),
            name: Optional("name"),
            status: Optional("status"),
            channel: Optional("channel"),
            listId: Optional(1),
            recipientCount: Optional(1),
            createTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            sendTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            updatedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            expireTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            isSendNow: Optional(true),
            folderId: Optional("folder_id"),
            segments: Optional([
                1
            ]),
            excludedSegments: Optional([
                1
            ]),
            links: Optional([
                SmsCampaignLinksItem(
                    href: Optional("href"),
                    method: Optional(SmsCampaignLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ])
        )
        let response = try await client.smsCampaigns.get(
            smsCampaignId: "sms_campaign_id",
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
                  "id": "id",
                  "web_id": "web_id",
                  "name": "name",
                  "status": "status",
                  "channel": "channel",
                  "list_id": 1,
                  "recipient_count": 1,
                  "create_time": "2024-01-15T09:30:00Z",
                  "send_time": "2024-01-15T09:30:00Z",
                  "updated_at": "2024-01-15T09:30:00Z",
                  "expire_time": "2024-01-15T09:30:00Z",
                  "is_send_now": true,
                  "folder_id": "folder_id",
                  "segments": [
                    1
                  ],
                  "excluded_segments": [
                    1
                  ],
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
        let expectedResponse = SmsCampaign(
            id: Optional("id"),
            webId: Optional("web_id"),
            name: Optional("name"),
            status: Optional("status"),
            channel: Optional("channel"),
            listId: Optional(1),
            recipientCount: Optional(1),
            createTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            sendTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            updatedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            expireTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            isSendNow: Optional(true),
            folderId: Optional("folder_id"),
            segments: Optional([
                1
            ]),
            excludedSegments: Optional([
                1
            ]),
            links: Optional([
                SmsCampaignLinksItem(
                    href: Optional("href"),
                    method: Optional(SmsCampaignLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ])
        )
        let response = try await client.smsCampaigns.update(
            smsCampaignId: "sms_campaign_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getContent1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "message_body": "message_body",
                  "estimated_segments": 1,
                  "merge_fields": [
                    "merge_fields"
                  ],
                  "media": [
                    {
                      "url": "url"
                    }
                  ],
                  "source": {
                    "type": "type",
                    "id": "id"
                  },
                  "properties": {
                    "content_type": "content_type",
                    "sender": "sender",
                    "optout_message_language": "optout_message_language"
                  },
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
        let expectedResponse = SmsCampaignContent(
            messageBody: Optional("message_body"),
            estimatedSegments: Optional(1),
            mergeFields: Optional([
                "merge_fields"
            ]),
            media: Optional([
                SmsCampaignContentMediaItem(
                    url: Optional("url")
                )
            ]),
            source: Optional(SmsCampaignContentSource(
                type: Optional("type"),
                id: Optional("id")
            )),
            properties: Optional(SmsCampaignContentProperties(
                contentType: Optional("content_type"),
                sender: Optional("sender"),
                optoutMessageLanguage: Optional("optout_message_language")
            )),
            links: Optional([
                SmsCampaignContentLinksItem(
                    href: Optional("href"),
                    method: Optional(SmsCampaignContentLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ])
        )
        let response = try await client.smsCampaigns.getContent(
            smsCampaignId: "sms_campaign_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func upsertContent1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "message_body": "message_body",
                  "estimated_segments": 1,
                  "merge_fields": [
                    "merge_fields"
                  ],
                  "media": [
                    {
                      "url": "url"
                    }
                  ],
                  "source": {
                    "type": "type",
                    "id": "id"
                  },
                  "properties": {
                    "content_type": "content_type",
                    "sender": "sender",
                    "optout_message_language": "optout_message_language"
                  },
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
        let expectedResponse = SmsCampaignContent(
            messageBody: Optional("message_body"),
            estimatedSegments: Optional(1),
            mergeFields: Optional([
                "merge_fields"
            ]),
            media: Optional([
                SmsCampaignContentMediaItem(
                    url: Optional("url")
                )
            ]),
            source: Optional(SmsCampaignContentSource(
                type: Optional("type"),
                id: Optional("id")
            )),
            properties: Optional(SmsCampaignContentProperties(
                contentType: Optional("content_type"),
                sender: Optional("sender"),
                optoutMessageLanguage: Optional("optout_message_language")
            )),
            links: Optional([
                SmsCampaignContentLinksItem(
                    href: Optional("href"),
                    method: Optional(SmsCampaignContentLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ])
        )
        let response = try await client.smsCampaigns.upsertContent(
            smsCampaignId: "sms_campaign_id",
            request: .init(messageBody: "message_body"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}