import Foundation

/// An object describing the forwards and forward activity for the campaign.
public struct CampaignReportForwards: Codable, Hashable, Sendable {
    /// How many times the campaign has been forwarded.
    public let forwardsCount: Int?
    /// How many times the forwarded campaign has been opened.
    public let forwardsOpens: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        forwardsCount: Int? = nil,
        forwardsOpens: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.forwardsCount = forwardsCount
        self.forwardsOpens = forwardsOpens
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.forwardsCount = try container.decodeIfPresent(Int.self, forKey: .forwardsCount)
        self.forwardsOpens = try container.decodeIfPresent(Int.self, forKey: .forwardsOpens)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.forwardsCount, forKey: .forwardsCount)
        try container.encodeIfPresent(self.forwardsOpens, forKey: .forwardsOpens)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case forwardsCount = "forwards_count"
        case forwardsOpens = "forwards_opens"
    }
}