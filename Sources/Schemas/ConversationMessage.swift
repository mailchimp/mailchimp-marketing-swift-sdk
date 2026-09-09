import Foundation

/// An individual message in a conversation. Conversation tracking is a feature available to paid accounts that lets you view replies to your campaigns in your Mailchimp account.
public struct ConversationMessage: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ConversationMessageLinksItem]?
    /// A string that identifies this message's conversation
    public let conversationId: String?
    /// A label representing the email of the sender of this message
    public let fromEmail: String?
    /// A label representing the sender of this message
    public let fromLabel: String?
    /// A string that uniquely identifies this message
    public let id: String?
    /// The list's web ID
    public let listId: Int?
    /// The plain-text content of the message
    public let message: String?
    /// Whether this message has been marked as read
    public let read: Bool?
    /// The subject of this message
    public let subject: String?
    /// The date and time the message was either sent or received in ISO 8601 format.
    public let timestamp: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ConversationMessageLinksItem]? = nil,
        conversationId: String? = nil,
        fromEmail: String? = nil,
        fromLabel: String? = nil,
        id: String? = nil,
        listId: Int? = nil,
        message: String? = nil,
        read: Bool? = nil,
        subject: String? = nil,
        timestamp: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.conversationId = conversationId
        self.fromEmail = fromEmail
        self.fromLabel = fromLabel
        self.id = id
        self.listId = listId
        self.message = message
        self.read = read
        self.subject = subject
        self.timestamp = timestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ConversationMessageLinksItem].self, forKey: .links)
        self.conversationId = try container.decodeIfPresent(String.self, forKey: .conversationId)
        self.fromEmail = try container.decodeIfPresent(String.self, forKey: .fromEmail)
        self.fromLabel = try container.decodeIfPresent(String.self, forKey: .fromLabel)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.listId = try container.decodeIfPresent(Int.self, forKey: .listId)
        self.message = try container.decodeIfPresent(String.self, forKey: .message)
        self.read = try container.decodeIfPresent(Bool.self, forKey: .read)
        self.subject = try container.decodeIfPresent(String.self, forKey: .subject)
        self.timestamp = try container.decodeIfPresent(Date.self, forKey: .timestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.conversationId, forKey: .conversationId)
        try container.encodeIfPresent(self.fromEmail, forKey: .fromEmail)
        try container.encodeIfPresent(self.fromLabel, forKey: .fromLabel)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.message, forKey: .message)
        try container.encodeIfPresent(self.read, forKey: .read)
        try container.encodeIfPresent(self.subject, forKey: .subject)
        try container.encodeIfPresent(self.timestamp, forKey: .timestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case conversationId = "conversation_id"
        case fromEmail = "from_email"
        case fromLabel = "from_label"
        case id
        case listId = "list_id"
        case message
        case read
        case subject
        case timestamp
    }
}