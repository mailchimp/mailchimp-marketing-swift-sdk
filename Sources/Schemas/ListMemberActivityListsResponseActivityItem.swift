import Foundation

/// Member activity events.
public struct ListMemberActivityListsResponseActivityItem: Codable, Hashable, Sendable {
    /// The type of action recorded for the subscriber.
    public let action: String?
    /// The web-based ID for the campaign.
    public let campaignId: String?
    /// The ID of the parent campaign.
    public let parentCampaign: String?
    /// The date and time recorded for the action.
    public let timestamp: Date?
    /// If set, the campaign's title.
    public let title: String?
    /// The type of campaign that was sent.
    public let type: String?
    /// For clicks, the URL the subscriber clicked on.
    public let url: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        action: String? = nil,
        campaignId: String? = nil,
        parentCampaign: String? = nil,
        timestamp: Date? = nil,
        title: String? = nil,
        type: String? = nil,
        url: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.action = action
        self.campaignId = campaignId
        self.parentCampaign = parentCampaign
        self.timestamp = timestamp
        self.title = title
        self.type = type
        self.url = url
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.action = try container.decodeIfPresent(String.self, forKey: .action)
        self.campaignId = try container.decodeIfPresent(String.self, forKey: .campaignId)
        self.parentCampaign = try container.decodeIfPresent(String.self, forKey: .parentCampaign)
        self.timestamp = try container.decodeIfPresent(Date.self, forKey: .timestamp)
        self.title = try container.decodeIfPresent(String.self, forKey: .title)
        self.type = try container.decodeIfPresent(String.self, forKey: .type)
        self.url = try container.decodeIfPresent(String.self, forKey: .url)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.action, forKey: .action)
        try container.encodeIfPresent(self.campaignId, forKey: .campaignId)
        try container.encodeIfPresent(self.parentCampaign, forKey: .parentCampaign)
        try container.encodeIfPresent(self.timestamp, forKey: .timestamp)
        try container.encodeIfPresent(self.title, forKey: .title)
        try container.encodeIfPresent(self.type, forKey: .type)
        try container.encodeIfPresent(self.url, forKey: .url)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case action
        case campaignId = "campaign_id"
        case parentCampaign = "parent_campaign"
        case timestamp
        case title
        case type
        case url
    }
}