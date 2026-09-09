import Foundation

/// Additional content properties.
public struct SmsCampaignContentProperties: Codable, Hashable, Sendable {
    /// The content type of the message.
    public let contentType: String?
    /// The sender identifier for the message.
    public let sender: String?
    /// The language of the opt-out message.
    public let optoutMessageLanguage: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        contentType: String? = nil,
        sender: String? = nil,
        optoutMessageLanguage: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.contentType = contentType
        self.sender = sender
        self.optoutMessageLanguage = optoutMessageLanguage
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.contentType = try container.decodeIfPresent(String.self, forKey: .contentType)
        self.sender = try container.decodeIfPresent(String.self, forKey: .sender)
        self.optoutMessageLanguage = try container.decodeIfPresent(String.self, forKey: .optoutMessageLanguage)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.contentType, forKey: .contentType)
        try container.encodeIfPresent(self.sender, forKey: .sender)
        try container.encodeIfPresent(self.optoutMessageLanguage, forKey: .optoutMessageLanguage)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case contentType = "content_type"
        case sender
        case optoutMessageLanguage = "optout_message_language"
    }
}