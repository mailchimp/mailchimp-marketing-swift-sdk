import Foundation

/// A report of links clicked in a specific campaign.
public struct ClickDetailReport: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ClickDetailReportLinksItem]?
    /// A breakdown of clicks by different groups of an A/B Split campaign. Does not return information about Multivariate Campaigns.
    public let abSplit: ClickDetailReportAbSplit?
    /// The campaign id.
    public let campaignId: String?
    /// The percentage of total clicks a link generated for a campaign.
    public let clickPercentage: Double?
    /// The unique id for the link.
    public let id: String?
    /// The date and time for the last recorded click for a link in ISO 8601 format.
    public let lastClick: Date?
    /// The number of total clicks for a link.
    public let totalClicks: Int?
    /// The percentage of unique clicks a link generated for a campaign.
    public let uniqueClickPercentage: Double?
    /// Number of unique clicks for a link.
    public let uniqueClicks: Int?
    /// The URL for the link in the campaign.
    public let url: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ClickDetailReportLinksItem]? = nil,
        abSplit: ClickDetailReportAbSplit? = nil,
        campaignId: String? = nil,
        clickPercentage: Double? = nil,
        id: String? = nil,
        lastClick: Date? = nil,
        totalClicks: Int? = nil,
        uniqueClickPercentage: Double? = nil,
        uniqueClicks: Int? = nil,
        url: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.abSplit = abSplit
        self.campaignId = campaignId
        self.clickPercentage = clickPercentage
        self.id = id
        self.lastClick = lastClick
        self.totalClicks = totalClicks
        self.uniqueClickPercentage = uniqueClickPercentage
        self.uniqueClicks = uniqueClicks
        self.url = url
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ClickDetailReportLinksItem].self, forKey: .links)
        self.abSplit = try container.decodeIfPresent(ClickDetailReportAbSplit.self, forKey: .abSplit)
        self.campaignId = try container.decodeIfPresent(String.self, forKey: .campaignId)
        self.clickPercentage = try container.decodeIfPresent(Double.self, forKey: .clickPercentage)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.lastClick = try container.decodeIfPresent(Date.self, forKey: .lastClick)
        self.totalClicks = try container.decodeIfPresent(Int.self, forKey: .totalClicks)
        self.uniqueClickPercentage = try container.decodeIfPresent(Double.self, forKey: .uniqueClickPercentage)
        self.uniqueClicks = try container.decodeIfPresent(Int.self, forKey: .uniqueClicks)
        self.url = try container.decodeIfPresent(String.self, forKey: .url)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.abSplit, forKey: .abSplit)
        try container.encodeIfPresent(self.campaignId, forKey: .campaignId)
        try container.encodeIfPresent(self.clickPercentage, forKey: .clickPercentage)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.lastClick, forKey: .lastClick)
        try container.encodeIfPresent(self.totalClicks, forKey: .totalClicks)
        try container.encodeIfPresent(self.uniqueClickPercentage, forKey: .uniqueClickPercentage)
        try container.encodeIfPresent(self.uniqueClicks, forKey: .uniqueClicks)
        try container.encodeIfPresent(self.url, forKey: .url)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case abSplit = "ab_split"
        case campaignId = "campaign_id"
        case clickPercentage = "click_percentage"
        case id
        case lastClick = "last_click"
        case totalClicks = "total_clicks"
        case uniqueClickPercentage = "unique_click_percentage"
        case uniqueClicks = "unique_clicks"
        case url
    }
}