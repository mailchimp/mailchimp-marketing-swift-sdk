import Foundation

/// Stats for Group B.
public struct ClickDetailReportAbSplitB: Codable, Hashable, Sendable {
    /// The percentage of total clicks for Group B.
    public let clickPercentageB: Double?
    /// The total number of clicks for Group B.
    public let totalClicksB: Int?
    /// The percentage of unique clicks for Group B.
    public let uniqueClickPercentageB: Double?
    /// The number of unique clicks for Group B.
    public let uniqueClicksB: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        clickPercentageB: Double? = nil,
        totalClicksB: Int? = nil,
        uniqueClickPercentageB: Double? = nil,
        uniqueClicksB: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.clickPercentageB = clickPercentageB
        self.totalClicksB = totalClicksB
        self.uniqueClickPercentageB = uniqueClickPercentageB
        self.uniqueClicksB = uniqueClicksB
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.clickPercentageB = try container.decodeIfPresent(Double.self, forKey: .clickPercentageB)
        self.totalClicksB = try container.decodeIfPresent(Int.self, forKey: .totalClicksB)
        self.uniqueClickPercentageB = try container.decodeIfPresent(Double.self, forKey: .uniqueClickPercentageB)
        self.uniqueClicksB = try container.decodeIfPresent(Int.self, forKey: .uniqueClicksB)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.clickPercentageB, forKey: .clickPercentageB)
        try container.encodeIfPresent(self.totalClicksB, forKey: .totalClicksB)
        try container.encodeIfPresent(self.uniqueClickPercentageB, forKey: .uniqueClickPercentageB)
        try container.encodeIfPresent(self.uniqueClicksB, forKey: .uniqueClicksB)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case clickPercentageB = "click_percentage_b"
        case totalClicksB = "total_clicks_b"
        case uniqueClickPercentageB = "unique_click_percentage_b"
        case uniqueClicksB = "unique_clicks_b"
    }
}