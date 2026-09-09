import Foundation

/// The details of a survey question's answer.
public struct ListSurveyQuestionAnswersReportingResponseAnswersItem: Codable, Hashable, Sendable {
    /// Information about the contact.
    public let contact: ListSurveyQuestionAnswersReportingResponseAnswersItemContact?
    /// The ID of the answer.
    public let id: String?
    /// If this contact was added to the Mailchimp audience via this survey.
    public let isNewContact: Bool?
    /// The ID of the survey response.
    public let responseId: String?
    /// The date and time when the survey response was submitted in ISO 8601 format.
    public let submittedAt: Date?
    /// The raw text answer.
    public let value: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        contact: ListSurveyQuestionAnswersReportingResponseAnswersItemContact? = nil,
        id: String? = nil,
        isNewContact: Bool? = nil,
        responseId: String? = nil,
        submittedAt: Date? = nil,
        value: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.contact = contact
        self.id = id
        self.isNewContact = isNewContact
        self.responseId = responseId
        self.submittedAt = submittedAt
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.contact = try container.decodeIfPresent(ListSurveyQuestionAnswersReportingResponseAnswersItemContact.self, forKey: .contact)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.isNewContact = try container.decodeIfPresent(Bool.self, forKey: .isNewContact)
        self.responseId = try container.decodeIfPresent(String.self, forKey: .responseId)
        self.submittedAt = try container.decodeIfPresent(Date.self, forKey: .submittedAt)
        self.value = try container.decodeIfPresent(String.self, forKey: .value)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.contact, forKey: .contact)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.isNewContact, forKey: .isNewContact)
        try container.encodeIfPresent(self.responseId, forKey: .responseId)
        try container.encodeIfPresent(self.submittedAt, forKey: .submittedAt)
        try container.encodeIfPresent(self.value, forKey: .value)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case contact
        case id
        case isNewContact = "is_new_contact"
        case responseId = "response_id"
        case submittedAt = "submitted_at"
        case value
    }
}