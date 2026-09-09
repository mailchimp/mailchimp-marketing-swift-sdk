import Foundation

/// Segment by interaction with a specific campaign.
public struct SegmentTypeItemAim: Codable, Hashable, Sendable {
    /// Segment by interaction with a specific campaign.
    public let field: SegmentTypeItemAimField?
    /// The status of the member with regard to their campaign interaction. One of the following: opened, clicked, was sent, didn't open, didn't click, or was not sent.
    public let op: SegmentTypeItemAimOp?
    /// Either the web id value for a specific campaign or 'any' to account for subscribers who have/have not interacted with any campaigns.
    public let value: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        field: SegmentTypeItemAimField? = nil,
        op: SegmentTypeItemAimOp? = nil,
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
        self.field = try container.decodeIfPresent(SegmentTypeItemAimField.self, forKey: .field)
        self.op = try container.decodeIfPresent(SegmentTypeItemAimOp.self, forKey: .op)
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