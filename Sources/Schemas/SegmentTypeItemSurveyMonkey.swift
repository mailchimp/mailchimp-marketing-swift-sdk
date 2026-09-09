import Foundation

/// Segment by interaction with a SurveyMonkey survey.
public struct SegmentTypeItemSurveyMonkey: Codable, Hashable, Sendable {
    /// Segment by interaction with a SurveyMonkey survey.
    public let field: SegmentTypeItemSurveyMonkeyField
    /// The status of the member with regard to the survey.One of the following: has started the survey, has completed the survey, has not started the survey, or has not completed the survey.
    public let op: SegmentTypeItemSurveyMonkeyOp
    /// The unique ID of the survey monkey survey.
    public let value: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        field: SegmentTypeItemSurveyMonkeyField,
        op: SegmentTypeItemSurveyMonkeyOp,
        value: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.field = field
        self.op = op
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.field = try container.decode(SegmentTypeItemSurveyMonkeyField.self, forKey: .field)
        self.op = try container.decode(SegmentTypeItemSurveyMonkeyOp.self, forKey: .op)
        self.value = try container.decode(String.self, forKey: .value)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.field, forKey: .field)
        try container.encode(self.op, forKey: .op)
        try container.encode(self.value, forKey: .value)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case field
        case op
        case value
    }
}