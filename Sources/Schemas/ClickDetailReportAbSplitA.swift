import Foundation

/// Stats for Group A.
public struct ClickDetailReportAbSplitA: Codable, Hashable, Sendable {
    /// The percentage of total clicks for Group A.
    public let clickPercentageA: Double?
    /// The total number of clicks for Group A.
    public let totalClicksA: Int?
    /// The percentage of unique clicks for Group A.
    public let uniqueClickPercentageA: Double?
    /// The number of unique clicks for Group A.
    public let uniqueClicksA: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        clickPercentageA: Double? = nil,
        totalClicksA: Int? = nil,
        uniqueClickPercentageA: Double? = nil,
        uniqueClicksA: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.clickPercentageA = clickPercentageA
        self.totalClicksA = totalClicksA
        self.uniqueClickPercentageA = uniqueClickPercentageA
        self.uniqueClicksA = uniqueClicksA
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.clickPercentageA = try container.decodeIfPresent(Double.self, forKey: .clickPercentageA)
        self.totalClicksA = try container.decodeIfPresent(Int.self, forKey: .totalClicksA)
        self.uniqueClickPercentageA = try container.decodeIfPresent(Double.self, forKey: .uniqueClickPercentageA)
        self.uniqueClicksA = try container.decodeIfPresent(Int.self, forKey: .uniqueClicksA)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.clickPercentageA, forKey: .clickPercentageA)
        try container.encodeIfPresent(self.totalClicksA, forKey: .totalClicksA)
        try container.encodeIfPresent(self.uniqueClickPercentageA, forKey: .uniqueClickPercentageA)
        try container.encodeIfPresent(self.uniqueClicksA, forKey: .uniqueClicksA)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case clickPercentageA = "click_percentage_a"
        case totalClicksA = "total_clicks_a"
        case uniqueClickPercentageA = "unique_click_percentage_a"
        case uniqueClicksA = "unique_clicks_a"
    }
}