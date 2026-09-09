import Foundation

/// Segment by use of a particular email client.
public struct SegmentTypeItemEmailClient: Codable, Hashable, Sendable {
    /// Segment by use of a particular email client.
    public let field: SegmentTypeItemEmailClientField
    /// The operation to determine whether we select clients that match the value, or clients that do not match the value.
    public let op: SegmentTypeItemEmailClientOp
    /// The name of the email client.
    public let value: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        field: SegmentTypeItemEmailClientField,
        op: SegmentTypeItemEmailClientOp,
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
        self.field = try container.decode(SegmentTypeItemEmailClientField.self, forKey: .field)
        self.op = try container.decode(SegmentTypeItemEmailClientOp.self, forKey: .op)
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