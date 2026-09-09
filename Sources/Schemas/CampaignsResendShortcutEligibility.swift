import Foundation

/// Determines if the campaign qualifies for the Campaign Resend Shortcuts. Only included when query parameter `include_resend_shortcuts` is `true`.
public struct CampaignsResendShortcutEligibility: Codable, Hashable, Sendable {
    /// Determines if the campaign qualifies to be resent to new subscribers.
    public let toNewSubscribers: CampaignsResendShortcutEligibilityToNewSubscribers?
    /// Determines if the campaign qualifies to be resent to non-clickers.
    public let toNonClickers: CampaignsResendShortcutEligibilityToNonClickers?
    /// Determines if the campaign qualifies to be resent to non-openers.
    public let toNonOpeners: CampaignsResendShortcutEligibilityToNonOpeners?
    /// Determines if the campaign qualifies to be resent to non-purchasers.
    public let toNonPurchasers: CampaignsResendShortcutEligibilityToNonPurchasers?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        toNewSubscribers: CampaignsResendShortcutEligibilityToNewSubscribers? = nil,
        toNonClickers: CampaignsResendShortcutEligibilityToNonClickers? = nil,
        toNonOpeners: CampaignsResendShortcutEligibilityToNonOpeners? = nil,
        toNonPurchasers: CampaignsResendShortcutEligibilityToNonPurchasers? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.toNewSubscribers = toNewSubscribers
        self.toNonClickers = toNonClickers
        self.toNonOpeners = toNonOpeners
        self.toNonPurchasers = toNonPurchasers
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.toNewSubscribers = try container.decodeIfPresent(CampaignsResendShortcutEligibilityToNewSubscribers.self, forKey: .toNewSubscribers)
        self.toNonClickers = try container.decodeIfPresent(CampaignsResendShortcutEligibilityToNonClickers.self, forKey: .toNonClickers)
        self.toNonOpeners = try container.decodeIfPresent(CampaignsResendShortcutEligibilityToNonOpeners.self, forKey: .toNonOpeners)
        self.toNonPurchasers = try container.decodeIfPresent(CampaignsResendShortcutEligibilityToNonPurchasers.self, forKey: .toNonPurchasers)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.toNewSubscribers, forKey: .toNewSubscribers)
        try container.encodeIfPresent(self.toNonClickers, forKey: .toNonClickers)
        try container.encodeIfPresent(self.toNonOpeners, forKey: .toNonOpeners)
        try container.encodeIfPresent(self.toNonPurchasers, forKey: .toNonPurchasers)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case toNewSubscribers = "to_new_subscribers"
        case toNonClickers = "to_non_clickers"
        case toNonOpeners = "to_non_openers"
        case toNonPurchasers = "to_non_purchasers"
    }
}