import Foundation

/// The [average campaign statistics](https://mailchimp.com/resources/research/email-marketing-benchmarks/?utm_source=mc-api&utm_medium=docs&utm_campaign=apidocs) for all campaigns in the account's specified industry.
public struct ListRootResponseIndustryStats: Codable, Hashable, Sendable {
    /// The average bounce rate for all campaigns in the account's specified industry.
    public let bounceRate: Double?
    /// The average unique click rate for all campaigns in the account's specified industry.
    public let clickRate: Double?
    /// The average unique open rate for all campaigns in the account's specified industry.
    public let openRate: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        bounceRate: Double? = nil,
        clickRate: Double? = nil,
        openRate: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.bounceRate = bounceRate
        self.clickRate = clickRate
        self.openRate = openRate
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.bounceRate = try container.decodeIfPresent(Double.self, forKey: .bounceRate)
        self.clickRate = try container.decodeIfPresent(Double.self, forKey: .clickRate)
        self.openRate = try container.decodeIfPresent(Double.self, forKey: .openRate)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.bounceRate, forKey: .bounceRate)
        try container.encodeIfPresent(self.clickRate, forKey: .clickRate)
        try container.encodeIfPresent(self.openRate, forKey: .openRate)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case bounceRate = "bounce_rate"
        case clickRate = "click_rate"
        case openRate = "open_rate"
    }
}