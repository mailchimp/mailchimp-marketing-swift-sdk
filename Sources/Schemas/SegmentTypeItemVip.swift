import Foundation

/// Segment by VIP status.
public struct SegmentTypeItemVip: Codable, Hashable, Sendable {
    /// Segment by VIP status.
    public let field: SegmentTypeItemVipField
    /// Whether the member is or is not marked as VIP.
    public let op: SegmentTypeItemVipOp
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        field: SegmentTypeItemVipField,
        op: SegmentTypeItemVipOp,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.field = field
        self.op = op
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.field = try container.decode(SegmentTypeItemVipField.self, forKey: .field)
        self.op = try container.decode(SegmentTypeItemVipOp.self, forKey: .op)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.field, forKey: .field)
        try container.encode(self.op, forKey: .op)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case field
        case op
    }
}