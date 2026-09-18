import Foundation

public struct AudiencesContactSmsChannel: Codable, Hashable, Sendable {
    /// A computation performed by the Mailchimp platform, triggered whenever any of its inputs change. Some inputs are controlled by API users, while others are tracked internally by the platform. Computation is based on: audience opt-in configuration (single vs. double opt-in), marketing consent status, and deliverability status (an internal state for a contact, maintained by Mailchimp for a specific marketing channel instance). This new API field is distinct from how contacts are displayed in the UI. See the [Audiences (BETA) documentation](https://mailchimp.com/developer/marketing/docs/audiences-introduction) to learn about supported values.
    public let effectiveSubscriptionStatus: AudiencesContactSmsChannelEffectiveSubscriptionStatus?
    /// A contact's current consent status for SMS marketing communications. See the [Audiences (BETA) documentation](https://mailchimp.com/developer/marketing/docs/audiences-introduction) to learn about supported values.
    public let marketingConsent: AudiencesContactSmsChannelMarketingConsent?
    /// SMS Phone Number
    public let smsPhone: String?
    /// The source from which the parent's entity was created.
    public let source: AudiencesContactSmsChannelSource?
    /// SHA256 hash of the SMS phone number
    public let hashedSmsPhone: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        effectiveSubscriptionStatus: AudiencesContactSmsChannelEffectiveSubscriptionStatus? = nil,
        marketingConsent: AudiencesContactSmsChannelMarketingConsent? = nil,
        smsPhone: String? = nil,
        source: AudiencesContactSmsChannelSource? = nil,
        hashedSmsPhone: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.effectiveSubscriptionStatus = effectiveSubscriptionStatus
        self.marketingConsent = marketingConsent
        self.smsPhone = smsPhone
        self.source = source
        self.hashedSmsPhone = hashedSmsPhone
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.effectiveSubscriptionStatus = try container.decodeIfPresent(AudiencesContactSmsChannelEffectiveSubscriptionStatus.self, forKey: .effectiveSubscriptionStatus)
        self.marketingConsent = try container.decodeIfPresent(AudiencesContactSmsChannelMarketingConsent.self, forKey: .marketingConsent)
        self.smsPhone = try container.decodeIfPresent(String.self, forKey: .smsPhone)
        self.source = try container.decodeIfPresent(AudiencesContactSmsChannelSource.self, forKey: .source)
        self.hashedSmsPhone = try container.decodeIfPresent(String.self, forKey: .hashedSmsPhone)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.effectiveSubscriptionStatus, forKey: .effectiveSubscriptionStatus)
        try container.encodeIfPresent(self.marketingConsent, forKey: .marketingConsent)
        try container.encodeIfPresent(self.smsPhone, forKey: .smsPhone)
        try container.encodeIfPresent(self.source, forKey: .source)
        try container.encodeIfPresent(self.hashedSmsPhone, forKey: .hashedSmsPhone)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case effectiveSubscriptionStatus = "effective_subscription_status"
        case marketingConsent = "marketing_consent"
        case smsPhone = "sms_phone"
        case source
        case hashedSmsPhone = "hashed_sms_phone"
    }
}