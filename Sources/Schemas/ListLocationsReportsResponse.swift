import Foundation

/// Top open locations for a specific campaign.
public struct ListLocationsReportsResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListLocationsReportsResponseLinksItem]?
    /// The campaign id.
    public let campaignId: String?
    /// An array of objects, each representing a top location for opens.
    public let locations: [ListLocationsReportsResponseLocationsItem]?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListLocationsReportsResponseLinksItem]? = nil,
        campaignId: String? = nil,
        locations: [ListLocationsReportsResponseLocationsItem]? = nil,
        totalItems: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.campaignId = campaignId
        self.locations = locations
        self.totalItems = totalItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListLocationsReportsResponseLinksItem].self, forKey: .links)
        self.campaignId = try container.decodeIfPresent(String.self, forKey: .campaignId)
        self.locations = try container.decodeIfPresent([ListLocationsReportsResponseLocationsItem].self, forKey: .locations)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.campaignId, forKey: .campaignId)
        try container.encodeIfPresent(self.locations, forKey: .locations)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case campaignId = "campaign_id"
        case locations
        case totalItems = "total_items"
    }
}