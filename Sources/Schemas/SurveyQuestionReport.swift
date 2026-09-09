import Foundation

/// The details of a survey question's report.
public struct SurveyQuestionReport: Codable, Hashable, Sendable {
    /// The average rating for this range question.
    public let averageRating: Float?
    /// For email question types, how many are new, known, or unknown contacts.
    public let contactCounts: SurveyQuestionReportContactCounts?
    /// Whether this survey question has an 'other' option.
    public let hasOther: Bool?
    /// The ID of the survey question.
    public let id: String?
    /// Whether this survey question is required to answer.
    public let isRequired: Bool?
    /// A [merge field](https://mailchimp.com/developer/marketing/docs/merge-fields/) for an audience.
    public let mergeField: SurveyQuestionReportMergeField?
    /// The answer choices for this question.
    public let options: [SurveyQuestionReportOptionsItem]?
    /// Label used for the 'other' option of this survey question.
    public let otherLabel: String?
    /// Placeholder text for this survey question's answer box.
    public let placeholderLabel: String?
    /// The query of the survey question.
    public let query: String?
    /// Label for the high end of the range.
    public let rangeHighLabel: String?
    /// Label for the low end of the range.
    public let rangeLowLabel: String?
    /// Whether the subscribe checkbox is shown for this email question.
    public let subscribeCheckboxEnabled: Bool?
    /// Label used for the subscribe checkbox for this email question.
    public let subscribeCheckboxLabel: String?
    /// The unique ID of the survey.
    public let surveyId: String?
    /// The total number of responses to this question.
    public let totalResponses: Int?
    /// The response type of the survey question.
    public let type: SurveyQuestionReportType?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        averageRating: Float? = nil,
        contactCounts: SurveyQuestionReportContactCounts? = nil,
        hasOther: Bool? = nil,
        id: String? = nil,
        isRequired: Bool? = nil,
        mergeField: SurveyQuestionReportMergeField? = nil,
        options: [SurveyQuestionReportOptionsItem]? = nil,
        otherLabel: String? = nil,
        placeholderLabel: String? = nil,
        query: String? = nil,
        rangeHighLabel: String? = nil,
        rangeLowLabel: String? = nil,
        subscribeCheckboxEnabled: Bool? = nil,
        subscribeCheckboxLabel: String? = nil,
        surveyId: String? = nil,
        totalResponses: Int? = nil,
        type: SurveyQuestionReportType? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.averageRating = averageRating
        self.contactCounts = contactCounts
        self.hasOther = hasOther
        self.id = id
        self.isRequired = isRequired
        self.mergeField = mergeField
        self.options = options
        self.otherLabel = otherLabel
        self.placeholderLabel = placeholderLabel
        self.query = query
        self.rangeHighLabel = rangeHighLabel
        self.rangeLowLabel = rangeLowLabel
        self.subscribeCheckboxEnabled = subscribeCheckboxEnabled
        self.subscribeCheckboxLabel = subscribeCheckboxLabel
        self.surveyId = surveyId
        self.totalResponses = totalResponses
        self.type = type
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.averageRating = try container.decodeIfPresent(Float.self, forKey: .averageRating)
        self.contactCounts = try container.decodeIfPresent(SurveyQuestionReportContactCounts.self, forKey: .contactCounts)
        self.hasOther = try container.decodeIfPresent(Bool.self, forKey: .hasOther)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.isRequired = try container.decodeIfPresent(Bool.self, forKey: .isRequired)
        self.mergeField = try container.decodeIfPresent(SurveyQuestionReportMergeField.self, forKey: .mergeField)
        self.options = try container.decodeIfPresent([SurveyQuestionReportOptionsItem].self, forKey: .options)
        self.otherLabel = try container.decodeIfPresent(String.self, forKey: .otherLabel)
        self.placeholderLabel = try container.decodeIfPresent(String.self, forKey: .placeholderLabel)
        self.query = try container.decodeIfPresent(String.self, forKey: .query)
        self.rangeHighLabel = try container.decodeIfPresent(String.self, forKey: .rangeHighLabel)
        self.rangeLowLabel = try container.decodeIfPresent(String.self, forKey: .rangeLowLabel)
        self.subscribeCheckboxEnabled = try container.decodeIfPresent(Bool.self, forKey: .subscribeCheckboxEnabled)
        self.subscribeCheckboxLabel = try container.decodeIfPresent(String.self, forKey: .subscribeCheckboxLabel)
        self.surveyId = try container.decodeIfPresent(String.self, forKey: .surveyId)
        self.totalResponses = try container.decodeIfPresent(Int.self, forKey: .totalResponses)
        self.type = try container.decodeIfPresent(SurveyQuestionReportType.self, forKey: .type)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.averageRating, forKey: .averageRating)
        try container.encodeIfPresent(self.contactCounts, forKey: .contactCounts)
        try container.encodeIfPresent(self.hasOther, forKey: .hasOther)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.isRequired, forKey: .isRequired)
        try container.encodeIfPresent(self.mergeField, forKey: .mergeField)
        try container.encodeIfPresent(self.options, forKey: .options)
        try container.encodeIfPresent(self.otherLabel, forKey: .otherLabel)
        try container.encodeIfPresent(self.placeholderLabel, forKey: .placeholderLabel)
        try container.encodeIfPresent(self.query, forKey: .query)
        try container.encodeIfPresent(self.rangeHighLabel, forKey: .rangeHighLabel)
        try container.encodeIfPresent(self.rangeLowLabel, forKey: .rangeLowLabel)
        try container.encodeIfPresent(self.subscribeCheckboxEnabled, forKey: .subscribeCheckboxEnabled)
        try container.encodeIfPresent(self.subscribeCheckboxLabel, forKey: .subscribeCheckboxLabel)
        try container.encodeIfPresent(self.surveyId, forKey: .surveyId)
        try container.encodeIfPresent(self.totalResponses, forKey: .totalResponses)
        try container.encodeIfPresent(self.type, forKey: .type)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case averageRating = "average_rating"
        case contactCounts = "contact_counts"
        case hasOther = "has_other"
        case id
        case isRequired = "is_required"
        case mergeField = "merge_field"
        case options
        case otherLabel = "other_label"
        case placeholderLabel = "placeholder_label"
        case query
        case rangeHighLabel = "range_high_label"
        case rangeLowLabel = "range_low_label"
        case subscribeCheckboxEnabled = "subscribe_checkbox_enabled"
        case subscribeCheckboxLabel = "subscribe_checkbox_label"
        case surveyId = "survey_id"
        case totalResponses = "total_responses"
        case type
    }
}