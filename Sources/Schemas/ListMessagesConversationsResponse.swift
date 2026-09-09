import Foundation

/// Messages from a specific conversation.
public struct ListMessagesConversationsResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListMessagesConversationsResponseLinksItem]?
    /// A string that identifies this conversation.
    public let conversationId: String?
    /// An array of objects, each representing a conversation messages resources.
    public let conversationMessages: [ConversationMessage]?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListMessagesConversationsResponseLinksItem]? = nil,
        conversationId: String? = nil,
        conversationMessages: [ConversationMessage]? = nil,
        totalItems: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.conversationId = conversationId
        self.conversationMessages = conversationMessages
        self.totalItems = totalItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListMessagesConversationsResponseLinksItem].self, forKey: .links)
        self.conversationId = try container.decodeIfPresent(String.self, forKey: .conversationId)
        self.conversationMessages = try container.decodeIfPresent([ConversationMessage].self, forKey: .conversationMessages)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.conversationId, forKey: .conversationId)
        try container.encodeIfPresent(self.conversationMessages, forKey: .conversationMessages)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case conversationId = "conversation_id"
        case conversationMessages = "conversation_messages"
        case totalItems = "total_items"
    }
}