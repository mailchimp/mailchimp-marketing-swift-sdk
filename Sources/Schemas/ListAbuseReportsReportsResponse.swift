import Foundation

/// A list of abuse complaints for a specific list.
public struct ListAbuseReportsReportsResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListAbuseReportsReportsResponseLinksItem]?
    /// An array of objects, each representing an abuse report resource.
    public let abuseReports: [AbuseComplaint]?
    /// The campaign id.
    public let campaignId: String?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListAbuseReportsReportsResponseLinksItem]? = nil,
        abuseReports: [AbuseComplaint]? = nil,
        campaignId: String? = nil,
        totalItems: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.abuseReports = abuseReports
        self.campaignId = campaignId
        self.totalItems = totalItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListAbuseReportsReportsResponseLinksItem].self, forKey: .links)
        self.abuseReports = try container.decodeIfPresent([AbuseComplaint].self, forKey: .abuseReports)
        self.campaignId = try container.decodeIfPresent(String.self, forKey: .campaignId)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.abuseReports, forKey: .abuseReports)
        try container.encodeIfPresent(self.campaignId, forKey: .campaignId)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case abuseReports = "abuse_reports"
        case campaignId = "campaign_id"
        case totalItems = "total_items"
    }
}