import Foundation

/// A survey question. On PATCH, include the question id to update it. Omitting question id creates a new question; it does not delete an existing one. To delete a question, omit its section from the sections array.
public struct SurveySectionRequestQuestion: Codable, Hashable, Sendable {
    /// The question ID. On PATCH, include to update an existing question; omit to add a new question.
    public let id: String?
    /// The question text.
    public let query: String
    /// The response type of the survey question.
    public let type: SurveySectionRequestQuestionType
    /// Whether this question is required.
    public let isRequired: Bool?
    /// Whether this question has an 'other' option.
    public let hasOther: Bool?
    /// Label for the 'other' option.
    public let otherLabel: String?
    /// Label for the low end of a range question.
    public let rangeLowLabel: String?
    /// Label for the high end of a range question.
    public let rangeHighLabel: String?
    /// Low value for a range question.
    public let rangeLowValue: Int?
    /// High value for a range question.
    public let rangeHighValue: Int?
    /// How a range question is presented.
    public let rangePresentation: String?
    /// Placeholder text for text or email questions.
    public let placeholderLabel: String?
    /// Whether the subscribe checkbox is enabled.
    public let subscribeCheckboxEnabled: Bool?
    /// Label for the subscribe checkbox.
    public let subscribeCheckboxLabel: String?
    /// Whether responses should automatically apply tags.
    public let shouldAutoTag: Bool?
    /// Answer options for pickOne, pickMany, or dropdown questions.
    public let options: [SurveySectionRequestQuestionOptionsItem]?
    /// Merge field mapping for contact information questions.
    public let mergeField: [String: JSONValue]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String? = nil,
        query: String,
        type: SurveySectionRequestQuestionType,
        isRequired: Bool? = nil,
        hasOther: Bool? = nil,
        otherLabel: String? = nil,
        rangeLowLabel: String? = nil,
        rangeHighLabel: String? = nil,
        rangeLowValue: Int? = nil,
        rangeHighValue: Int? = nil,
        rangePresentation: String? = nil,
        placeholderLabel: String? = nil,
        subscribeCheckboxEnabled: Bool? = nil,
        subscribeCheckboxLabel: String? = nil,
        shouldAutoTag: Bool? = nil,
        options: [SurveySectionRequestQuestionOptionsItem]? = nil,
        mergeField: [String: JSONValue]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.query = query
        self.type = type
        self.isRequired = isRequired
        self.hasOther = hasOther
        self.otherLabel = otherLabel
        self.rangeLowLabel = rangeLowLabel
        self.rangeHighLabel = rangeHighLabel
        self.rangeLowValue = rangeLowValue
        self.rangeHighValue = rangeHighValue
        self.rangePresentation = rangePresentation
        self.placeholderLabel = placeholderLabel
        self.subscribeCheckboxEnabled = subscribeCheckboxEnabled
        self.subscribeCheckboxLabel = subscribeCheckboxLabel
        self.shouldAutoTag = shouldAutoTag
        self.options = options
        self.mergeField = mergeField
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.query = try container.decode(String.self, forKey: .query)
        self.type = try container.decode(SurveySectionRequestQuestionType.self, forKey: .type)
        self.isRequired = try container.decodeIfPresent(Bool.self, forKey: .isRequired)
        self.hasOther = try container.decodeIfPresent(Bool.self, forKey: .hasOther)
        self.otherLabel = try container.decodeIfPresent(String.self, forKey: .otherLabel)
        self.rangeLowLabel = try container.decodeIfPresent(String.self, forKey: .rangeLowLabel)
        self.rangeHighLabel = try container.decodeIfPresent(String.self, forKey: .rangeHighLabel)
        self.rangeLowValue = try container.decodeIfPresent(Int.self, forKey: .rangeLowValue)
        self.rangeHighValue = try container.decodeIfPresent(Int.self, forKey: .rangeHighValue)
        self.rangePresentation = try container.decodeIfPresent(String.self, forKey: .rangePresentation)
        self.placeholderLabel = try container.decodeIfPresent(String.self, forKey: .placeholderLabel)
        self.subscribeCheckboxEnabled = try container.decodeIfPresent(Bool.self, forKey: .subscribeCheckboxEnabled)
        self.subscribeCheckboxLabel = try container.decodeIfPresent(String.self, forKey: .subscribeCheckboxLabel)
        self.shouldAutoTag = try container.decodeIfPresent(Bool.self, forKey: .shouldAutoTag)
        self.options = try container.decodeIfPresent([SurveySectionRequestQuestionOptionsItem].self, forKey: .options)
        self.mergeField = try container.decodeIfPresent([String: JSONValue].self, forKey: .mergeField)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encode(self.query, forKey: .query)
        try container.encode(self.type, forKey: .type)
        try container.encodeIfPresent(self.isRequired, forKey: .isRequired)
        try container.encodeIfPresent(self.hasOther, forKey: .hasOther)
        try container.encodeIfPresent(self.otherLabel, forKey: .otherLabel)
        try container.encodeIfPresent(self.rangeLowLabel, forKey: .rangeLowLabel)
        try container.encodeIfPresent(self.rangeHighLabel, forKey: .rangeHighLabel)
        try container.encodeIfPresent(self.rangeLowValue, forKey: .rangeLowValue)
        try container.encodeIfPresent(self.rangeHighValue, forKey: .rangeHighValue)
        try container.encodeIfPresent(self.rangePresentation, forKey: .rangePresentation)
        try container.encodeIfPresent(self.placeholderLabel, forKey: .placeholderLabel)
        try container.encodeIfPresent(self.subscribeCheckboxEnabled, forKey: .subscribeCheckboxEnabled)
        try container.encodeIfPresent(self.subscribeCheckboxLabel, forKey: .subscribeCheckboxLabel)
        try container.encodeIfPresent(self.shouldAutoTag, forKey: .shouldAutoTag)
        try container.encodeIfPresent(self.options, forKey: .options)
        try container.encodeIfPresent(self.mergeField, forKey: .mergeField)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case query
        case type
        case isRequired = "is_required"
        case hasOther = "has_other"
        case otherLabel = "other_label"
        case rangeLowLabel = "range_low_label"
        case rangeHighLabel = "range_high_label"
        case rangeLowValue = "range_low_value"
        case rangeHighValue = "range_high_value"
        case rangePresentation = "range_presentation"
        case placeholderLabel = "placeholder_label"
        case subscribeCheckboxEnabled = "subscribe_checkbox_enabled"
        case subscribeCheckboxLabel = "subscribe_checkbox_label"
        case shouldAutoTag = "should_auto_tag"
        case options
        case mergeField = "merge_field"
    }
}