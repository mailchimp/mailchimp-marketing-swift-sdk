import Foundation

public struct ListSearchCampaignsResponseResultsItem: Codable, Hashable, Sendable {
    public let campaign: Campaigns?
    public let snippet: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        campaign: Campaigns? = nil,
        snippet: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.campaign = campaign
        self.snippet = snippet
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.campaign = try container.decodeIfPresent(Campaigns.self, forKey: .campaign)
        self.snippet = try container.decodeIfPresent(String.self, forKey: .snippet)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.campaign, forKey: .campaign)
        try container.encodeIfPresent(self.snippet, forKey: .snippet)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case campaign
        case snippet
    }
}