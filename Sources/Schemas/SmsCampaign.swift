import Foundation

/// A single SMS campaign.
public struct SmsCampaign: Codable, Hashable, Sendable {
    /// A string that uniquely identifies this campaign.
    public let id: String?
    /// The ID used in the Mailchimp web application.
    public let webId: String?
    /// The name of the campaign.
    public let name: String?
    /// The current status of the campaign.
    public let status: String?
    /// The channel for this campaign (sms or whatsapp).
    public let channel: String?
    /// The numeric ID of the list associated with this campaign.
    public let listId: Int?
    /// The number of recipients for this campaign.
    public let recipientCount: Int?
    /// The date and time the campaign was created.
    public let createTime: Date?
    /// The date and time the campaign is scheduled to send.
    public let sendTime: Date?
    /// The date and time the campaign was last updated.
    public let updatedAt: Date?
    /// The date and time the campaign will stop sending in ISO 8601 format.
    public let expireTime: Date?
    /// Whether the campaign is configured to send immediately.
    public let isSendNow: Bool?
    /// The ID of the folder this campaign is in.
    public let folderId: String?
    /// The segment IDs used to target recipients for this campaign.
    public let segments: [Int]?
    /// The segment IDs excluded from receiving this campaign.
    public let excludedSegments: [Int]?
    /// A list of link types and descriptions for the API schema documents.
    public let links: [SmsCampaignLinksItem]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String? = nil,
        webId: String? = nil,
        name: String? = nil,
        status: String? = nil,
        channel: String? = nil,
        listId: Int? = nil,
        recipientCount: Int? = nil,
        createTime: Date? = nil,
        sendTime: Date? = nil,
        updatedAt: Date? = nil,
        expireTime: Date? = nil,
        isSendNow: Bool? = nil,
        folderId: String? = nil,
        segments: [Int]? = nil,
        excludedSegments: [Int]? = nil,
        links: [SmsCampaignLinksItem]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.webId = webId
        self.name = name
        self.status = status
        self.channel = channel
        self.listId = listId
        self.recipientCount = recipientCount
        self.createTime = createTime
        self.sendTime = sendTime
        self.updatedAt = updatedAt
        self.expireTime = expireTime
        self.isSendNow = isSendNow
        self.folderId = folderId
        self.segments = segments
        self.excludedSegments = excludedSegments
        self.links = links
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.webId = try container.decodeIfPresent(String.self, forKey: .webId)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.status = try container.decodeIfPresent(String.self, forKey: .status)
        self.channel = try container.decodeIfPresent(String.self, forKey: .channel)
        self.listId = try container.decodeIfPresent(Int.self, forKey: .listId)
        self.recipientCount = try container.decodeIfPresent(Int.self, forKey: .recipientCount)
        self.createTime = try container.decodeIfPresent(Date.self, forKey: .createTime)
        self.sendTime = try container.decodeIfPresent(Date.self, forKey: .sendTime)
        self.updatedAt = try container.decodeIfPresent(Date.self, forKey: .updatedAt)
        self.expireTime = try container.decodeIfPresent(Date.self, forKey: .expireTime)
        self.isSendNow = try container.decodeIfPresent(Bool.self, forKey: .isSendNow)
        self.folderId = try container.decodeIfPresent(String.self, forKey: .folderId)
        self.segments = try container.decodeIfPresent([Int].self, forKey: .segments)
        self.excludedSegments = try container.decodeIfPresent([Int].self, forKey: .excludedSegments)
        self.links = try container.decodeIfPresent([SmsCampaignLinksItem].self, forKey: .links)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.webId, forKey: .webId)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.channel, forKey: .channel)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.recipientCount, forKey: .recipientCount)
        try container.encodeIfPresent(self.createTime, forKey: .createTime)
        try container.encodeIfPresent(self.sendTime, forKey: .sendTime)
        try container.encodeIfPresent(self.updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(self.expireTime, forKey: .expireTime)
        try container.encodeIfPresent(self.isSendNow, forKey: .isSendNow)
        try container.encodeIfPresent(self.folderId, forKey: .folderId)
        try container.encodeIfPresent(self.segments, forKey: .segments)
        try container.encodeIfPresent(self.excludedSegments, forKey: .excludedSegments)
        try container.encodeIfPresent(self.links, forKey: .links)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case webId = "web_id"
        case name
        case status
        case channel
        case listId = "list_id"
        case recipientCount = "recipient_count"
        case createTime = "create_time"
        case sendTime = "send_time"
        case updatedAt = "updated_at"
        case expireTime = "expire_time"
        case isSendNow = "is_send_now"
        case folderId = "folder_id"
        case segments
        case excludedSegments = "excluded_segments"
        case links = "_links"
    }
}