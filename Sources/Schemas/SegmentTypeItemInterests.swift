import Foundation

/// Segment by an interest group merge field.
public struct SegmentTypeItemInterests: Codable, Hashable, Sendable {
    /// Segmenting based on interest group information. This should start with 'interests-' followed by the grouping id. Ex. 'interests-123'.
    public let field: String?
    /// Whether the member is a part of one, all, or none of the groups.
    public let op: SegmentTypeItemInterestsOp?
    /// An array containing strings, each representing a group id.
    public let value: [String]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        field: String? = nil,
        op: SegmentTypeItemInterestsOp? = nil,
        value: [String]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.field = field
        self.op = op
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.field = try container.decodeIfPresent(String.self, forKey: .field)
        self.op = try container.decodeIfPresent(SegmentTypeItemInterestsOp.self, forKey: .op)
        self.value = try container.decodeIfPresent([String].self, forKey: .value)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.field, forKey: .field)
        try container.encodeIfPresent(self.op, forKey: .op)
        try container.encodeIfPresent(self.value, forKey: .value)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case field
        case op
        case value
    }
}