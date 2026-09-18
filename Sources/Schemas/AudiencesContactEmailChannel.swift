import Foundation

public struct AudiencesContactEmailChannel: Codable, Hashable, Sendable {
    /// A computation performed by the Mailchimp platform, triggered whenever any of its inputs change. Some inputs are controlled by API users, while others are tracked internally by the platform. Computation is based on: audience opt-in configuration (single vs. double opt-in), marketing consent status, and deliverability status (an internal state for a contact, maintained by Mailchimp for a specific marketing channel instance). This new API field is distinct from how contacts are displayed in the UI. See the [Audiences (BETA) documentation](https://mailchimp.com/developer/marketing/docs/audiences-introduction) to learn about supported values.
    public let effectiveSubscriptionStatus: AudiencesContactEmailChannelEffectiveSubscriptionStatus?
    /// Email address
    public let email: String?
    /// MD5 hash of the email address
    public let hashedEmail: String?
    /// A contact's current consent status for email marketing communications. See the [Audiences (BETA) documentation](https://mailchimp.com/developer/marketing/docs/audiences-introduction) to learn about supported values.
    public let marketingConsent: AudiencesContactEmailChannelMarketingConsent?
    /// The source from which the parent's entity was created.
    public let source: AudiencesContactEmailChannelSource?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        effectiveSubscriptionStatus: AudiencesContactEmailChannelEffectiveSubscriptionStatus? = nil,
        email: String? = nil,
        hashedEmail: String? = nil,
        marketingConsent: AudiencesContactEmailChannelMarketingConsent? = nil,
        source: AudiencesContactEmailChannelSource? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.effectiveSubscriptionStatus = effectiveSubscriptionStatus
        self.email = email
        self.hashedEmail = hashedEmail
        self.marketingConsent = marketingConsent
        self.source = source
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.effectiveSubscriptionStatus = try container.decodeIfPresent(AudiencesContactEmailChannelEffectiveSubscriptionStatus.self, forKey: .effectiveSubscriptionStatus)
        self.email = try container.decodeIfPresent(String.self, forKey: .email)
        self.hashedEmail = try container.decodeIfPresent(String.self, forKey: .hashedEmail)
        self.marketingConsent = try container.decodeIfPresent(AudiencesContactEmailChannelMarketingConsent.self, forKey: .marketingConsent)
        self.source = try container.decodeIfPresent(AudiencesContactEmailChannelSource.self, forKey: .source)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.effectiveSubscriptionStatus, forKey: .effectiveSubscriptionStatus)
        try container.encodeIfPresent(self.email, forKey: .email)
        try container.encodeIfPresent(self.hashedEmail, forKey: .hashedEmail)
        try container.encodeIfPresent(self.marketingConsent, forKey: .marketingConsent)
        try container.encodeIfPresent(self.source, forKey: .source)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case effectiveSubscriptionStatus = "effective_subscription_status"
        case email
        case hashedEmail = "hashed_email"
        case marketingConsent = "marketing_consent"
        case source
    }
}