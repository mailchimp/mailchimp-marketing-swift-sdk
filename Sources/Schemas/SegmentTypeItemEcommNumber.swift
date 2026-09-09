import Foundation

/// Segment by average spent total, number of orders, total number of products purchased, or average number of products per order.
public struct SegmentTypeItemEcommNumber: Codable, Hashable, Sendable {
    /// Segment by average spent total, number of orders, total number of products purchased, or average number of products per order.
    public let field: SegmentTypeItemEcommNumberField
    /// Members who have spent exactly, have not spent exactly, spent more, or spent less than the segment value.
    public let op: SegmentTypeItemEcommNumberOp
    public let value: SegmentTypeItemEcommNumberValue
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        field: SegmentTypeItemEcommNumberField,
        op: SegmentTypeItemEcommNumberOp,
        value: SegmentTypeItemEcommNumberValue,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.field = field
        self.op = op
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.field = try container.decode(SegmentTypeItemEcommNumberField.self, forKey: .field)
        self.op = try container.decode(SegmentTypeItemEcommNumberOp.self, forKey: .op)
        self.value = try container.decode(SegmentTypeItemEcommNumberValue.self, forKey: .value)
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