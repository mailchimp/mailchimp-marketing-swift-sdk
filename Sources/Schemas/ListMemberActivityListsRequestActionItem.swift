import Foundation

public enum ListMemberActivityListsRequestActionItem: String, Codable, Hashable, CaseIterable, Sendable {
    case abuse
    case bounce
    case click
    case open
    case sent
    case unsub
    case ecomm
}