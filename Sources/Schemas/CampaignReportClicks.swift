import Foundation

/// An object describing the click activity for the campaign.
public struct CampaignReportClicks: Codable, Hashable, Sendable {
    /// The number of unique clicks divided by the total number of successful deliveries.
    public let clickRate: Double?
    /// The total number of clicks for the campaign.
    public let clicksTotal: Int?
    /// The date and time of the last recorded click for the campaign in ISO 8601 format.
    public let lastClick: Date?
    /// The total number of unique clicks for links across a campaign.
    public let uniqueClicks: Int?
    /// The total number of subscribers who clicked on a campaign.
    public let uniqueSubscriberClicks: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        clickRate: Double? = nil,
        clicksTotal: Int? = nil,
        lastClick: Date? = nil,
        uniqueClicks: Int? = nil,
        uniqueSubscriberClicks: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.clickRate = clickRate
        self.clicksTotal = clicksTotal
        self.lastClick = lastClick
        self.uniqueClicks = uniqueClicks
        self.uniqueSubscriberClicks = uniqueSubscriberClicks
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.clickRate = try container.decodeIfPresent(Double.self, forKey: .clickRate)
        self.clicksTotal = try container.decodeIfPresent(Int.self, forKey: .clicksTotal)
        self.lastClick = try container.decodeIfPresent(Date.self, forKey: .lastClick)
        self.uniqueClicks = try container.decodeIfPresent(Int.self, forKey: .uniqueClicks)
        self.uniqueSubscriberClicks = try container.decodeIfPresent(Int.self, forKey: .uniqueSubscriberClicks)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.clickRate, forKey: .clickRate)
        try container.encodeIfPresent(self.clicksTotal, forKey: .clicksTotal)
        try container.encodeIfPresent(self.lastClick, forKey: .lastClick)
        try container.encodeIfPresent(self.uniqueClicks, forKey: .uniqueClicks)
        try container.encodeIfPresent(self.uniqueSubscriberClicks, forKey: .uniqueSubscriberClicks)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case clickRate = "click_rate"
        case clicksTotal = "clicks_total"
        case lastClick = "last_click"
        case uniqueClicks = "unique_clicks"
        case uniqueSubscriberClicks = "unique_subscriber_clicks"
    }
}