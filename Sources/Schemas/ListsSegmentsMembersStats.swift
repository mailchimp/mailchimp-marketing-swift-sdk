import Foundation

/// Open and click rates for this subscriber.
public struct ListsSegmentsMembersStats: Codable, Hashable, Sendable {
    /// A subscriber's average clickthrough rate.
    public let avgClickRate: Double?
    /// A subscriber's average open rate.
    public let avgOpenRate: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        avgClickRate: Double? = nil,
        avgOpenRate: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.avgClickRate = avgClickRate
        self.avgOpenRate = avgOpenRate
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.avgClickRate = try container.decodeIfPresent(Double.self, forKey: .avgClickRate)
        self.avgOpenRate = try container.decodeIfPresent(Double.self, forKey: .avgOpenRate)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.avgClickRate, forKey: .avgClickRate)
        try container.encodeIfPresent(self.avgOpenRate, forKey: .avgOpenRate)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case avgClickRate = "avg_click_rate"
        case avgOpenRate = "avg_open_rate"
    }
}