import Foundation

/// The original campaign that was resent.
public struct CampaignsResendShortcutUsageOriginalCampaign: Codable, Hashable, Sendable {
    /// ID for the resent campaign.
    public let id: String?
    /// Which campaign resend shortcut was used.
    public let shortcutType: CampaignsResendShortcutUsageOriginalCampaignShortcutType?
    /// The title of the original campaign.
    public let title: String?
    /// The ID for the resent campaign used in the Mailchimp web application. View this campaign in your Mailchimp account at `https://{dc}.admin.mailchimp.com/campaigns/show/?id={web_id}`.
    public let webId: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String? = nil,
        shortcutType: CampaignsResendShortcutUsageOriginalCampaignShortcutType? = nil,
        title: String? = nil,
        webId: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.shortcutType = shortcutType
        self.title = title
        self.webId = webId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.shortcutType = try container.decodeIfPresent(CampaignsResendShortcutUsageOriginalCampaignShortcutType.self, forKey: .shortcutType)
        self.title = try container.decodeIfPresent(String.self, forKey: .title)
        self.webId = try container.decodeIfPresent(Int.self, forKey: .webId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.shortcutType, forKey: .shortcutType)
        try container.encodeIfPresent(self.title, forKey: .title)
        try container.encodeIfPresent(self.webId, forKey: .webId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case shortcutType = "shortcut_type"
        case title
        case webId = "web_id"
    }
}