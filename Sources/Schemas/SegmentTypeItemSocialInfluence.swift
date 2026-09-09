import Foundation

/// Segment by influence rating in Social Profiles data.
public struct SegmentTypeItemSocialInfluence: Codable, Hashable, Sendable {
    /// Segment by influence rating in Social Profiles data.
    public let field: SegmentTypeItemSocialInfluenceField
    /// Members who have a rating that is/not or greater/less than the rating provided.
    public let op: SegmentTypeItemSocialInfluenceOp
    /// The Social Profiles influence rating to segment.
    public let value: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        field: SegmentTypeItemSocialInfluenceField,
        op: SegmentTypeItemSocialInfluenceOp,
        value: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.field = field
        self.op = op
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.field = try container.decode(SegmentTypeItemSocialInfluenceField.self, forKey: .field)
        self.op = try container.decode(SegmentTypeItemSocialInfluenceOp.self, forKey: .op)
        self.value = try container.decode(Double.self, forKey: .value)
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