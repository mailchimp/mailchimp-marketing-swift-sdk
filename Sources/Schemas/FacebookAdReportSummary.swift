import Foundation

/// High level reporting stats for an outreach.
public struct FacebookAdReportSummary: Codable, Hashable, Sendable {
    public let clickRate: Double?
    public let clicks: Int?
    public let conversionRate: Double?
    public let ecommerce: FacebookAdReportSummaryEcommerce?
    public let engagements: Int?
    public let impressions: Double?
    public let openRate: Double?
    public let opens: Int?
    public let proxyExcludedOpenRate: Double?
    public let proxyExcludedOpens: Int?
    public let proxyExcludedUniqueOpens: Int?
    public let reach: Int?
    public let subscriberClicks: Int?
    public let subscribes: Int?
    public let totalSent: Int?
    public let uniqueOpens: Int?
    public let uniqueVisits: Int?
    public let visits: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        clickRate: Double? = nil,
        clicks: Int? = nil,
        conversionRate: Double? = nil,
        ecommerce: FacebookAdReportSummaryEcommerce? = nil,
        engagements: Int? = nil,
        impressions: Double? = nil,
        openRate: Double? = nil,
        opens: Int? = nil,
        proxyExcludedOpenRate: Double? = nil,
        proxyExcludedOpens: Int? = nil,
        proxyExcludedUniqueOpens: Int? = nil,
        reach: Int? = nil,
        subscriberClicks: Int? = nil,
        subscribes: Int? = nil,
        totalSent: Int? = nil,
        uniqueOpens: Int? = nil,
        uniqueVisits: Int? = nil,
        visits: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.clickRate = clickRate
        self.clicks = clicks
        self.conversionRate = conversionRate
        self.ecommerce = ecommerce
        self.engagements = engagements
        self.impressions = impressions
        self.openRate = openRate
        self.opens = opens
        self.proxyExcludedOpenRate = proxyExcludedOpenRate
        self.proxyExcludedOpens = proxyExcludedOpens
        self.proxyExcludedUniqueOpens = proxyExcludedUniqueOpens
        self.reach = reach
        self.subscriberClicks = subscriberClicks
        self.subscribes = subscribes
        self.totalSent = totalSent
        self.uniqueOpens = uniqueOpens
        self.uniqueVisits = uniqueVisits
        self.visits = visits
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.clickRate = try container.decodeIfPresent(Double.self, forKey: .clickRate)
        self.clicks = try container.decodeIfPresent(Int.self, forKey: .clicks)
        self.conversionRate = try container.decodeIfPresent(Double.self, forKey: .conversionRate)
        self.ecommerce = try container.decodeIfPresent(FacebookAdReportSummaryEcommerce.self, forKey: .ecommerce)
        self.engagements = try container.decodeIfPresent(Int.self, forKey: .engagements)
        self.impressions = try container.decodeIfPresent(Double.self, forKey: .impressions)
        self.openRate = try container.decodeIfPresent(Double.self, forKey: .openRate)
        self.opens = try container.decodeIfPresent(Int.self, forKey: .opens)
        self.proxyExcludedOpenRate = try container.decodeIfPresent(Double.self, forKey: .proxyExcludedOpenRate)
        self.proxyExcludedOpens = try container.decodeIfPresent(Int.self, forKey: .proxyExcludedOpens)
        self.proxyExcludedUniqueOpens = try container.decodeIfPresent(Int.self, forKey: .proxyExcludedUniqueOpens)
        self.reach = try container.decodeIfPresent(Int.self, forKey: .reach)
        self.subscriberClicks = try container.decodeIfPresent(Int.self, forKey: .subscriberClicks)
        self.subscribes = try container.decodeIfPresent(Int.self, forKey: .subscribes)
        self.totalSent = try container.decodeIfPresent(Int.self, forKey: .totalSent)
        self.uniqueOpens = try container.decodeIfPresent(Int.self, forKey: .uniqueOpens)
        self.uniqueVisits = try container.decodeIfPresent(Int.self, forKey: .uniqueVisits)
        self.visits = try container.decodeIfPresent(Int.self, forKey: .visits)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.clickRate, forKey: .clickRate)
        try container.encodeIfPresent(self.clicks, forKey: .clicks)
        try container.encodeIfPresent(self.conversionRate, forKey: .conversionRate)
        try container.encodeIfPresent(self.ecommerce, forKey: .ecommerce)
        try container.encodeIfPresent(self.engagements, forKey: .engagements)
        try container.encodeIfPresent(self.impressions, forKey: .impressions)
        try container.encodeIfPresent(self.openRate, forKey: .openRate)
        try container.encodeIfPresent(self.opens, forKey: .opens)
        try container.encodeIfPresent(self.proxyExcludedOpenRate, forKey: .proxyExcludedOpenRate)
        try container.encodeIfPresent(self.proxyExcludedOpens, forKey: .proxyExcludedOpens)
        try container.encodeIfPresent(self.proxyExcludedUniqueOpens, forKey: .proxyExcludedUniqueOpens)
        try container.encodeIfPresent(self.reach, forKey: .reach)
        try container.encodeIfPresent(self.subscriberClicks, forKey: .subscriberClicks)
        try container.encodeIfPresent(self.subscribes, forKey: .subscribes)
        try container.encodeIfPresent(self.totalSent, forKey: .totalSent)
        try container.encodeIfPresent(self.uniqueOpens, forKey: .uniqueOpens)
        try container.encodeIfPresent(self.uniqueVisits, forKey: .uniqueVisits)
        try container.encodeIfPresent(self.visits, forKey: .visits)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case clickRate = "click_rate"
        case clicks
        case conversionRate = "conversion_rate"
        case ecommerce
        case engagements
        case impressions
        case openRate = "open_rate"
        case opens
        case proxyExcludedOpenRate = "proxy_excluded_open_rate"
        case proxyExcludedOpens = "proxy_excluded_opens"
        case proxyExcludedUniqueOpens = "proxy_excluded_unique_opens"
        case reach
        case subscriberClicks = "subscriber_clicks"
        case subscribes
        case totalSent = "total_sent"
        case uniqueOpens = "unique_opens"
        case uniqueVisits = "unique_visits"
        case visits
    }
}