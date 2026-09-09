import Foundation

/// A list of members who have unsubscribed from a specific campaign.
public struct ListUnsubscribedReportsResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListUnsubscribedReportsResponseLinksItem]?
    /// The campaign id.
    public let campaignId: String?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// An array of objects, each representing a member who unsubscribed from a campaign.
    public let unsubscribes: [Unsubscribes]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListUnsubscribedReportsResponseLinksItem]? = nil,
        campaignId: String? = nil,
        totalItems: Int? = nil,
        unsubscribes: [Unsubscribes]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.campaignId = campaignId
        self.totalItems = totalItems
        self.unsubscribes = unsubscribes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListUnsubscribedReportsResponseLinksItem].self, forKey: .links)
        self.campaignId = try container.decodeIfPresent(String.self, forKey: .campaignId)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.unsubscribes = try container.decodeIfPresent([Unsubscribes].self, forKey: .unsubscribes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.campaignId, forKey: .campaignId)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
        try container.encodeIfPresent(self.unsubscribes, forKey: .unsubscribes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case campaignId = "campaign_id"
        case totalItems = "total_items"
        case unsubscribes
    }
}