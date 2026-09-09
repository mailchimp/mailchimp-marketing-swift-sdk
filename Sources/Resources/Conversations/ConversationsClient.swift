import Foundation

public final class ConversationsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Get a list of conversations for the account. Conversations has been deprecated in favor of Inbox and these endpoints don't include Inbox data. Past Conversations are still available via this endpoint, but new campaign replies and other Inbox messages aren’t available using this endpoint.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.conversations.list()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter hasUnreadMessages: Whether the conversation has any unread messages.
    /// - Parameter listId: The unique id for the list.
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func list(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, hasUnreadMessages: ListConversationsRequestHasUnreadMessages? = nil, listId: String? = nil, campaignId: String? = nil, requestOptions: RequestOptions? = nil) async throws -> ListConversationsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/conversations",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }, 
                "has_unread_messages": hasUnreadMessages.map { .string($0.rawValue) }, 
                "list_id": listId.map { .string($0) }, 
                "campaign_id": campaignId.map { .string($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListConversationsResponse.self
        )
    }

    /// Get details about an individual conversation. Conversations has been deprecated in favor of Inbox and these endpoints don't include Inbox data. Past Conversations are still available via this endpoint, but new campaign replies and other Inbox messages aren’t available using this endpoint.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.conversations.get(conversationId: "conversation_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter conversationId: The unique id for the conversation.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(conversationId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> Conversation {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/conversations/\(conversationId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: Conversation.self
        )
    }

    /// Get messages from a specific conversation. Conversations has been deprecated in favor of Inbox and these endpoints don't include Inbox data. Past Conversations are still available via this endpoint, but new campaign replies and other Inbox messages aren’t available using this endpoint.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.conversations.listMessages(conversationId: "conversation_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter conversationId: The unique id for the conversation.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter isRead: Whether a conversation message has been marked as read.
    /// - Parameter beforeTimestamp: Restrict the response to messages created before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter sinceTimestamp: Restrict the response to messages created after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listMessages(conversationId: String, fields: [String]? = nil, excludeFields: [String]? = nil, isRead: ListMessagesConversationsRequestIsRead? = nil, beforeTimestamp: Date? = nil, sinceTimestamp: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> ListMessagesConversationsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/conversations/\(conversationId)/messages",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "is_read": isRead.map { .string($0.rawValue) }, 
                "before_timestamp": beforeTimestamp.map { .date($0) }, 
                "since_timestamp": sinceTimestamp.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListMessagesConversationsResponse.self
        )
    }

    /// Get an individual message in a conversation. Conversations has been deprecated in favor of Inbox and these endpoints don't include Inbox data. Past Conversations are still available via this endpoint, but new campaign replies and other Inbox messages aren’t available using this endpoint.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.conversations.getMessage(
    ///         conversationId: "conversation_id",
    ///         messageId: "message_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter conversationId: The unique id for the conversation.
    /// - Parameter messageId: The unique id for the conversation message.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getMessage(conversationId: String, messageId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> ConversationMessage {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/conversations/\(conversationId)/messages/\(messageId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: ConversationMessage.self
        )
    }
}