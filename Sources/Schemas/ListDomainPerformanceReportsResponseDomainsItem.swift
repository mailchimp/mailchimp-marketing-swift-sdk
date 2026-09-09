import Foundation

/// A single email domain's performance
public struct ListDomainPerformanceReportsResponseDomainsItem: Codable, Hashable, Sendable {
    /// The number of bounces at a domain.
    public let bounces: Int?
    /// The percentage of total bounces from this domain.
    public let bouncesPct: Double?
    /// The number of clicks for a domain.
    public let clicks: Int?
    /// The percentage of total clicks from this domain.
    public let clicksPct: Double?
    /// The number of successful deliveries for a domain.
    public let delivered: Int?
    /// The name of the domain (gmail.com, hotmail.com, yahoo.com).
    public let domain: String?
    /// The percentage of total emails that went to this domain.
    public let emailsPct: Double?
    /// The number of emails sent to that specific domain.
    public let emailsSent: Int?
    /// The number of opens for a domain.
    public let opens: Int?
    /// The percentage of total opens from this domain.
    public let opensPct: Double?
    /// The total number of unsubscribes for a domain.
    public let unsubs: Int?
    /// The percentage of total unsubscribes from this domain.
    public let unsubsPct: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        bounces: Int? = nil,
        bouncesPct: Double? = nil,
        clicks: Int? = nil,
        clicksPct: Double? = nil,
        delivered: Int? = nil,
        domain: String? = nil,
        emailsPct: Double? = nil,
        emailsSent: Int? = nil,
        opens: Int? = nil,
        opensPct: Double? = nil,
        unsubs: Int? = nil,
        unsubsPct: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.bounces = bounces
        self.bouncesPct = bouncesPct
        self.clicks = clicks
        self.clicksPct = clicksPct
        self.delivered = delivered
        self.domain = domain
        self.emailsPct = emailsPct
        self.emailsSent = emailsSent
        self.opens = opens
        self.opensPct = opensPct
        self.unsubs = unsubs
        self.unsubsPct = unsubsPct
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.bounces = try container.decodeIfPresent(Int.self, forKey: .bounces)
        self.bouncesPct = try container.decodeIfPresent(Double.self, forKey: .bouncesPct)
        self.clicks = try container.decodeIfPresent(Int.self, forKey: .clicks)
        self.clicksPct = try container.decodeIfPresent(Double.self, forKey: .clicksPct)
        self.delivered = try container.decodeIfPresent(Int.self, forKey: .delivered)
        self.domain = try container.decodeIfPresent(String.self, forKey: .domain)
        self.emailsPct = try container.decodeIfPresent(Double.self, forKey: .emailsPct)
        self.emailsSent = try container.decodeIfPresent(Int.self, forKey: .emailsSent)
        self.opens = try container.decodeIfPresent(Int.self, forKey: .opens)
        self.opensPct = try container.decodeIfPresent(Double.self, forKey: .opensPct)
        self.unsubs = try container.decodeIfPresent(Int.self, forKey: .unsubs)
        self.unsubsPct = try container.decodeIfPresent(Double.self, forKey: .unsubsPct)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.bounces, forKey: .bounces)
        try container.encodeIfPresent(self.bouncesPct, forKey: .bouncesPct)
        try container.encodeIfPresent(self.clicks, forKey: .clicks)
        try container.encodeIfPresent(self.clicksPct, forKey: .clicksPct)
        try container.encodeIfPresent(self.delivered, forKey: .delivered)
        try container.encodeIfPresent(self.domain, forKey: .domain)
        try container.encodeIfPresent(self.emailsPct, forKey: .emailsPct)
        try container.encodeIfPresent(self.emailsSent, forKey: .emailsSent)
        try container.encodeIfPresent(self.opens, forKey: .opens)
        try container.encodeIfPresent(self.opensPct, forKey: .opensPct)
        try container.encodeIfPresent(self.unsubs, forKey: .unsubs)
        try container.encodeIfPresent(self.unsubsPct, forKey: .unsubsPct)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case bounces
        case bouncesPct = "bounces_pct"
        case clicks
        case clicksPct = "clicks_pct"
        case delivered
        case domain
        case emailsPct = "emails_pct"
        case emailsSent = "emails_sent"
        case opens
        case opensPct = "opens_pct"
        case unsubs
        case unsubsPct = "unsubs_pct"
    }
}