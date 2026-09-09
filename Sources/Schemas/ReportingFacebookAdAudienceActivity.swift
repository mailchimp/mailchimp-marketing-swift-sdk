import Foundation

public struct ReportingFacebookAdAudienceActivity: Codable, Hashable, Sendable {
    public let clicks: [ReportingFacebookAdAudienceActivityClicksItem]?
    public let impressions: [ReportingFacebookAdAudienceActivityImpressionsItem]?
    public let revenue: [ReportingFacebookAdAudienceActivityRevenueItem]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        clicks: [ReportingFacebookAdAudienceActivityClicksItem]? = nil,
        impressions: [ReportingFacebookAdAudienceActivityImpressionsItem]? = nil,
        revenue: [ReportingFacebookAdAudienceActivityRevenueItem]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.clicks = clicks
        self.impressions = impressions
        self.revenue = revenue
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.clicks = try container.decodeIfPresent([ReportingFacebookAdAudienceActivityClicksItem].self, forKey: .clicks)
        self.impressions = try container.decodeIfPresent([ReportingFacebookAdAudienceActivityImpressionsItem].self, forKey: .impressions)
        self.revenue = try container.decodeIfPresent([ReportingFacebookAdAudienceActivityRevenueItem].self, forKey: .revenue)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.clicks, forKey: .clicks)
        try container.encodeIfPresent(self.impressions, forKey: .impressions)
        try container.encodeIfPresent(self.revenue, forKey: .revenue)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case clicks
        case impressions
        case revenue
    }
}