import Foundation

/// The outreach associated with this order. For example, an email campaign or Facebook ad.
public struct ECommerceOrderOutreach: Codable, Hashable, Sendable {
    /// A unique identifier for the outreach. Can be an email campaign ID.
    public let id: String?
    /// The name for the outreach.
    public let name: String?
    /// The date and time the Outreach was published in ISO 8601 format.
    public let publishedTime: Date?
    /// The type of the outreach.
    public let type: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String? = nil,
        name: String? = nil,
        publishedTime: Date? = nil,
        type: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.name = name
        self.publishedTime = publishedTime
        self.type = type
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.publishedTime = try container.decodeIfPresent(Date.self, forKey: .publishedTime)
        self.type = try container.decodeIfPresent(String.self, forKey: .type)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.publishedTime, forKey: .publishedTime)
        try container.encodeIfPresent(self.type, forKey: .type)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case publishedTime = "published_time"
        case type
    }
}