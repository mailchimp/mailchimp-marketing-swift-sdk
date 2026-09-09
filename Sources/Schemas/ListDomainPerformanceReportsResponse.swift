import Foundation

/// Statistics for the top-performing email domains in a campaign.
public struct ListDomainPerformanceReportsResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListDomainPerformanceReportsResponseLinksItem]?
    /// The unique id for the campaign.
    public let campaignId: String?
    /// The top 5 email domains based on total delivered emails.
    public let domains: [ListDomainPerformanceReportsResponseDomainsItem]?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// The total number of emails sent for the campaign.
    public let totalSent: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListDomainPerformanceReportsResponseLinksItem]? = nil,
        campaignId: String? = nil,
        domains: [ListDomainPerformanceReportsResponseDomainsItem]? = nil,
        totalItems: Int? = nil,
        totalSent: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.campaignId = campaignId
        self.domains = domains
        self.totalItems = totalItems
        self.totalSent = totalSent
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListDomainPerformanceReportsResponseLinksItem].self, forKey: .links)
        self.campaignId = try container.decodeIfPresent(String.self, forKey: .campaignId)
        self.domains = try container.decodeIfPresent([ListDomainPerformanceReportsResponseDomainsItem].self, forKey: .domains)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.totalSent = try container.decodeIfPresent(Int.self, forKey: .totalSent)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.campaignId, forKey: .campaignId)
        try container.encodeIfPresent(self.domains, forKey: .domains)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
        try container.encodeIfPresent(self.totalSent, forKey: .totalSent)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case campaignId = "campaign_id"
        case domains
        case totalItems = "total_items"
        case totalSent = "total_sent"
    }
}