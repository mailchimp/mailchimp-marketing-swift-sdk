import Foundation

/// A specific feedback message from a specific campaign.
public struct ListFeedbackCampaignsResponseFeedbackItem: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListFeedbackCampaignsResponseFeedbackItemLinksItem]?
    /// The block id for the editable block that the feedback addresses.
    public let blockId: Int?
    /// The unique id for the campaign.
    public let campaignId: String?
    /// The date and time the feedback item was created in ISO 8601 format.
    public let createdAt: Date?
    /// The login name of the user who created the feedback.
    public let createdBy: String?
    /// The individual id for the feedback item.
    public let feedbackId: Int?
    /// The status of feedback.
    public let isComplete: Bool?
    /// The content of the feedback.
    public let message: String
    /// If a reply, the id of the parent feedback item.
    public let parentId: Int?
    /// The source of the feedback.
    public let source: ListFeedbackCampaignsResponseFeedbackItemSource?
    /// The date and time the feedback was last updated in ISO 8601 format.
    public let updatedAt: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListFeedbackCampaignsResponseFeedbackItemLinksItem]? = nil,
        blockId: Int? = nil,
        campaignId: String? = nil,
        createdAt: Date? = nil,
        createdBy: String? = nil,
        feedbackId: Int? = nil,
        isComplete: Bool? = nil,
        message: String,
        parentId: Int? = nil,
        source: ListFeedbackCampaignsResponseFeedbackItemSource? = nil,
        updatedAt: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.blockId = blockId
        self.campaignId = campaignId
        self.createdAt = createdAt
        self.createdBy = createdBy
        self.feedbackId = feedbackId
        self.isComplete = isComplete
        self.message = message
        self.parentId = parentId
        self.source = source
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListFeedbackCampaignsResponseFeedbackItemLinksItem].self, forKey: .links)
        self.blockId = try container.decodeIfPresent(Int.self, forKey: .blockId)
        self.campaignId = try container.decodeIfPresent(String.self, forKey: .campaignId)
        self.createdAt = try container.decodeIfPresent(Date.self, forKey: .createdAt)
        self.createdBy = try container.decodeIfPresent(String.self, forKey: .createdBy)
        self.feedbackId = try container.decodeIfPresent(Int.self, forKey: .feedbackId)
        self.isComplete = try container.decodeIfPresent(Bool.self, forKey: .isComplete)
        self.message = try container.decode(String.self, forKey: .message)
        self.parentId = try container.decodeIfPresent(Int.self, forKey: .parentId)
        self.source = try container.decodeIfPresent(ListFeedbackCampaignsResponseFeedbackItemSource.self, forKey: .source)
        self.updatedAt = try container.decodeIfPresent(Date.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.blockId, forKey: .blockId)
        try container.encodeIfPresent(self.campaignId, forKey: .campaignId)
        try container.encodeIfPresent(self.createdAt, forKey: .createdAt)
        try container.encodeIfPresent(self.createdBy, forKey: .createdBy)
        try container.encodeIfPresent(self.feedbackId, forKey: .feedbackId)
        try container.encodeIfPresent(self.isComplete, forKey: .isComplete)
        try container.encode(self.message, forKey: .message)
        try container.encodeIfPresent(self.parentId, forKey: .parentId)
        try container.encodeIfPresent(self.source, forKey: .source)
        try container.encodeIfPresent(self.updatedAt, forKey: .updatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case blockId = "block_id"
        case campaignId = "campaign_id"
        case createdAt = "created_at"
        case createdBy = "created_by"
        case feedbackId = "feedback_id"
        case isComplete = "is_complete"
        case message
        case parentId = "parent_id"
        case source
        case updatedAt = "updated_at"
    }
}