import Foundation

/// A Chimp Chatter message
public struct ListChimpChatterActivityFeedResponseChimpChatterItem: Codable, Hashable, Sendable {
    /// If it exists, campaign ID for the associated campaign
    public let campaignId: String?
    /// If it exists, list ID for the associated list
    public let listId: String?
    public let message: String?
    public let title: String?
    /// The type of activity
    public let type: ListChimpChatterActivityFeedResponseChimpChatterItemType?
    /// The date and time this activity was updated.
    public let updateTime: Date?
    /// URL to a report that includes this activity
    public let url: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        campaignId: String? = nil,
        listId: String? = nil,
        message: String? = nil,
        title: String? = nil,
        type: ListChimpChatterActivityFeedResponseChimpChatterItemType? = nil,
        updateTime: Date? = nil,
        url: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.campaignId = campaignId
        self.listId = listId
        self.message = message
        self.title = title
        self.type = type
        self.updateTime = updateTime
        self.url = url
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.campaignId = try container.decodeIfPresent(String.self, forKey: .campaignId)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.message = try container.decodeIfPresent(String.self, forKey: .message)
        self.title = try container.decodeIfPresent(String.self, forKey: .title)
        self.type = try container.decodeIfPresent(ListChimpChatterActivityFeedResponseChimpChatterItemType.self, forKey: .type)
        self.updateTime = try container.decodeIfPresent(Date.self, forKey: .updateTime)
        self.url = try container.decodeIfPresent(String.self, forKey: .url)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.campaignId, forKey: .campaignId)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.message, forKey: .message)
        try container.encodeIfPresent(self.title, forKey: .title)
        try container.encodeIfPresent(self.type, forKey: .type)
        try container.encodeIfPresent(self.updateTime, forKey: .updateTime)
        try container.encodeIfPresent(self.url, forKey: .url)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case campaignId = "campaign_id"
        case listId = "list_id"
        case message
        case title
        case type
        case updateTime = "update_time"
        case url
    }
}