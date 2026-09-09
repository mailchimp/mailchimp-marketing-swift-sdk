import Foundation

/// Segment by a specific US ZIP code.
public struct SegmentTypeItemIpGeoInZip: Codable, Hashable, Sendable {
    /// The zip code to segment against.
    public let extra: Int
    /// Segmenting subscribers who are within a specific location.
    public let field: SegmentTypeItemIpGeoInZipField
    /// Segment members who are within a specific US zip code.
    public let op: SegmentTypeItemIpGeoInZipOp
    /// The radius of the target location.
    public let value: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        extra: Int,
        field: SegmentTypeItemIpGeoInZipField,
        op: SegmentTypeItemIpGeoInZipOp,
        value: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.extra = extra
        self.field = field
        self.op = op
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.extra = try container.decode(Int.self, forKey: .extra)
        self.field = try container.decode(SegmentTypeItemIpGeoInZipField.self, forKey: .field)
        self.op = try container.decode(SegmentTypeItemIpGeoInZipOp.self, forKey: .op)
        self.value = try container.decode(Int.self, forKey: .value)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.extra, forKey: .extra)
        try container.encode(self.field, forKey: .field)
        try container.encode(self.op, forKey: .op)
        try container.encode(self.value, forKey: .value)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case extra
        case field
        case op
        case value
    }
}