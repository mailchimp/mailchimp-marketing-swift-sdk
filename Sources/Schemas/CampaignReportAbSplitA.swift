import Foundation

/// Stats for Campaign A.
public struct CampaignReportAbSplitA: Codable, Hashable, Sendable {
    /// Abuse reports for Campaign A.
    public let abuseReports: Int?
    /// Bounces for Campaign A.
    public let bounces: Int?
    /// Forwards for Campaign A.
    public let forwards: Int?
    /// Opens from forwards for Campaign A.
    public let forwardsOpens: Int?
    /// The last open for Campaign A.
    public let lastOpen: String?
    /// Opens for Campaign A.
    public let opens: Int?
    /// Recipient Clicks for Campaign A.
    public let recipientClicks: Int?
    /// Unique opens for Campaign A.
    public let uniqueOpens: Int?
    /// Unsubscribes for Campaign A.
    public let unsubs: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        abuseReports: Int? = nil,
        bounces: Int? = nil,
        forwards: Int? = nil,
        forwardsOpens: Int? = nil,
        lastOpen: String? = nil,
        opens: Int? = nil,
        recipientClicks: Int? = nil,
        uniqueOpens: Int? = nil,
        unsubs: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.abuseReports = abuseReports
        self.bounces = bounces
        self.forwards = forwards
        self.forwardsOpens = forwardsOpens
        self.lastOpen = lastOpen
        self.opens = opens
        self.recipientClicks = recipientClicks
        self.uniqueOpens = uniqueOpens
        self.unsubs = unsubs
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.abuseReports = try container.decodeIfPresent(Int.self, forKey: .abuseReports)
        self.bounces = try container.decodeIfPresent(Int.self, forKey: .bounces)
        self.forwards = try container.decodeIfPresent(Int.self, forKey: .forwards)
        self.forwardsOpens = try container.decodeIfPresent(Int.self, forKey: .forwardsOpens)
        self.lastOpen = try container.decodeIfPresent(String.self, forKey: .lastOpen)
        self.opens = try container.decodeIfPresent(Int.self, forKey: .opens)
        self.recipientClicks = try container.decodeIfPresent(Int.self, forKey: .recipientClicks)
        self.uniqueOpens = try container.decodeIfPresent(Int.self, forKey: .uniqueOpens)
        self.unsubs = try container.decodeIfPresent(Int.self, forKey: .unsubs)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.abuseReports, forKey: .abuseReports)
        try container.encodeIfPresent(self.bounces, forKey: .bounces)
        try container.encodeIfPresent(self.forwards, forKey: .forwards)
        try container.encodeIfPresent(self.forwardsOpens, forKey: .forwardsOpens)
        try container.encodeIfPresent(self.lastOpen, forKey: .lastOpen)
        try container.encodeIfPresent(self.opens, forKey: .opens)
        try container.encodeIfPresent(self.recipientClicks, forKey: .recipientClicks)
        try container.encodeIfPresent(self.uniqueOpens, forKey: .uniqueOpens)
        try container.encodeIfPresent(self.unsubs, forKey: .unsubs)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case abuseReports = "abuse_reports"
        case bounces
        case forwards
        case forwardsOpens = "forwards_opens"
        case lastOpen = "last_open"
        case opens
        case recipientClicks = "recipient_clicks"
        case uniqueOpens = "unique_opens"
        case unsubs
    }
}