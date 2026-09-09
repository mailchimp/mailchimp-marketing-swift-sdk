import Foundation

/// The most recent message in the conversation.
public struct ConversationLastMessage: Codable, Hashable, Sendable {
    /// A label representing the email of the sender of this message.
    public let fromEmail: String?
    /// A label representing the sender of this message.
    public let fromLabel: String?
    /// The plain-text content of the message.
    public let message: String?
    /// Whether this message has been marked as read.
    public let read: Bool?
    /// The subject of this message.
    public let subject: String?
    /// The date and time the message was either sent or received in ISO 8601 format.
    public let timestamp: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        fromEmail: String? = nil,
        fromLabel: String? = nil,
        message: String? = nil,
        read: Bool? = nil,
        subject: String? = nil,
        timestamp: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.fromEmail = fromEmail
        self.fromLabel = fromLabel
        self.message = message
        self.read = read
        self.subject = subject
        self.timestamp = timestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.fromEmail = try container.decodeIfPresent(String.self, forKey: .fromEmail)
        self.fromLabel = try container.decodeIfPresent(String.self, forKey: .fromLabel)
        self.message = try container.decodeIfPresent(String.self, forKey: .message)
        self.read = try container.decodeIfPresent(Bool.self, forKey: .read)
        self.subject = try container.decodeIfPresent(String.self, forKey: .subject)
        self.timestamp = try container.decodeIfPresent(Date.self, forKey: .timestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.fromEmail, forKey: .fromEmail)
        try container.encodeIfPresent(self.fromLabel, forKey: .fromLabel)
        try container.encodeIfPresent(self.message, forKey: .message)
        try container.encodeIfPresent(self.read, forKey: .read)
        try container.encodeIfPresent(self.subject, forKey: .subject)
        try container.encodeIfPresent(self.timestamp, forKey: .timestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case fromEmail = "from_email"
        case fromLabel = "from_label"
        case message
        case read
        case subject
        case timestamp
    }
}