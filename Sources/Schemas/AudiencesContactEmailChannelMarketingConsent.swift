import Foundation

/// A contact's current consent status for email marketing communications. See the [Audiences (BETA) documentation](https://mailchimp.com/developer/marketing/docs/audiences-introduction) to learn about supported values.
public struct AudiencesContactEmailChannelMarketingConsent: Codable, Hashable, Sendable {
    /// The source from which the parent's entity was created.
    public let source: AudiencesContactEmailChannelMarketingConsentSource?
    public let status: AudiencesContactEmailChannelMarketingConsentStatus?
    /// The ISO 8601 timestamp when the email marketing consent state was recorded; accepted and returned only when status is `confirmed` or `consented`; defaults to the current time if omitted; ignored if older than an existing stored timestamp (staleness guard).
    public let capturedAt: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        source: AudiencesContactEmailChannelMarketingConsentSource? = nil,
        status: AudiencesContactEmailChannelMarketingConsentStatus? = nil,
        capturedAt: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.source = source
        self.status = status
        self.capturedAt = capturedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.source = try container.decodeIfPresent(AudiencesContactEmailChannelMarketingConsentSource.self, forKey: .source)
        self.status = try container.decodeIfPresent(AudiencesContactEmailChannelMarketingConsentStatus.self, forKey: .status)
        self.capturedAt = try container.decodeIfPresent(Date.self, forKey: .capturedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.source, forKey: .source)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.capturedAt, forKey: .capturedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case source
        case status
        case capturedAt = "captured_at"
    }
}