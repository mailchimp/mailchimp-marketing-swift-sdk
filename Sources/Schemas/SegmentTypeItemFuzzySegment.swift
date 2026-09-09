import Foundation

/// Segment by similar subscribers.
public struct SegmentTypeItemFuzzySegment: Codable, Hashable, Sendable {
    /// Segment by similar subscribers.
    public let field: SegmentTypeItemFuzzySegmentField
    /// Members who are/are not apart of a 'similar subscribers' segment.
    public let op: SegmentTypeItemFuzzySegmentOp
    public let value: SegmentTypeItemFuzzySegmentValue
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        field: SegmentTypeItemFuzzySegmentField,
        op: SegmentTypeItemFuzzySegmentOp,
        value: SegmentTypeItemFuzzySegmentValue,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.field = field
        self.op = op
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.field = try container.decode(SegmentTypeItemFuzzySegmentField.self, forKey: .field)
        self.op = try container.decode(SegmentTypeItemFuzzySegmentOp.self, forKey: .op)
        self.value = try container.decode(SegmentTypeItemFuzzySegmentValue.self, forKey: .value)
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