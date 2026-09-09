import Foundation
import Testing
import Mailchimp

@Suite("ConversationsClient Wire Tests") struct ConversationsClientWireTests {
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
                  "conversations": [
                    {
                      "_links": [
                        {}
                      ],
                      "campaign_id": "campaign_id",
                      "from_email": "from_email",
                      "from_label": "from_label",
                      "id": "id",
                      "list_id": "list_id",
                      "message_count": 1,
                      "subject": "subject",
                      "unread_messages": 1
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
        let expectedResponse = ListConversationsResponse(
            links: Optional([
                ListConversationsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListConversationsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            conversations: Optional([
                Conversation(
                    links: Optional([
                        ConversationLinksItem(

                        )
                    ]),
                    campaignId: Optional("campaign_id"),
                    fromEmail: Optional("from_email"),
                    fromLabel: Optional("from_label"),
                    id: Optional("id"),
                    listId: Optional("list_id"),
                    messageCount: Optional(1),
                    subject: Optional("subject"),
                    unreadMessages: Optional(1)
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.conversations.list(requestOptions: RequestOptions(additionalHeaders: stub.headers))
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
                  "campaign_id": "campaign_id",
                  "from_email": "from_email",
                  "from_label": "from_label",
                  "id": "id",
                  "last_message": {
                    "from_email": "from_email",
                    "from_label": "from_label",
                    "message": "message",
                    "read": true,
                    "subject": "subject",
                    "timestamp": "2024-01-15T09:30:00Z"
                  },
                  "list_id": "list_id",
                  "message_count": 1,
                  "subject": "subject",
                  "unread_messages": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Conversation(
            links: Optional([
                ConversationLinksItem(
                    href: Optional("href"),
                    method: Optional(ConversationLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            campaignId: Optional("campaign_id"),
            fromEmail: Optional("from_email"),
            fromLabel: Optional("from_label"),
            id: Optional("id"),
            lastMessage: Optional(ConversationLastMessage(
                fromEmail: Optional("from_email"),
                fromLabel: Optional("from_label"),
                message: Optional("message"),
                read: Optional(true),
                subject: Optional("subject"),
                timestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
            )),
            listId: Optional("list_id"),
            messageCount: Optional(1),
            subject: Optional("subject"),
            unreadMessages: Optional(1)
        )
        let response = try await client.conversations.get(
            conversationId: "conversation_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listMessages1() async throws -> Void {
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
                  "conversation_id": "conversation_id",
                  "conversation_messages": [
                    {
                      "_links": [
                        {}
                      ],
                      "conversation_id": "conversation_id",
                      "from_email": "from_email",
                      "from_label": "from_label",
                      "id": "id",
                      "list_id": 1,
                      "message": "message",
                      "read": true,
                      "subject": "subject",
                      "timestamp": "2024-01-15T09:30:00Z"
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
        let expectedResponse = ListMessagesConversationsResponse(
            links: Optional([
                ListMessagesConversationsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListMessagesConversationsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            conversationId: Optional("conversation_id"),
            conversationMessages: Optional([
                ConversationMessage(
                    links: Optional([
                        ConversationMessageLinksItem(

                        )
                    ]),
                    conversationId: Optional("conversation_id"),
                    fromEmail: Optional("from_email"),
                    fromLabel: Optional("from_label"),
                    id: Optional("id"),
                    listId: Optional(1),
                    message: Optional("message"),
                    read: Optional(true),
                    subject: Optional("subject"),
                    timestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.conversations.listMessages(
            conversationId: "conversation_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getMessage1() async throws -> Void {
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
                  "conversation_id": "conversation_id",
                  "from_email": "from_email",
                  "from_label": "from_label",
                  "id": "id",
                  "list_id": 1,
                  "message": "message",
                  "read": true,
                  "subject": "subject",
                  "timestamp": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ConversationMessage(
            links: Optional([
                ConversationMessageLinksItem(
                    href: Optional("href"),
                    method: Optional(ConversationMessageLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            conversationId: Optional("conversation_id"),
            fromEmail: Optional("from_email"),
            fromLabel: Optional("from_label"),
            id: Optional("id"),
            listId: Optional(1),
            message: Optional("message"),
            read: Optional(true),
            subject: Optional("subject"),
            timestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.conversations.getMessage(
            conversationId: "conversation_id",
            messageId: "message_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}