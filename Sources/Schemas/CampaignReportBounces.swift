import Foundation

/// An object describing the bounce summary for the campaign.
public struct CampaignReportBounces: Codable, Hashable, Sendable {
    /// The total number of hard bounced email addresses.
    public let hardBounces: Int?
    /// The total number of soft bounced email addresses.
    public let softBounces: Int?
    /// The total number of addresses that were syntax-related bounces.
    public let syntaxErrors: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        hardBounces: Int? = nil,
        softBounces: Int? = nil,
        syntaxErrors: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.hardBounces = hardBounces
        self.softBounces = softBounces
        self.syntaxErrors = syntaxErrors
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.hardBounces = try container.decodeIfPresent(Int.self, forKey: .hardBounces)
        self.softBounces = try container.decodeIfPresent(Int.self, forKey: .softBounces)
        self.syntaxErrors = try container.decodeIfPresent(Int.self, forKey: .syntaxErrors)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.hardBounces, forKey: .hardBounces)
        try container.encodeIfPresent(self.softBounces, forKey: .softBounces)
        try container.encodeIfPresent(self.syntaxErrors, forKey: .syntaxErrors)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case hardBounces = "hard_bounces"
        case softBounces = "soft_bounces"
        case syntaxErrors = "syntax_errors"
    }
}