import Foundation

/// [Default values for campaigns](https://mailchimp.com/help/edit-your-emails-subject-preview-text-from-name-or-from-email-address/) created for this list.
public struct SubscriberListCampaignDefaults: Codable, Hashable, Sendable {
    /// The default from email for campaigns sent to this list.
    public let fromEmail: String?
    /// The default from name for campaigns sent to this list.
    public let fromName: String?
    /// The default language for this lists's forms.
    public let language: String?
    /// The default subject line for campaigns sent to this list.
    public let subject: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        fromEmail: String? = nil,
        fromName: String? = nil,
        language: String? = nil,
        subject: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.fromEmail = fromEmail
        self.fromName = fromName
        self.language = language
        self.subject = subject
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.fromEmail = try container.decodeIfPresent(String.self, forKey: .fromEmail)
        self.fromName = try container.decodeIfPresent(String.self, forKey: .fromName)
        self.language = try container.decodeIfPresent(String.self, forKey: .language)
        self.subject = try container.decodeIfPresent(String.self, forKey: .subject)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.fromEmail, forKey: .fromEmail)
        try container.encodeIfPresent(self.fromName, forKey: .fromName)
        try container.encodeIfPresent(self.language, forKey: .language)
        try container.encodeIfPresent(self.subject, forKey: .subject)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case fromEmail = "from_email"
        case fromName = "from_name"
        case language
        case subject
    }
}