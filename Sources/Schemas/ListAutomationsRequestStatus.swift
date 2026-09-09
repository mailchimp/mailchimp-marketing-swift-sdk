import Foundation

public enum ListAutomationsRequestStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case save
    case paused
    case sending
}