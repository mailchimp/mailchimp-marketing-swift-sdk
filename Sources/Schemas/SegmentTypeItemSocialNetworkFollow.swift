import Foundation

/// Segment by social network in Social Profiles data.
public struct SegmentTypeItemSocialNetworkFollow: Codable, Hashable, Sendable {
    /// Segment by social network in Social Profiles data.
    public let field: SegmentTypeItemSocialNetworkFollowField
    /// Members who are/not following a linked account on a given social network.
    public let op: SegmentTypeItemSocialNetworkFollowOp
    /// The social network to segment against.
    public let value: SegmentTypeItemSocialNetworkFollowValue
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        field: SegmentTypeItemSocialNetworkFollowField,
        op: SegmentTypeItemSocialNetworkFollowOp,
        value: SegmentTypeItemSocialNetworkFollowValue,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.field = field
        self.op = op
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.field = try container.decode(SegmentTypeItemSocialNetworkFollowField.self, forKey: .field)
        self.op = try container.decode(SegmentTypeItemSocialNetworkFollowOp.self, forKey: .op)
        self.value = try container.decode(SegmentTypeItemSocialNetworkFollowValue.self, forKey: .value)
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