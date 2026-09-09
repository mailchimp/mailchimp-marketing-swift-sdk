import Foundation

/// Segment by a given static segment.
public struct SegmentTypeItemStaticSegment: Codable, Hashable, Sendable {
    /// Segment by a given static segment.
    public let field: SegmentTypeItemStaticSegmentField
    /// Members who are/are not apart of a static segment.
    public let op: SegmentTypeItemStaticSegmentOp
    public let value: SegmentTypeItemStaticSegmentValue
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        field: SegmentTypeItemStaticSegmentField,
        op: SegmentTypeItemStaticSegmentOp,
        value: SegmentTypeItemStaticSegmentValue,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.field = field
        self.op = op
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.field = try container.decode(SegmentTypeItemStaticSegmentField.self, forKey: .field)
        self.op = try container.decode(SegmentTypeItemStaticSegmentOp.self, forKey: .op)
        self.value = try container.decode(SegmentTypeItemStaticSegmentValue.self, forKey: .value)
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