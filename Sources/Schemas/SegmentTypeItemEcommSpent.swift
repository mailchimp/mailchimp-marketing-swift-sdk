import Foundation

/// Segment by amount spent on a single order or across all orders.
public struct SegmentTypeItemEcommSpent: Codable, Hashable, Sendable {
    /// Segment by amount spent on a single order or across all orders.
    public let field: SegmentTypeItemEcommSpentField?
    /// Members who have spent 'more' or 'less' than then specified value.
    public let op: SegmentTypeItemEcommSpentOp?
    public let value: SegmentTypeItemEcommSpentValue?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        field: SegmentTypeItemEcommSpentField? = nil,
        op: SegmentTypeItemEcommSpentOp? = nil,
        value: SegmentTypeItemEcommSpentValue? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.field = field
        self.op = op
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.field = try container.decodeIfPresent(SegmentTypeItemEcommSpentField.self, forKey: .field)
        self.op = try container.decodeIfPresent(SegmentTypeItemEcommSpentOp.self, forKey: .op)
        self.value = try container.decodeIfPresent(SegmentTypeItemEcommSpentValue.self, forKey: .value)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.field, forKey: .field)
        try container.encodeIfPresent(self.op, forKey: .op)
        try container.encodeIfPresent(self.value, forKey: .value)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case field
        case op
        case value
    }
}