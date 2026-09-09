import Foundation

/// Segment by when people subscribed.
public struct SegmentTypeItemNewSubscribers: Codable, Hashable, Sendable {
    /// Segment by when people subscribed.
    public let field: SegmentTypeItemNewSubscribersField?
    /// Whe the event took place, namely within a time frame.
    public let op: SegmentTypeItemNewSubscribersOp?
    /// What type of data to segment on: a specific date, a specific campaign, or the last campaign sent.
    public let value: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        field: SegmentTypeItemNewSubscribersField? = nil,
        op: SegmentTypeItemNewSubscribersOp? = nil,
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
        self.field = try container.decodeIfPresent(SegmentTypeItemNewSubscribersField.self, forKey: .field)
        self.op = try container.decodeIfPresent(SegmentTypeItemNewSubscribersOp.self, forKey: .op)
        self.value = try container.decodeIfPresent(String.self, forKey: .value)
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