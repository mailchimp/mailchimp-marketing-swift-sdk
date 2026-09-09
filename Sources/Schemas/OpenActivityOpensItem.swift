import Foundation

/// A summary of the interaction with the campaign.
public struct OpenActivityOpensItem: Codable, Hashable, Sendable {
    /// Indicates if the open was from an email client that use proxies.
    public let isProxyOpen: Bool?
    /// The date and time recorded for the action in ISO 8601 format.
    public let timestamp: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        isProxyOpen: Bool? = nil,
        timestamp: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.isProxyOpen = isProxyOpen
        self.timestamp = timestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.isProxyOpen = try container.decodeIfPresent(Bool.self, forKey: .isProxyOpen)
        self.timestamp = try container.decodeIfPresent(Date.self, forKey: .timestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.isProxyOpen, forKey: .isProxyOpen)
        try container.encodeIfPresent(self.timestamp, forKey: .timestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case isProxyOpen = "is_proxy_open"
        case timestamp
    }
}