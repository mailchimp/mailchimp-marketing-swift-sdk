import Foundation

/// A breakdown of clicks by different groups of an A/B Split campaign. Does not return information about Multivariate Campaigns.
public struct ClickDetailReportAbSplit: Codable, Hashable, Sendable {
    /// Stats for Group A.
    public let a: ClickDetailReportAbSplitA?
    /// Stats for Group B.
    public let b: ClickDetailReportAbSplitB?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        a: ClickDetailReportAbSplitA? = nil,
        b: ClickDetailReportAbSplitB? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.a = a
        self.b = b
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.a = try container.decodeIfPresent(ClickDetailReportAbSplitA.self, forKey: .a)
        self.b = try container.decodeIfPresent(ClickDetailReportAbSplitB.self, forKey: .b)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.a, forKey: .a)
        try container.encodeIfPresent(self.b, forKey: .b)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case a
        case b
    }
}