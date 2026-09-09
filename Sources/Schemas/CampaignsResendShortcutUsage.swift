import Foundation

/// Information about campaigns related through shortcuts.
public struct CampaignsResendShortcutUsage: Codable, Hashable, Sendable {
    /// The original campaign that was resent.
    public let originalCampaign: CampaignsResendShortcutUsageOriginalCampaign?
    /// Campaigns that were created from Campaign Resend Shortcuts for this campaign
    public let shortcutCampaigns: [CampaignsResendShortcutUsageShortcutCampaignsItem]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        originalCampaign: CampaignsResendShortcutUsageOriginalCampaign? = nil,
        shortcutCampaigns: [CampaignsResendShortcutUsageShortcutCampaignsItem]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.originalCampaign = originalCampaign
        self.shortcutCampaigns = shortcutCampaigns
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.originalCampaign = try container.decodeIfPresent(CampaignsResendShortcutUsageOriginalCampaign.self, forKey: .originalCampaign)
        self.shortcutCampaigns = try container.decodeIfPresent([CampaignsResendShortcutUsageShortcutCampaignsItem].self, forKey: .shortcutCampaigns)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.originalCampaign, forKey: .originalCampaign)
        try container.encodeIfPresent(self.shortcutCampaigns, forKey: .shortcutCampaigns)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case originalCampaign = "original_campaign"
        case shortcutCampaigns = "shortcut_campaigns"
    }
}