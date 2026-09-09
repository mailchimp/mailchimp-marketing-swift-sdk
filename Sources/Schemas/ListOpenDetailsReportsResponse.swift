import Foundation

/// A detailed report of any campaign emails that were opened by a list member.
public struct ListOpenDetailsReportsResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListOpenDetailsReportsResponseLinksItem]?
    /// The campaign id.
    public let campaignId: String?
    /// An array of objects, each representing a list member who opened a campaign email. Each members object will contain information about the number of total opens by a single member, as well as timestamps for each open event.
    public let members: [OpenActivity]?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// The total number of opens matching the query regardless of pagination.
    public let totalOpens: Int?
    /// The total number of opens excluding opens from email clients that use proxies regardless of pagination.
    public let totalProxyExcludedOpens: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListOpenDetailsReportsResponseLinksItem]? = nil,
        campaignId: String? = nil,
        members: [OpenActivity]? = nil,
        totalItems: Int? = nil,
        totalOpens: Int? = nil,
        totalProxyExcludedOpens: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.campaignId = campaignId
        self.members = members
        self.totalItems = totalItems
        self.totalOpens = totalOpens
        self.totalProxyExcludedOpens = totalProxyExcludedOpens
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListOpenDetailsReportsResponseLinksItem].self, forKey: .links)
        self.campaignId = try container.decodeIfPresent(String.self, forKey: .campaignId)
        self.members = try container.decodeIfPresent([OpenActivity].self, forKey: .members)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.totalOpens = try container.decodeIfPresent(Int.self, forKey: .totalOpens)
        self.totalProxyExcludedOpens = try container.decodeIfPresent(Int.self, forKey: .totalProxyExcludedOpens)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.campaignId, forKey: .campaignId)
        try container.encodeIfPresent(self.members, forKey: .members)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
        try container.encodeIfPresent(self.totalOpens, forKey: .totalOpens)
        try container.encodeIfPresent(self.totalProxyExcludedOpens, forKey: .totalProxyExcludedOpens)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case campaignId = "campaign_id"
        case members
        case totalItems = "total_items"
        case totalOpens = "total_opens"
        case totalProxyExcludedOpens = "total_proxy_excluded_opens"
    }
}