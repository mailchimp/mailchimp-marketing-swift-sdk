import Foundation

/// A collection of members who clicked on a specific link within a campaign.
public struct ListClickDetailMembersReportsResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListClickDetailMembersReportsResponseLinksItem]?
    /// The campaign id.
    public let campaignId: String?
    /// An array of objects, each representing a member who clicked a specific link within a campaign.
    public let members: [ClickDetailMember]?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListClickDetailMembersReportsResponseLinksItem]? = nil,
        campaignId: String? = nil,
        members: [ClickDetailMember]? = nil,
        totalItems: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.campaignId = campaignId
        self.members = members
        self.totalItems = totalItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListClickDetailMembersReportsResponseLinksItem].self, forKey: .links)
        self.campaignId = try container.decodeIfPresent(String.self, forKey: .campaignId)
        self.members = try container.decodeIfPresent([ClickDetailMember].self, forKey: .members)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.campaignId, forKey: .campaignId)
        try container.encodeIfPresent(self.members, forKey: .members)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case campaignId = "campaign_id"
        case members
        case totalItems = "total_items"
    }
}