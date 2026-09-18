import Foundation

/// A contact's current consent status for email marketing communications. See the [Audiences (BETA) documentation](https://mailchimp.com/developer/marketing/docs/audiences-introduction) to learn about supported values.
public struct CreateAudienceContactRequestEmailChannelMarketingConsent: Codable, Hashable, Sendable {
    /// Status of a contacts Marketing Consent
    public let status: CreateAudienceContactRequestEmailChannelMarketingConsentStatus?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        status: CreateAudienceContactRequestEmailChannelMarketingConsentStatus? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.status = status
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.status = try container.decodeIfPresent(CreateAudienceContactRequestEmailChannelMarketingConsentStatus.self, forKey: .status)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.status, forKey: .status)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case status
    }
}