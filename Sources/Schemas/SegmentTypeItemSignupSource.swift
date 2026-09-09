import Foundation

/// Segment by signup source.
public struct SegmentTypeItemSignupSource: Codable, Hashable, Sendable {
    public let field: SegmentTypeItemSignupSourceField
    /// Whether the member's signup source was/was not a particular value.
    public let op: SegmentTypeItemSignupSourceOp
    /// The signup source.
    public let value: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        field: SegmentTypeItemSignupSourceField,
        op: SegmentTypeItemSignupSourceOp,
        value: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.field = field
        self.op = op
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.field = try container.decode(SegmentTypeItemSignupSourceField.self, forKey: .field)
        self.op = try container.decode(SegmentTypeItemSignupSourceOp.self, forKey: .op)
        self.value = try container.decodeIfPresent(String.self, forKey: .value)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.field, forKey: .field)
        try container.encode(self.op, forKey: .op)
        try container.encodeIfPresent(self.value, forKey: .value)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case field
        case op
        case value
    }
}