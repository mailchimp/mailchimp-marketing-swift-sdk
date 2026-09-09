import Foundation

/// Segment by a specific date field.
public struct SegmentTypeItemDate: Codable, Hashable, Sendable {
    /// When segmenting on 'date' or 'campaign', the date for the segment formatted as YYYY-MM-DD or the web id for the campaign.
    public let extra: String?
    /// The type of date field to segment on: The opt-in time for a signup, the date the subscriber was last updated, or the date of their last ecomm purchase.
    public let field: SegmentTypeItemDateField
    /// When the event took place:  Before, after, is a specific date, is not a specific date, is blank, or is not blank.
    public let op: SegmentTypeItemDateOp
    /// What type of data to segment on: a specific date, a specific campaign, or the last campaign sent.
    public let value: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        extra: String? = nil,
        field: SegmentTypeItemDateField,
        op: SegmentTypeItemDateOp,
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
        self.extra = try container.decodeIfPresent(String.self, forKey: .extra)
        self.field = try container.decode(SegmentTypeItemDateField.self, forKey: .field)
        self.op = try container.decode(SegmentTypeItemDateOp.self, forKey: .op)
        self.value = try container.decode(String.self, forKey: .value)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.extra, forKey: .extra)
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