import Foundation

/// Segment by interaction with a campaign via Conversations.
public struct SegmentTypeItemConversation: Codable, Hashable, Sendable {
    /// Segment by interaction with a campaign via Conversations.
    public let field: SegmentTypeItemConversationField
    /// The status of a member's interaction with a conversation. One of the following: has replied or has not replied.
    public let op: SegmentTypeItemConversationOp
    /// The web id value for a specific campaign or 'any' to account for subscribers who have/have not interacted with any campaigns.
    public let value: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        field: SegmentTypeItemConversationField,
        op: SegmentTypeItemConversationOp,
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
        self.field = try container.decode(SegmentTypeItemConversationField.self, forKey: .field)
        self.op = try container.decode(SegmentTypeItemConversationOp.self, forKey: .op)
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