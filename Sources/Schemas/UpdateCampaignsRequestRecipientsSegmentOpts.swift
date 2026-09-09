import Foundation

/// An object representing all segmentation options. This object should contain a `saved_segment_id` to use an existing segment, or you can create a new segment by including both `match` and `conditions` options.
public struct UpdateCampaignsRequestRecipientsSegmentOpts: Codable, Hashable, Sendable {
    public let conditions: SegmentType?
    /// Segment match type.
    public let match: UpdateCampaignsRequestRecipientsSegmentOptsMatch?
    /// The prebuilt segment id, if a prebuilt segment has been designated for this campaign.
    public let prebuiltSegmentId: String?
    /// The id for an existing saved segment.
    public let savedSegmentId: UpdateCampaignsRequestRecipientsSegmentOptsSavedSegmentId?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        conditions: SegmentType? = nil,
        match: UpdateCampaignsRequestRecipientsSegmentOptsMatch? = nil,
        prebuiltSegmentId: String? = nil,
        savedSegmentId: UpdateCampaignsRequestRecipientsSegmentOptsSavedSegmentId? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.conditions = conditions
        self.match = match
        self.prebuiltSegmentId = prebuiltSegmentId
        self.savedSegmentId = savedSegmentId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.conditions = try container.decodeIfPresent(SegmentType.self, forKey: .conditions)
        self.match = try container.decodeIfPresent(UpdateCampaignsRequestRecipientsSegmentOptsMatch.self, forKey: .match)
        self.prebuiltSegmentId = try container.decodeIfPresent(String.self, forKey: .prebuiltSegmentId)
        self.savedSegmentId = try container.decodeIfPresent(UpdateCampaignsRequestRecipientsSegmentOptsSavedSegmentId.self, forKey: .savedSegmentId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.conditions, forKey: .conditions)
        try container.encodeIfPresent(self.match, forKey: .match)
        try container.encodeIfPresent(self.prebuiltSegmentId, forKey: .prebuiltSegmentId)
        try container.encodeIfPresent(self.savedSegmentId, forKey: .savedSegmentId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case conditions
        case match
        case prebuiltSegmentId = "prebuilt_segment_id"
        case savedSegmentId = "saved_segment_id"
    }
}