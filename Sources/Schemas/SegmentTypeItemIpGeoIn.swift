import Foundation

/// Segment by a specific geographic region.
public struct SegmentTypeItemIpGeoIn: Codable, Hashable, Sendable {
    /// The address of the target location.
    public let addr: String
    /// Segmenting subscribers who are within a specific location.
    public let field: SegmentTypeItemIpGeoInField
    /// The latitude of the target location.
    public let lat: String
    /// The longitude of the target location.
    public let lng: String
    /// Segment members who are within a specific geographic region.
    public let op: SegmentTypeItemIpGeoInOp
    /// The radius of the target location.
    public let value: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        addr: String,
        field: SegmentTypeItemIpGeoInField,
        lat: String,
        lng: String,
        op: SegmentTypeItemIpGeoInOp,
        value: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.addr = addr
        self.field = field
        self.lat = lat
        self.lng = lng
        self.op = op
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.addr = try container.decode(String.self, forKey: .addr)
        self.field = try container.decode(SegmentTypeItemIpGeoInField.self, forKey: .field)
        self.lat = try container.decode(String.self, forKey: .lat)
        self.lng = try container.decode(String.self, forKey: .lng)
        self.op = try container.decode(SegmentTypeItemIpGeoInOp.self, forKey: .op)
        self.value = try container.decode(Int.self, forKey: .value)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.addr, forKey: .addr)
        try container.encode(self.field, forKey: .field)
        try container.encode(self.lat, forKey: .lat)
        try container.encode(self.lng, forKey: .lng)
        try container.encode(self.op, forKey: .op)
        try container.encode(self.value, forKey: .value)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case addr
        case field
        case lat
        case lng
        case op
        case value
    }
}