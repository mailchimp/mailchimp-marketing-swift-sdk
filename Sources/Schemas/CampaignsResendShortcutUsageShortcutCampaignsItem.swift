import Foundation

public struct CampaignsResendShortcutUsageShortcutCampaignsItem: Codable, Hashable, Sendable {
    /// Unique ID for the resent campaign.
    public let id: String?
    /// The date and time a resent campaign was sent.
    public let sendTime: Date?
    /// Which campaign resend shortcut was used.
    public let shortcutType: CampaignsResendShortcutUsageShortcutCampaignsItemShortcutType?
    /// The current status of the campaign.
    public let status: CampaignsResendShortcutUsageShortcutCampaignsItemStatus?
    /// The ID for the resent campaign used in the Mailchimp web application. View this campaign in your Mailchimp account at `https://{dc}.admin.mailchimp.com/campaigns/show/?id={web_id}`.
    public let webId: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String? = nil,
        sendTime: Date? = nil,
        shortcutType: CampaignsResendShortcutUsageShortcutCampaignsItemShortcutType? = nil,
        status: CampaignsResendShortcutUsageShortcutCampaignsItemStatus? = nil,
        webId: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.sendTime = sendTime
        self.shortcutType = shortcutType
        self.status = status
        self.webId = webId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.sendTime = try container.decodeIfPresent(Date.self, forKey: .sendTime)
        self.shortcutType = try container.decodeIfPresent(CampaignsResendShortcutUsageShortcutCampaignsItemShortcutType.self, forKey: .shortcutType)
        self.status = try container.decodeIfPresent(CampaignsResendShortcutUsageShortcutCampaignsItemStatus.self, forKey: .status)
        self.webId = try container.decodeIfPresent(Int.self, forKey: .webId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.sendTime, forKey: .sendTime)
        try container.encodeIfPresent(self.shortcutType, forKey: .shortcutType)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.webId, forKey: .webId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case sendTime = "send_time"
        case shortcutType = "shortcut_type"
        case status
        case webId = "web_id"
    }
}