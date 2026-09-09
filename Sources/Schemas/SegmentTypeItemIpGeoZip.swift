import Foundation

/// Segment by a specific US ZIP code.
public struct SegmentTypeItemIpGeoZip: Codable, Hashable, Sendable {
    /// Segmenting subscribers who are within a specific location.
    public let field: SegmentTypeItemIpGeoZipField
    /// Segment members who are/are not within a specific US zip code.
    public let op: SegmentTypeItemIpGeoZipOp
    /// The 5-digit zip code.
    public let value: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        field: SegmentTypeItemIpGeoZipField,
        op: SegmentTypeItemIpGeoZipOp,
        value: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.field = field
        self.op = op
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.field = try container.decode(SegmentTypeItemIpGeoZipField.self, forKey: .field)
        self.op = try container.decode(SegmentTypeItemIpGeoZipOp.self, forKey: .op)
        self.value = try container.decode(Int.self, forKey: .value)
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