import Foundation

public enum ListConversationsRequestHasUnreadMessages: String, Codable, Hashable, CaseIterable, Sendable {
    case `true`
    case `false`
}