import Foundation

/// Segment by whether someone has purchased anything.
public struct SegmentTypeItemEcommPurchased: Codable, Hashable, Sendable {
    /// Segment by whether someone has purchased anything.
    public let field: SegmentTypeItemEcommPurchasedField?
    /// Members who have have ('member') or have not ('notmember') purchased.
    public let op: SegmentTypeItemEcommPurchasedOp?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        field: SegmentTypeItemEcommPurchasedField? = nil,
        op: SegmentTypeItemEcommPurchasedOp? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.field = field
        self.op = op
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.field = try container.decodeIfPresent(SegmentTypeItemEcommPurchasedField.self, forKey: .field)
        self.op = try container.decodeIfPresent(SegmentTypeItemEcommPurchasedOp.self, forKey: .op)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.field, forKey: .field)
        try container.encodeIfPresent(self.op, forKey: .op)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case field
        case op
    }
}