import Foundation

/// An object describing the open activity for the campaign.
public struct CampaignReportOpens: Codable, Hashable, Sendable {
    /// The date and time of the last recorded open in ISO 8601 format.
    public let lastOpen: Date?
    /// The number of unique opens for a campaign divided by the total number of successful deliveries.
    public let openRate: Double?
    /// The total number of opens for a campaign.
    public let opensTotal: Int?
    /// The average unique open rate for a campaign, excluding opens from email clients that use proxies.
    public let proxyExcludedOpenRate: Double?
    /// The total number of opens for a campaign, excluding opens from email clients that use proxies.
    public let proxyExcludedOpens: Int?
    /// The total number of unique opens for a campaign, excluding opens from email clients that use proxies.
    public let proxyExcludedUniqueOpens: Int?
    /// The total number of unique opens for a campaign.
    public let uniqueOpens: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        lastOpen: Date? = nil,
        openRate: Double? = nil,
        opensTotal: Int? = nil,
        proxyExcludedOpenRate: Double? = nil,
        proxyExcludedOpens: Int? = nil,
        proxyExcludedUniqueOpens: Int? = nil,
        uniqueOpens: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.lastOpen = lastOpen
        self.openRate = openRate
        self.opensTotal = opensTotal
        self.proxyExcludedOpenRate = proxyExcludedOpenRate
        self.proxyExcludedOpens = proxyExcludedOpens
        self.proxyExcludedUniqueOpens = proxyExcludedUniqueOpens
        self.uniqueOpens = uniqueOpens
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.lastOpen = try container.decodeIfPresent(Date.self, forKey: .lastOpen)
        self.openRate = try container.decodeIfPresent(Double.self, forKey: .openRate)
        self.opensTotal = try container.decodeIfPresent(Int.self, forKey: .opensTotal)
        self.proxyExcludedOpenRate = try container.decodeIfPresent(Double.self, forKey: .proxyExcludedOpenRate)
        self.proxyExcludedOpens = try container.decodeIfPresent(Int.self, forKey: .proxyExcludedOpens)
        self.proxyExcludedUniqueOpens = try container.decodeIfPresent(Int.self, forKey: .proxyExcludedUniqueOpens)
        self.uniqueOpens = try container.decodeIfPresent(Int.self, forKey: .uniqueOpens)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.lastOpen, forKey: .lastOpen)
        try container.encodeIfPresent(self.openRate, forKey: .openRate)
        try container.encodeIfPresent(self.opensTotal, forKey: .opensTotal)
        try container.encodeIfPresent(self.proxyExcludedOpenRate, forKey: .proxyExcludedOpenRate)
        try container.encodeIfPresent(self.proxyExcludedOpens, forKey: .proxyExcludedOpens)
        try container.encodeIfPresent(self.proxyExcludedUniqueOpens, forKey: .proxyExcludedUniqueOpens)
        try container.encodeIfPresent(self.uniqueOpens, forKey: .uniqueOpens)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case lastOpen = "last_open"
        case openRate = "open_rate"
        case opensTotal = "opens_total"
        case proxyExcludedOpenRate = "proxy_excluded_open_rate"
        case proxyExcludedOpens = "proxy_excluded_opens"
        case proxyExcludedUniqueOpens = "proxy_excluded_unique_opens"
        case uniqueOpens = "unique_opens"
    }
}