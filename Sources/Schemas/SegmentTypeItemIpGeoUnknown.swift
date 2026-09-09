import Foundation

/// Segment members whose location information is unknown.
public struct SegmentTypeItemIpGeoUnknown: Codable, Hashable, Sendable {
    /// Segmenting subscribers who are within a specific location.
    public let field: SegmentTypeItemIpGeoUnknownField
    /// Segment members for which location information is unknown.
    public let op: SegmentTypeItemIpGeoUnknownOp
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        field: SegmentTypeItemIpGeoUnknownField,
        op: SegmentTypeItemIpGeoUnknownOp,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.field = field
        self.op = op
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.field = try container.decode(SegmentTypeItemIpGeoUnknownField.self, forKey: .field)
        self.op = try container.decode(SegmentTypeItemIpGeoUnknownOp.self, forKey: .op)
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