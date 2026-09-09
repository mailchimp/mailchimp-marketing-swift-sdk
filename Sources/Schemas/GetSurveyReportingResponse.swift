import Foundation

/// The report for a survey.
public struct GetSurveyReportingResponse: Codable, Hashable, Sendable {
    /// The date and time the survey was created in ISO 8601 format.
    public let createdAt: Date?
    /// A string that uniquely identifies this survey.
    public let id: String?
    /// The ID of the list connected to this survey.
    public let listId: String?
    /// The name of the list connected to this survey.
    public let listName: String?
    /// The date and time the survey was published in ISO 8601 format.
    public let publishedAt: Date?
    /// The survey's status.
    public let status: GetSurveyReportingResponseStatus?
    /// The title of the survey.
    public let title: String?
    /// The total number of responses to this survey.
    public let totalResponses: Int?
    /// The date and time the survey was last updated in ISO 8601 format.
    public let updatedAt: Date?
    /// The URL for the survey.
    public let url: String?
    /// The ID used in the Mailchimp web application. View this survey report in your Mailchimp account at `https://{dc}.admin.mailchimp.com/lists/surveys/results?survey_id={web_id}`.
    public let webId: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        createdAt: Date? = nil,
        id: String? = nil,
        listId: String? = nil,
        listName: String? = nil,
        publishedAt: Date? = nil,
        status: GetSurveyReportingResponseStatus? = nil,
        title: String? = nil,
        totalResponses: Int? = nil,
        updatedAt: Date? = nil,
        url: String? = nil,
        webId: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.createdAt = createdAt
        self.id = id
        self.listId = listId
        self.listName = listName
        self.publishedAt = publishedAt
        self.status = status
        self.title = title
        self.totalResponses = totalResponses
        self.updatedAt = updatedAt
        self.url = url
        self.webId = webId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.createdAt = try container.decodeIfPresent(Date.self, forKey: .createdAt)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.listName = try container.decodeIfPresent(String.self, forKey: .listName)
        self.publishedAt = try container.decodeIfPresent(Date.self, forKey: .publishedAt)
        self.status = try container.decodeIfPresent(GetSurveyReportingResponseStatus.self, forKey: .status)
        self.title = try container.decodeIfPresent(String.self, forKey: .title)
        self.totalResponses = try container.decodeIfPresent(Int.self, forKey: .totalResponses)
        self.updatedAt = try container.decodeIfPresent(Date.self, forKey: .updatedAt)
        self.url = try container.decodeIfPresent(String.self, forKey: .url)
        self.webId = try container.decodeIfPresent(Int.self, forKey: .webId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.createdAt, forKey: .createdAt)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.listName, forKey: .listName)
        try container.encodeIfPresent(self.publishedAt, forKey: .publishedAt)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.title, forKey: .title)
        try container.encodeIfPresent(self.totalResponses, forKey: .totalResponses)
        try container.encodeIfPresent(self.updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(self.url, forKey: .url)
        try container.encodeIfPresent(self.webId, forKey: .webId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case createdAt = "created_at"
        case id
        case listId = "list_id"
        case listName = "list_name"
        case publishedAt = "published_at"
        case status
        case title
        case totalResponses = "total_responses"
        case updatedAt = "updated_at"
        case url
        case webId = "web_id"
    }
}