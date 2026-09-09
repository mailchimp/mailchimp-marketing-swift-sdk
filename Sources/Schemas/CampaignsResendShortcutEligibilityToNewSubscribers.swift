import Foundation

/// Determines if the campaign qualifies to be resent to new subscribers.
public struct CampaignsResendShortcutEligibilityToNewSubscribers: Codable, Hashable, Sendable {
    /// Determines if the campaign qualifies to be resent to this segment.
    public let isEligible: Bool?
    /// The reason the campaign is not eligible to be resent to this segment.
    public let reason: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        isEligible: Bool? = nil,
        reason: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.isEligible = isEligible
        self.reason = reason
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.isEligible = try container.decodeIfPresent(Bool.self, forKey: .isEligible)
        self.reason = try container.decodeIfPresent(String.self, forKey: .reason)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.isEligible, forKey: .isEligible)
        try container.encodeIfPresent(self.reason, forKey: .reason)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case isEligible = "is_eligible"
        case reason
    }
}