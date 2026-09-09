import Foundation

/// A summary of social activity for the campaign, tracked by EepURL.
public struct ListEepurlReportsResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListEepurlReportsResponseLinksItem]?
    /// The unique id for the campaign.
    public let campaignId: String?
    /// A summary of the click-throughs on the campaign's URL.
    public let clicks: ListEepurlReportsResponseClicks?
    /// The shortened link used for tracking.
    public let eepurl: String?
    /// A summary of the top referrers for the campaign.
    public let referrers: [ListEepurlReportsResponseReferrersItem]?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// A summary of Twitter activity for a campaign.
    public let twitter: ListEepurlReportsResponseTwitter?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListEepurlReportsResponseLinksItem]? = nil,
        campaignId: String? = nil,
        clicks: ListEepurlReportsResponseClicks? = nil,
        eepurl: String? = nil,
        referrers: [ListEepurlReportsResponseReferrersItem]? = nil,
        totalItems: Int? = nil,
        twitter: ListEepurlReportsResponseTwitter? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.campaignId = campaignId
        self.clicks = clicks
        self.eepurl = eepurl
        self.referrers = referrers
        self.totalItems = totalItems
        self.twitter = twitter
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListEepurlReportsResponseLinksItem].self, forKey: .links)
        self.campaignId = try container.decodeIfPresent(String.self, forKey: .campaignId)
        self.clicks = try container.decodeIfPresent(ListEepurlReportsResponseClicks.self, forKey: .clicks)
        self.eepurl = try container.decodeIfPresent(String.self, forKey: .eepurl)
        self.referrers = try container.decodeIfPresent([ListEepurlReportsResponseReferrersItem].self, forKey: .referrers)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.twitter = try container.decodeIfPresent(ListEepurlReportsResponseTwitter.self, forKey: .twitter)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.campaignId, forKey: .campaignId)
        try container.encodeIfPresent(self.clicks, forKey: .clicks)
        try container.encodeIfPresent(self.eepurl, forKey: .eepurl)
        try container.encodeIfPresent(self.referrers, forKey: .referrers)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
        try container.encodeIfPresent(self.twitter, forKey: .twitter)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case campaignId = "campaign_id"
        case clicks
        case eepurl
        case referrers
        case totalItems = "total_items"
        case twitter
    }
}