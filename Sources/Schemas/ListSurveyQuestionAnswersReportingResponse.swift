import Foundation

public struct ListSurveyQuestionAnswersReportingResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListSurveyQuestionAnswersReportingResponseLinksItem]?
    /// An array of answers for a question on the survey.
    public let answers: [ListSurveyQuestionAnswersReportingResponseAnswersItem]?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListSurveyQuestionAnswersReportingResponseLinksItem]? = nil,
        answers: [ListSurveyQuestionAnswersReportingResponseAnswersItem]? = nil,
        totalItems: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.answers = answers
        self.totalItems = totalItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListSurveyQuestionAnswersReportingResponseLinksItem].self, forKey: .links)
        self.answers = try container.decodeIfPresent([ListSurveyQuestionAnswersReportingResponseAnswersItem].self, forKey: .answers)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.answers, forKey: .answers)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case answers
        case totalItems = "total_items"
    }
}