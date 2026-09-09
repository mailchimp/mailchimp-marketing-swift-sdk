import Foundation

/// General stats about different groups of an A/B Split campaign. Does not return information about Multivariate Campaigns.
public struct CampaignReportAbSplit: Codable, Hashable, Sendable {
    /// Stats for Campaign A.
    public let a: CampaignReportAbSplitA?
    /// Stats for Campaign B.
    public let b: CampaignReportAbSplitB?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        a: CampaignReportAbSplitA? = nil,
        b: CampaignReportAbSplitB? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.a = a
        self.b = b
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.a = try container.decodeIfPresent(CampaignReportAbSplitA.self, forKey: .a)
        self.b = try container.decodeIfPresent(CampaignReportAbSplitB.self, forKey: .b)
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