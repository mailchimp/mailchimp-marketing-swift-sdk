import Foundation

/// The verified domains currently on the account.
public struct CreateActionVerifyVerifiedDomainsResponse: Codable, Hashable, Sendable {
    /// Whether domain authentication is enabled for this domain.
    public let authenticated: Bool?
    /// The name of this domain.
    public let domain: String?
    /// Returns whether the domain used is a public / free email provider. See [Limitations of Free Email Addresses](https://mailchimp.com/help/limitations-of-free-email-addresses/) for more details.
    public let isFreeEmailProvider: Bool?
    /// The Domain's current status.
    public let status: CreateActionVerifyVerifiedDomainsResponseStatus?
    /// The e-mail address receiving the two-factor challenge for this domain.
    public let verificationEmail: String?
    /// The date/time that the two-factor challenge was sent to the verification email.
    public let verificationSent: Date?
    /// Whether the domain has been verified for sending.
    public let verified: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        authenticated: Bool? = nil,
        domain: String? = nil,
        isFreeEmailProvider: Bool? = nil,
        status: CreateActionVerifyVerifiedDomainsResponseStatus? = nil,
        verificationEmail: String? = nil,
        verificationSent: Date? = nil,
        verified: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.authenticated = authenticated
        self.domain = domain
        self.isFreeEmailProvider = isFreeEmailProvider
        self.status = status
        self.verificationEmail = verificationEmail
        self.verificationSent = verificationSent
        self.verified = verified
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.authenticated = try container.decodeIfPresent(Bool.self, forKey: .authenticated)
        self.domain = try container.decodeIfPresent(String.self, forKey: .domain)
        self.isFreeEmailProvider = try container.decodeIfPresent(Bool.self, forKey: .isFreeEmailProvider)
        self.status = try container.decodeIfPresent(CreateActionVerifyVerifiedDomainsResponseStatus.self, forKey: .status)
        self.verificationEmail = try container.decodeIfPresent(String.self, forKey: .verificationEmail)
        self.verificationSent = try container.decodeIfPresent(Date.self, forKey: .verificationSent)
        self.verified = try container.decodeIfPresent(Bool.self, forKey: .verified)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.authenticated, forKey: .authenticated)
        try container.encodeIfPresent(self.domain, forKey: .domain)
        try container.encodeIfPresent(self.isFreeEmailProvider, forKey: .isFreeEmailProvider)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.verificationEmail, forKey: .verificationEmail)
        try container.encodeIfPresent(self.verificationSent, forKey: .verificationSent)
        try container.encodeIfPresent(self.verified, forKey: .verified)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case authenticated
        case domain
        case isFreeEmailProvider = "is_free_email_provider"
        case status
        case verificationEmail = "verification_email"
        case verificationSent = "verification_sent"
        case verified
    }
}