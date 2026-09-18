import Foundation

public struct PatchAudienceContactRequestSmsChannel: Codable, Hashable, Sendable {
    /// A contact's current consent status for SMS marketing communications. See the [Audiences (BETA) documentation](https://mailchimp.com/developer/marketing/docs/audiences-introduction) to learn about supported values.
    public let marketingConsent: PatchAudienceContactRequestSmsChannelMarketingConsent?
    /// SMS Phone Number
    public let smsPhone: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        marketingConsent: PatchAudienceContactRequestSmsChannelMarketingConsent? = nil,
        smsPhone: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.marketingConsent = marketingConsent
        self.smsPhone = smsPhone
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.marketingConsent = try container.decodeIfPresent(PatchAudienceContactRequestSmsChannelMarketingConsent.self, forKey: .marketingConsent)
        self.smsPhone = try container.decodeIfPresent(String.self, forKey: .smsPhone)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.marketingConsent, forKey: .marketingConsent)
        try container.encodeIfPresent(self.smsPhone, forKey: .smsPhone)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case marketingConsent = "marketing_consent"
        case smsPhone = "sms_phone"
    }
}