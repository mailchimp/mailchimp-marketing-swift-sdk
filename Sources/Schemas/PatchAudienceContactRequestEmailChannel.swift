import Foundation

public struct PatchAudienceContactRequestEmailChannel: Codable, Hashable, Sendable {
    /// Email address
    public let email: String?
    /// A contact's current consent status for email marketing communications. See the [Audiences (BETA) documentation](https://mailchimp.com/developer/marketing/docs/audiences-introduction) to learn about supported values.
    public let marketingConsent: PatchAudienceContactRequestEmailChannelMarketingConsent?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        email: String? = nil,
        marketingConsent: PatchAudienceContactRequestEmailChannelMarketingConsent? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.email = email
        self.marketingConsent = marketingConsent
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.email = try container.decodeIfPresent(String.self, forKey: .email)
        self.marketingConsent = try container.decodeIfPresent(PatchAudienceContactRequestEmailChannelMarketingConsent.self, forKey: .marketingConsent)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.email, forKey: .email)
        try container.encodeIfPresent(self.marketingConsent, forKey: .marketingConsent)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case email
        case marketingConsent = "marketing_consent"
    }
}