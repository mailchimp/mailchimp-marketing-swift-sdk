import Foundation

/// A summary of the interaction with the campaign.
public struct EmailActivityActivityItem: Codable, Hashable, Sendable {
    /// One of the following actions: 'open', 'click', or 'bounce'
    public let action: String?
    /// The IP address recorded for the action.
    public let ip: String?
    /// The date and time recorded for the action in ISO 8601 format.
    public let timestamp: Date?
    /// If the action is a 'bounce', the type of bounce received: 'hard', 'soft'.
    public let type: String?
    /// If the action is a 'click', the URL on which the member clicked.
    public let url: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        action: String? = nil,
        ip: String? = nil,
        timestamp: Date? = nil,
        type: String? = nil,
        url: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.action = action
        self.ip = ip
        self.timestamp = timestamp
        self.type = type
        self.url = url
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.action = try container.decodeIfPresent(String.self, forKey: .action)
        self.ip = try container.decodeIfPresent(String.self, forKey: .ip)
        self.timestamp = try container.decodeIfPresent(Date.self, forKey: .timestamp)
        self.type = try container.decodeIfPresent(String.self, forKey: .type)
        self.url = try container.decodeIfPresent(String.self, forKey: .url)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.action, forKey: .action)
        try container.encodeIfPresent(self.ip, forKey: .ip)
        try container.encodeIfPresent(self.timestamp, forKey: .timestamp)
        try container.encodeIfPresent(self.type, forKey: .type)
        try container.encodeIfPresent(self.url, forKey: .url)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case action
        case ip
        case timestamp
        case type
        case url
    }
}