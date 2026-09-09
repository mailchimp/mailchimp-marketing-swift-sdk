import Foundation

/// A [merge field](https://mailchimp.com/developer/marketing/docs/merge-fields/) for an audience.
public struct SurveyQuestionReportMergeField: Codable, Hashable, Sendable {
    /// An unchanging id for the merge field.
    public let id: Int?
    /// The [label](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for the merge field.
    public let label: String?
    /// The [type](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for the merge field.
    public let type: SurveyQuestionReportMergeFieldType?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: Int? = nil,
        label: String? = nil,
        type: SurveyQuestionReportMergeFieldType? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.label = label
        self.type = type
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(Int.self, forKey: .id)
        self.label = try container.decodeIfPresent(String.self, forKey: .label)
        self.type = try container.decodeIfPresent(SurveyQuestionReportMergeFieldType.self, forKey: .type)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.label, forKey: .label)
        try container.encodeIfPresent(self.type, forKey: .type)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case label
        case type
    }
}