import Foundation

/// A single instance of a campaign referral.
public struct ListEepurlReportsResponseReferrersItem: Codable, Hashable, Sendable {
    /// The number of clicks a single referrer generated.
    public let clicks: Int?
    /// The timestamp for the first click from this referrer.
    public let firstClick: Date?
    /// The timestamp for the last click from this referrer.
    public let lastClick: Date?
    /// A referrer (truncated to 100 bytes).
    public let referrer: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        clicks: Int? = nil,
        firstClick: Date? = nil,
        lastClick: Date? = nil,
        referrer: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.clicks = clicks
        self.firstClick = firstClick
        self.lastClick = lastClick
        self.referrer = referrer
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.clicks = try container.decodeIfPresent(Int.self, forKey: .clicks)
        self.firstClick = try container.decodeIfPresent(Date.self, forKey: .firstClick)
        self.lastClick = try container.decodeIfPresent(Date.self, forKey: .lastClick)
        self.referrer = try container.decodeIfPresent(String.self, forKey: .referrer)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.clicks, forKey: .clicks)
        try container.encodeIfPresent(self.firstClick, forKey: .firstClick)
        try container.encodeIfPresent(self.lastClick, forKey: .lastClick)
        try container.encodeIfPresent(self.referrer, forKey: .referrer)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case clicks
        case firstClick = "first_click"
        case lastClick = "last_click"
        case referrer
    }
}