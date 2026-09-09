import Foundation

public enum ListFilesFileManagerRequestSortField: String, Codable, Hashable, CaseIterable, Sendable {
    case addedDate = "added_date"
    case name
    case size
}