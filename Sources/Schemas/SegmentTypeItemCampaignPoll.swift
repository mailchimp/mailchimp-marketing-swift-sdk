import Foundation

/// Segment by poll activity.
public struct SegmentTypeItemCampaignPoll: Codable, Hashable, Sendable {
    /// Segment by poll activity.
    public let field: SegmentTypeItemCampaignPollField
    /// Members have/have not interacted with a specific poll in a Mailchimp email.
    public let op: SegmentTypeItemCampaignPollOp
    /// The id for the poll.
    public let value: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        field: SegmentTypeItemCampaignPollField,
        op: SegmentTypeItemCampaignPollOp,
        value: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.field = field
        self.op = op
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.field = try container.decode(SegmentTypeItemCampaignPollField.self, forKey: .field)
        self.op = try container.decode(SegmentTypeItemCampaignPollOp.self, forKey: .op)
        self.value = try container.decode(Double.self, forKey: .value)
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