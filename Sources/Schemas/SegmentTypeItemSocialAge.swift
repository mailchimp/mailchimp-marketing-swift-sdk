import Foundation

/// Segment by age ranges in Social Profiles data.
public struct SegmentTypeItemSocialAge: Codable, Hashable, Sendable {
    /// Segment by age ranges in Social Profiles data.
    public let field: SegmentTypeItemSocialAgeField
    /// Members who are/not the exact criteria listed.
    public let op: SegmentTypeItemSocialAgeOp
    /// The age range to segment.
    public let value: SegmentTypeItemSocialAgeValue
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        field: SegmentTypeItemSocialAgeField,
        op: SegmentTypeItemSocialAgeOp,
        value: SegmentTypeItemSocialAgeValue,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.field = field
        self.op = op
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.field = try container.decode(SegmentTypeItemSocialAgeField.self, forKey: .field)
        self.op = try container.decode(SegmentTypeItemSocialAgeOp.self, forKey: .op)
        self.value = try container.decode(SegmentTypeItemSocialAgeValue.self, forKey: .value)
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