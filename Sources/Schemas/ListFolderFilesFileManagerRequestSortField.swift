import Foundation

public enum ListFolderFilesFileManagerRequestSortField: String, Codable, Hashable, CaseIterable, Sendable {
    case addedDate = "added_date"
    case name
    case size
}