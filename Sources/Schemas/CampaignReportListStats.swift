import Foundation

/// The average campaign statistics for your list. This won't be present if we haven't calculated it yet for this list.
public struct CampaignReportListStats: Codable, Hashable, Sendable {
    /// The average click rate (a percentage represented as a number between 0 and 100) per campaign for the list.
    public let clickRate: Double?
    /// The average unique open rate (a percentage represented as a number between 0 and 100) per campaign for the list.
    public let openRate: Double?
    /// The average unique open rate (a percentage represented as a number between 0 and 100) per campaign for the list, excluding opens from email clients that use proxies.
    public let proxyExcludedOpenRate: Double?
    /// The average number of subscriptions per month for the list.
    public let subRate: Double?
    /// The average number of unsubscriptions per month for the list.
    public let unsubRate: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        clickRate: Double? = nil,
        openRate: Double? = nil,
        proxyExcludedOpenRate: Double? = nil,
        subRate: Double? = nil,
        unsubRate: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.clickRate = clickRate
        self.openRate = openRate
        self.proxyExcludedOpenRate = proxyExcludedOpenRate
        self.subRate = subRate
        self.unsubRate = unsubRate
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.clickRate = try container.decodeIfPresent(Double.self, forKey: .clickRate)
        self.openRate = try container.decodeIfPresent(Double.self, forKey: .openRate)
        self.proxyExcludedOpenRate = try container.decodeIfPresent(Double.self, forKey: .proxyExcludedOpenRate)
        self.subRate = try container.decodeIfPresent(Double.self, forKey: .subRate)
        self.unsubRate = try container.decodeIfPresent(Double.self, forKey: .unsubRate)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.clickRate, forKey: .clickRate)
        try container.encodeIfPresent(self.openRate, forKey: .openRate)
        try container.encodeIfPresent(self.proxyExcludedOpenRate, forKey: .proxyExcludedOpenRate)
        try container.encodeIfPresent(self.subRate, forKey: .subRate)
        try container.encodeIfPresent(self.unsubRate, forKey: .unsubRate)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case clickRate = "click_rate"
        case openRate = "open_rate"
        case proxyExcludedOpenRate = "proxy_excluded_open_rate"
        case subRate = "sub_rate"
        case unsubRate = "unsub_rate"
    }
}