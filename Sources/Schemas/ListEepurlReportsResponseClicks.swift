import Foundation

/// A summary of the click-throughs on the campaign's URL.
public struct ListEepurlReportsResponseClicks: Codable, Hashable, Sendable {
    /// The total number of clicks to the campaign's URL.
    public let clicks: Int?
    /// The timestamp for the first click to the URL.
    public let firstClick: Date?
    /// The timestamp for the last click to the URL.
    public let lastClick: Date?
    /// A summary of the top click locations.
    public let locations: [ListEepurlReportsResponseClicksLocationsItem]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        clicks: Int? = nil,
        firstClick: Date? = nil,
        lastClick: Date? = nil,
        locations: [ListEepurlReportsResponseClicksLocationsItem]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.clicks = clicks
        self.firstClick = firstClick
        self.lastClick = lastClick
        self.locations = locations
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.clicks = try container.decodeIfPresent(Int.self, forKey: .clicks)
        self.firstClick = try container.decodeIfPresent(Date.self, forKey: .firstClick)
        self.lastClick = try container.decodeIfPresent(Date.self, forKey: .lastClick)
        self.locations = try container.decodeIfPresent([ListEepurlReportsResponseClicksLocationsItem].self, forKey: .locations)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.clicks, forKey: .clicks)
        try container.encodeIfPresent(self.firstClick, forKey: .firstClick)
        try container.encodeIfPresent(self.lastClick, forKey: .lastClick)
        try container.encodeIfPresent(self.locations, forKey: .locations)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case clicks
        case firstClick = "first_click"
        case lastClick = "last_click"
        case locations
    }
}