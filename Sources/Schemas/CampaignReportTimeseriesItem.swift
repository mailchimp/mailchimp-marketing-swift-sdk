import Foundation

public struct CampaignReportTimeseriesItem: Codable, Hashable, Sendable {
    /// The number of emails sent in the timeseries.
    public let emailsSent: Int?
    /// The number of unique opens in the timeseries, excluding opens from email clients that use proxies.
    public let proxyExcludedUniqueOpens: Int?
    /// The number of clicks in the timeseries.
    public let recipientsClicks: Int?
    /// The date and time for the series in ISO 8601 format.
    public let timestamp: Date?
    /// The number of unique opens in the timeseries.
    public let uniqueOpens: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        emailsSent: Int? = nil,
        proxyExcludedUniqueOpens: Int? = nil,
        recipientsClicks: Int? = nil,
        timestamp: Date? = nil,
        uniqueOpens: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.emailsSent = emailsSent
        self.proxyExcludedUniqueOpens = proxyExcludedUniqueOpens
        self.recipientsClicks = recipientsClicks
        self.timestamp = timestamp
        self.uniqueOpens = uniqueOpens
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.emailsSent = try container.decodeIfPresent(Int.self, forKey: .emailsSent)
        self.proxyExcludedUniqueOpens = try container.decodeIfPresent(Int.self, forKey: .proxyExcludedUniqueOpens)
        self.recipientsClicks = try container.decodeIfPresent(Int.self, forKey: .recipientsClicks)
        self.timestamp = try container.decodeIfPresent(Date.self, forKey: .timestamp)
        self.uniqueOpens = try container.decodeIfPresent(Int.self, forKey: .uniqueOpens)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.emailsSent, forKey: .emailsSent)
        try container.encodeIfPresent(self.proxyExcludedUniqueOpens, forKey: .proxyExcludedUniqueOpens)
        try container.encodeIfPresent(self.recipientsClicks, forKey: .recipientsClicks)
        try container.encodeIfPresent(self.timestamp, forKey: .timestamp)
        try container.encodeIfPresent(self.uniqueOpens, forKey: .uniqueOpens)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case emailsSent = "emails_sent"
        case proxyExcludedUniqueOpens = "proxy_excluded_unique_opens"
        case recipientsClicks = "recipients_clicks"
        case timestamp
        case uniqueOpens = "unique_opens"
    }
}