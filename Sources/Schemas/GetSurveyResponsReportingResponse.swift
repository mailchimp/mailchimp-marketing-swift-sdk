import Foundation

/// A single survey response.
public struct GetSurveyResponsReportingResponse: Codable, Hashable, Sendable {
    /// Information about the contact.
    public let contact: GetSurveyResponsReportingResponseContact?
    /// If this contact was added to the Mailchimp audience via this survey.
    public let isNewContact: Bool?
    /// The ID for the survey response.
    public let responseId: String?
    /// The survey questions and the answers to those questions.
    public let results: [GetSurveyResponsReportingResponseResultsItem]?
    /// The date and time when the survey response was submitted in ISO 8601 format.
    public let submittedAt: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        contact: GetSurveyResponsReportingResponseContact? = nil,
        isNewContact: Bool? = nil,
        responseId: String? = nil,
        results: [GetSurveyResponsReportingResponseResultsItem]? = nil,
        submittedAt: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.contact = contact
        self.isNewContact = isNewContact
        self.responseId = responseId
        self.results = results
        self.submittedAt = submittedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.contact = try container.decodeIfPresent(GetSurveyResponsReportingResponseContact.self, forKey: .contact)
        self.isNewContact = try container.decodeIfPresent(Bool.self, forKey: .isNewContact)
        self.responseId = try container.decodeIfPresent(String.self, forKey: .responseId)
        self.results = try container.decodeIfPresent([GetSurveyResponsReportingResponseResultsItem].self, forKey: .results)
        self.submittedAt = try container.decodeIfPresent(Date.self, forKey: .submittedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.contact, forKey: .contact)
        try container.encodeIfPresent(self.isNewContact, forKey: .isNewContact)
        try container.encodeIfPresent(self.responseId, forKey: .responseId)
        try container.encodeIfPresent(self.results, forKey: .results)
        try container.encodeIfPresent(self.submittedAt, forKey: .submittedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case contact
        case isNewContact = "is_new_contact"
        case responseId = "response_id"
        case results
        case submittedAt = "submitted_at"
    }
}