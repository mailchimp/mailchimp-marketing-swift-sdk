import Foundation

/// List settings for the campaign.
public struct CreateCampaignsRequestRecipients: Codable, Hashable, Sendable {
    /// The unique list id.
    public let listId: String
    /// An object representing all segmentation options. This object should contain a `saved_segment_id` to use an existing segment, or you can create a new segment by including both `match` and `conditions` options.
    public let segmentOpts: CreateCampaignsRequestRecipientsSegmentOpts?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        listId: String,
        segmentOpts: CreateCampaignsRequestRecipientsSegmentOpts? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.listId = listId
        self.segmentOpts = segmentOpts
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.listId = try container.decode(String.self, forKey: .listId)
        self.segmentOpts = try container.decodeIfPresent(CreateCampaignsRequestRecipientsSegmentOpts.self, forKey: .segmentOpts)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.segmentOpts, forKey: .segmentOpts)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case listId = "list_id"
        case segmentOpts = "segment_opts"
    }
}