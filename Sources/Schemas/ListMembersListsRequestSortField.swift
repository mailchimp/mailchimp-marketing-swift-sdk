import Foundation

public enum ListMembersListsRequestSortField: String, Codable, Hashable, CaseIterable, Sendable {
    case timestampOpt = "timestamp_opt"
    case timestampSignup = "timestamp_signup"
    case lastChanged = "last_changed"
}