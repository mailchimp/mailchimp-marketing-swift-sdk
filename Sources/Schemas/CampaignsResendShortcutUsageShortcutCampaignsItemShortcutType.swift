import Foundation

/// Which campaign resend shortcut was used.
public enum CampaignsResendShortcutUsageShortcutCampaignsItemShortcutType: String, Codable, Hashable, CaseIterable, Sendable {
    case nonOpeners = "non_openers"
    case newSubscribers = "new_subscribers"
    case nonClickers = "non_clickers"
    case nonPurchasers = "non_purchasers"
}