import Foundation

public enum ListSegmentsListsRequestExcludeType: String, Codable, Hashable, CaseIterable, Sendable {
    case saved
    case `static`
    case fuzzy
}