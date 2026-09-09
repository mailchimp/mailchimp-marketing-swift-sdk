import Foundation

/// The average campaign statistics for your industry.
public struct CampaignReportIndustryStats: Codable, Hashable, Sendable {
    /// The industry abuse rate.
    public let abuseRate: Double?
    /// The industry bounce rate.
    public let bounceRate: Double?
    /// The industry click rate.
    public let clickRate: Double?
    /// The industry open rate.
    public let openRate: Double?
    /// The type of business industry associated with your account. For example: retail, education, etc.
    public let type: String?
    /// The industry unopened rate.
    public let unopenRate: Double?
    /// The industry unsubscribe rate.
    public let unsubRate: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        abuseRate: Double? = nil,
        bounceRate: Double? = nil,
        clickRate: Double? = nil,
        openRate: Double? = nil,
        type: String? = nil,
        unopenRate: Double? = nil,
        unsubRate: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.abuseRate = abuseRate
        self.bounceRate = bounceRate
        self.clickRate = clickRate
        self.openRate = openRate
        self.type = type
        self.unopenRate = unopenRate
        self.unsubRate = unsubRate
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.abuseRate = try container.decodeIfPresent(Double.self, forKey: .abuseRate)
        self.bounceRate = try container.decodeIfPresent(Double.self, forKey: .bounceRate)
        self.clickRate = try container.decodeIfPresent(Double.self, forKey: .clickRate)
        self.openRate = try container.decodeIfPresent(Double.self, forKey: .openRate)
        self.type = try container.decodeIfPresent(String.self, forKey: .type)
        self.unopenRate = try container.decodeIfPresent(Double.self, forKey: .unopenRate)
        self.unsubRate = try container.decodeIfPresent(Double.self, forKey: .unsubRate)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.abuseRate, forKey: .abuseRate)
        try container.encodeIfPresent(self.bounceRate, forKey: .bounceRate)
        try container.encodeIfPresent(self.clickRate, forKey: .clickRate)
        try container.encodeIfPresent(self.openRate, forKey: .openRate)
        try container.encodeIfPresent(self.type, forKey: .type)
        try container.encodeIfPresent(self.unopenRate, forKey: .unopenRate)
        try container.encodeIfPresent(self.unsubRate, forKey: .unsubRate)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case abuseRate = "abuse_rate"
        case bounceRate = "bounce_rate"
        case clickRate = "click_rate"
        case openRate = "open_rate"
        case type
        case unopenRate = "unopen_rate"
        case unsubRate = "unsub_rate"
    }
}