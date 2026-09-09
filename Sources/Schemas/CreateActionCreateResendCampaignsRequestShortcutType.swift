import Foundation

/// Which campaign resend shortcut to use. Default is `to_non_openers`.
public enum CreateActionCreateResendCampaignsRequestShortcutType: String, Codable, Hashable, CaseIterable, Sendable {
    case toNonOpeners = "to_non_openers"
    case toNewSubscribers = "to_new_subscribers"
    case toNonClickers = "to_non_clickers"
    case toNonPurchasers = "to_non_purchasers"
}