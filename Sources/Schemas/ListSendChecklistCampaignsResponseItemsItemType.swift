import Foundation

/// The item type.
public enum ListSendChecklistCampaignsResponseItemsItemType: String, Codable, Hashable, CaseIterable, Sendable {
    case success
    case warning
    case error
}