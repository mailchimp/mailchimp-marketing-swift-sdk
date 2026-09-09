import Foundation

/// Segment by a specific country or US state.
public struct SegmentTypeItemIpGeoCountryState: Codable, Hashable, Sendable {
    /// Segmenting subscribers who are within a specific location.
    public let field: SegmentTypeItemIpGeoCountryStateField
    /// Segment members who are within a specific country or US state.
    public let op: SegmentTypeItemIpGeoCountryStateOp
    /// The two-letter country code or US state abbreviation.
    public let value: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        field: SegmentTypeItemIpGeoCountryStateField,
        op: SegmentTypeItemIpGeoCountryStateOp,
        value: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.field = field
        self.op = op
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.field = try container.decode(SegmentTypeItemIpGeoCountryStateField.self, forKey: .field)
        self.op = try container.decode(SegmentTypeItemIpGeoCountryStateOp.self, forKey: .op)
        self.value = try container.decode(String.self, forKey: .value)
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