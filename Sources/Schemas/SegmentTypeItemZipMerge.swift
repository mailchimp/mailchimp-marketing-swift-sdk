import Foundation

/// Segment by an address-type merge field within a given distance.
public struct SegmentTypeItemZipMerge: Codable, Hashable, Sendable {
    /// The city or the zip being used to segment against.
    public let extra: String
    /// An address or zip-type merge field to segment.
    public let field: String
    /// Whether the member's address merge field is within a given distance from a city or zip.
    public let op: SegmentTypeItemZipMergeOp
    /// The distance from the city/zip.
    public let value: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        extra: String,
        field: String,
        op: SegmentTypeItemZipMergeOp,
        value: String,
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
        self.extra = try container.decode(String.self, forKey: .extra)
        self.field = try container.decode(String.self, forKey: .field)
        self.op = try container.decode(SegmentTypeItemZipMergeOp.self, forKey: .op)
        self.value = try container.decode(String.self, forKey: .value)
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