import Foundation

/// For sent campaigns, a summary of opens, clicks, and e-commerce data.
public struct CampaignsReportSummary: Codable, Hashable, Sendable {
    /// The number of unique clicks divided by the total number of successful deliveries.
    public let clickRate: Double?
    /// The total number of clicks for an campaign.
    public let clicks: Int?
    /// E-Commerce stats for a campaign.
    public let ecommerce: CampaignsReportSummaryEcommerce?
    /// The number of unique opens divided by the total number of successful deliveries.
    public let openRate: Double?
    /// The total number of opens for a campaign.
    public let opens: Int?
    /// The number of unique clicks.
    public let subscriberClicks: Int?
    /// The number of unique opens.
    public let uniqueOpens: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        clickRate: Double? = nil,
        clicks: Int? = nil,
        ecommerce: CampaignsReportSummaryEcommerce? = nil,
        openRate: Double? = nil,
        opens: Int? = nil,
        subscriberClicks: Int? = nil,
        uniqueOpens: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.clickRate = clickRate
        self.clicks = clicks
        self.ecommerce = ecommerce
        self.openRate = openRate
        self.opens = opens
        self.subscriberClicks = subscriberClicks
        self.uniqueOpens = uniqueOpens
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.clickRate = try container.decodeIfPresent(Double.self, forKey: .clickRate)
        self.clicks = try container.decodeIfPresent(Int.self, forKey: .clicks)
        self.ecommerce = try container.decodeIfPresent(CampaignsReportSummaryEcommerce.self, forKey: .ecommerce)
        self.openRate = try container.decodeIfPresent(Double.self, forKey: .openRate)
        self.opens = try container.decodeIfPresent(Int.self, forKey: .opens)
        self.subscriberClicks = try container.decodeIfPresent(Int.self, forKey: .subscriberClicks)
        self.uniqueOpens = try container.decodeIfPresent(Int.self, forKey: .uniqueOpens)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.clickRate, forKey: .clickRate)
        try container.encodeIfPresent(self.clicks, forKey: .clicks)
        try container.encodeIfPresent(self.ecommerce, forKey: .ecommerce)
        try container.encodeIfPresent(self.openRate, forKey: .openRate)
        try container.encodeIfPresent(self.opens, forKey: .opens)
        try container.encodeIfPresent(self.subscriberClicks, forKey: .subscriberClicks)
        try container.encodeIfPresent(self.uniqueOpens, forKey: .uniqueOpens)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case clickRate = "click_rate"
        case clicks
        case ecommerce
        case openRate = "open_rate"
        case opens
        case subscriberClicks = "subscriber_clicks"
        case uniqueOpens = "unique_opens"
    }
}