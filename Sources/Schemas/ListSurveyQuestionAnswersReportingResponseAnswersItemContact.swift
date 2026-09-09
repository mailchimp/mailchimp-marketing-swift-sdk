import Foundation

/// Information about the contact.
public struct ListSurveyQuestionAnswersReportingResponseAnswersItemContact: Codable, Hashable, Sendable {
    /// URL for the contact's avatar or profile image.
    public let avatarUrl: String?
    /// Indicates whether a contact consents to 1:1 messaging.
    public let consentsToOneToOneMessaging: Bool?
    /// The ID of this contact.
    public let contactId: String?
    /// The contact's email address.
    public let email: String?
    /// The MD5 hash of the lowercase version of the list member's email address.
    public let emailId: String?
    /// The contact's full name.
    public let fullName: String?
    /// The contact's sms phone number.
    public let phone: String?
    /// The contact's current status.
    public let status: ListSurveyQuestionAnswersReportingResponseAnswersItemContactStatus?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        avatarUrl: String? = nil,
        consentsToOneToOneMessaging: Bool? = nil,
        contactId: String? = nil,
        email: String? = nil,
        emailId: String? = nil,
        fullName: String? = nil,
        phone: String? = nil,
        status: ListSurveyQuestionAnswersReportingResponseAnswersItemContactStatus? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.avatarUrl = avatarUrl
        self.consentsToOneToOneMessaging = consentsToOneToOneMessaging
        self.contactId = contactId
        self.email = email
        self.emailId = emailId
        self.fullName = fullName
        self.phone = phone
        self.status = status
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.avatarUrl = try container.decodeIfPresent(String.self, forKey: .avatarUrl)
        self.consentsToOneToOneMessaging = try container.decodeIfPresent(Bool.self, forKey: .consentsToOneToOneMessaging)
        self.contactId = try container.decodeIfPresent(String.self, forKey: .contactId)
        self.email = try container.decodeIfPresent(String.self, forKey: .email)
        self.emailId = try container.decodeIfPresent(String.self, forKey: .emailId)
        self.fullName = try container.decodeIfPresent(String.self, forKey: .fullName)
        self.phone = try container.decodeIfPresent(String.self, forKey: .phone)
        self.status = try container.decodeIfPresent(ListSurveyQuestionAnswersReportingResponseAnswersItemContactStatus.self, forKey: .status)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.avatarUrl, forKey: .avatarUrl)
        try container.encodeIfPresent(self.consentsToOneToOneMessaging, forKey: .consentsToOneToOneMessaging)
        try container.encodeIfPresent(self.contactId, forKey: .contactId)
        try container.encodeIfPresent(self.email, forKey: .email)
        try container.encodeIfPresent(self.emailId, forKey: .emailId)
        try container.encodeIfPresent(self.fullName, forKey: .fullName)
        try container.encodeIfPresent(self.phone, forKey: .phone)
        try container.encodeIfPresent(self.status, forKey: .status)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case avatarUrl = "avatar_url"
        case consentsToOneToOneMessaging = "consents_to_one_to_one_messaging"
        case contactId = "contact_id"
        case email
        case emailId = "email_id"
        case fullName = "full_name"
        case phone
        case status
    }
}