import Foundation

/// Details about an individual conversation. Conversation tracking is a feature available to paid accounts that lets you view replies to your campaigns in your Mailchimp account.
public struct Conversation: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ConversationLinksItem]?
    /// The unique identifier of the campaign for this conversation.
    public let campaignId: String?
    /// A label representing the email of the sender of this message.
    public let fromEmail: String?
    /// A label representing the sender of this message.
    public let fromLabel: String?
    /// A string that uniquely identifies this conversation.
    public let id: String?
    /// The most recent message in the conversation.
    public let lastMessage: ConversationLastMessage?
    /// The unique identifier of the list for this conversation.
    public let listId: String?
    /// The total number of messages in this conversation.
    public let messageCount: Int?
    /// The subject of the message.
    public let subject: String?
    /// The number of unread messages in this conversation.
    public let unreadMessages: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ConversationLinksItem]? = nil,
        campaignId: String? = nil,
        fromEmail: String? = nil,
        fromLabel: String? = nil,
        id: String? = nil,
        lastMessage: ConversationLastMessage? = nil,
        listId: String? = nil,
        messageCount: Int? = nil,
        subject: String? = nil,
        unreadMessages: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.campaignId = campaignId
        self.fromEmail = fromEmail
        self.fromLabel = fromLabel
        self.id = id
        self.lastMessage = lastMessage
        self.listId = listId
        self.messageCount = messageCount
        self.subject = subject
        self.unreadMessages = unreadMessages
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ConversationLinksItem].self, forKey: .links)
        self.campaignId = try container.decodeIfPresent(String.self, forKey: .campaignId)
        self.fromEmail = try container.decodeIfPresent(String.self, forKey: .fromEmail)
        self.fromLabel = try container.decodeIfPresent(String.self, forKey: .fromLabel)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.lastMessage = try container.decodeIfPresent(ConversationLastMessage.self, forKey: .lastMessage)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.messageCount = try container.decodeIfPresent(Int.self, forKey: .messageCount)
        self.subject = try container.decodeIfPresent(String.self, forKey: .subject)
        self.unreadMessages = try container.decodeIfPresent(Int.self, forKey: .unreadMessages)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.campaignId, forKey: .campaignId)
        try container.encodeIfPresent(self.fromEmail, forKey: .fromEmail)
        try container.encodeIfPresent(self.fromLabel, forKey: .fromLabel)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.lastMessage, forKey: .lastMessage)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.messageCount, forKey: .messageCount)
        try container.encodeIfPresent(self.subject, forKey: .subject)
        try container.encodeIfPresent(self.unreadMessages, forKey: .unreadMessages)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case campaignId = "campaign_id"
        case fromEmail = "from_email"
        case fromLabel = "from_label"
        case id
        case lastMessage = "last_message"
        case listId = "list_id"
        case messageCount = "message_count"
        case subject
        case unreadMessages = "unread_messages"
    }
}