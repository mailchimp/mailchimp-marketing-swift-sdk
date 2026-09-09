import Foundation

/// The type of activity
public enum ListChimpChatterActivityFeedResponseChimpChatterItemType: String, Codable, Hashable, CaseIterable, Sendable {
    case listsNewSubscriber = "lists:new-subscriber"
    case listsUnsubscribes = "lists:unsubscribes"
    case listsProfileUpdates = "lists:profile-updates"
    case campaignsFacebookLikes = "campaigns:facebook-likes"
    case campaignsForwardToFriend = "campaigns:forward-to-friend"
    case listsImports = "lists:imports"
}