import Foundation

/// Segment by member rating.
public struct SegmentTypeItemMemberRating: Codable, Hashable, Sendable {
    /// Segment by member rating.
    public let field: SegmentTypeItemMemberRatingField
    /// Members who have have a rating that is/not exactly a given number or members who have a rating greater/less than a given number.
    public let op: SegmentTypeItemMemberRatingOp
    public let value: SegmentTypeItemMemberRatingValue
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        field: SegmentTypeItemMemberRatingField,
        op: SegmentTypeItemMemberRatingOp,
        value: SegmentTypeItemMemberRatingValue,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.field = field
        self.op = op
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.field = try container.decode(SegmentTypeItemMemberRatingField.self, forKey: .field)
        self.op = try container.decode(SegmentTypeItemMemberRatingOp.self, forKey: .op)
        self.value = try container.decode(SegmentTypeItemMemberRatingValue.self, forKey: .value)
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