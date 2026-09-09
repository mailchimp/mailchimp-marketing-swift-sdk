import Foundation

public struct CampaignReportTimewarpItem: Codable, Hashable, Sendable {
    /// The number of bounces.
    public let bounces: Int?
    /// The number of clicks.
    public let clicks: Int?
    /// For campaigns sent with timewarp, the time zone group the member is apart of.
    public let gmtOffset: Int?
    /// The date and time of the last click in ISO 8601 format.
    public let lastClick: Date?
    /// The date and time of the last open in ISO 8601 format.
    public let lastOpen: Date?
    /// The number of opens.
    public let opens: Int?
    /// The number of unique clicks.
    public let uniqueClicks: Int?
    /// The number of unique opens.
    public let uniqueOpens: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        bounces: Int? = nil,
        clicks: Int? = nil,
        gmtOffset: Int? = nil,
        lastClick: Date? = nil,
        lastOpen: Date? = nil,
        opens: Int? = nil,
        uniqueClicks: Int? = nil,
        uniqueOpens: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.bounces = bounces
        self.clicks = clicks
        self.gmtOffset = gmtOffset
        self.lastClick = lastClick
        self.lastOpen = lastOpen
        self.opens = opens
        self.uniqueClicks = uniqueClicks
        self.uniqueOpens = uniqueOpens
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.bounces = try container.decodeIfPresent(Int.self, forKey: .bounces)
        self.clicks = try container.decodeIfPresent(Int.self, forKey: .clicks)
        self.gmtOffset = try container.decodeIfPresent(Int.self, forKey: .gmtOffset)
        self.lastClick = try container.decodeIfPresent(Date.self, forKey: .lastClick)
        self.lastOpen = try container.decodeIfPresent(Date.self, forKey: .lastOpen)
        self.opens = try container.decodeIfPresent(Int.self, forKey: .opens)
        self.uniqueClicks = try container.decodeIfPresent(Int.self, forKey: .uniqueClicks)
        self.uniqueOpens = try container.decodeIfPresent(Int.self, forKey: .uniqueOpens)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.bounces, forKey: .bounces)
        try container.encodeIfPresent(self.clicks, forKey: .clicks)
        try container.encodeIfPresent(self.gmtOffset, forKey: .gmtOffset)
        try container.encodeIfPresent(self.lastClick, forKey: .lastClick)
        try container.encodeIfPresent(self.lastOpen, forKey: .lastOpen)
        try container.encodeIfPresent(self.opens, forKey: .opens)
        try container.encodeIfPresent(self.uniqueClicks, forKey: .uniqueClicks)
        try container.encodeIfPresent(self.uniqueOpens, forKey: .uniqueOpens)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case bounces
        case clicks
        case gmtOffset = "gmt_offset"
        case lastClick = "last_click"
        case lastOpen = "last_open"
        case opens
        case uniqueClicks = "unique_clicks"
        case uniqueOpens = "unique_opens"
    }
}