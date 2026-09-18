import Foundation

/// A contact's current consent status for SMS marketing communications. See the [Audiences (BETA) documentation](https://mailchimp.com/developer/marketing/docs/audiences-introduction) to learn about supported values.
public struct AudiencesContactSmsChannelMarketingConsent: Codable, Hashable, Sendable {
    /// The source from which the parent's entity was created.
    public let source: AudiencesContactSmsChannelMarketingConsentSource?
    /// The contact's SMS marketing consent status. Use `confirmed` for double opt-in audiences, `consented` for single opt-in audiences. `denied` is accepted on PATCH/PUT only (not POST) and drives an API-initiated unsubscribe; it cannot be used when creating a new contact.
    public let status: AudiencesContactSmsChannelMarketingConsentStatus?
    /// The timestamp when SMS marketing consent was captured (ISO 8601). Only accepted and returned when status is `confirmed`. The timestamp of the consent state change being recorded. Defaults to the current time if not provided. If the contact already has a consent timestamp on record that is equal to or newer than the supplied value, the supplied value is ignored (staleness guard); to update the consent timestamp supply a value strictly newer than the stored one.
    public let capturedAt: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        source: AudiencesContactSmsChannelMarketingConsentSource? = nil,
        status: AudiencesContactSmsChannelMarketingConsentStatus? = nil,
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
        self.source = try container.decodeIfPresent(AudiencesContactSmsChannelMarketingConsentSource.self, forKey: .source)
        self.status = try container.decodeIfPresent(AudiencesContactSmsChannelMarketingConsentStatus.self, forKey: .status)
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