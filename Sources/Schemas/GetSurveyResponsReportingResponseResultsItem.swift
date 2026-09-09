import Foundation

/// A single question and the response to that question.
public struct GetSurveyResponsReportingResponseResultsItem: Codable, Hashable, Sendable {
    /// The answer to this survey question.
    public let answer: String?
    /// The survey question.
    public let query: String?
    /// The unique ID for this question.
    public let questionId: String?
    /// The type of question this is.
    public let questionType: GetSurveyResponsReportingResponseResultsItemQuestionType?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        answer: String? = nil,
        query: String? = nil,
        questionId: String? = nil,
        questionType: GetSurveyResponsReportingResponseResultsItemQuestionType? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.answer = answer
        self.query = query
        self.questionId = questionId
        self.questionType = questionType
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.answer = try container.decodeIfPresent(String.self, forKey: .answer)
        self.query = try container.decodeIfPresent(String.self, forKey: .query)
        self.questionId = try container.decodeIfPresent(String.self, forKey: .questionId)
        self.questionType = try container.decodeIfPresent(GetSurveyResponsReportingResponseResultsItemQuestionType.self, forKey: .questionType)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.answer, forKey: .answer)
        try container.encodeIfPresent(self.query, forKey: .query)
        try container.encodeIfPresent(self.questionId, forKey: .questionId)
        try container.encodeIfPresent(self.questionType, forKey: .questionType)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case answer
        case query
        case questionId = "question_id"
        case questionType = "question_type"
    }
}