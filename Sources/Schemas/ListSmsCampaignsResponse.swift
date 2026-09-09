import Foundation

/// A collection of SMS campaigns.
public struct ListSmsCampaignsResponse: Codable, Hashable, Sendable {
    /// An array of SMS campaigns.
    public let smsCampaigns: [SmsCampaign]?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListSmsCampaignsResponseLinksItem]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        smsCampaigns: [SmsCampaign]? = nil,
        totalItems: Int? = nil,
        links: [ListSmsCampaignsResponseLinksItem]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.smsCampaigns = smsCampaigns
        self.totalItems = totalItems
        self.links = links
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.smsCampaigns = try container.decodeIfPresent([SmsCampaign].self, forKey: .smsCampaigns)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.links = try container.decodeIfPresent([ListSmsCampaignsResponseLinksItem].self, forKey: .links)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.smsCampaigns, forKey: .smsCampaigns)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
        try container.encodeIfPresent(self.links, forKey: .links)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case smsCampaigns = "sms_campaigns"
        case totalItems = "total_items"
        case links = "_links"
    }
}