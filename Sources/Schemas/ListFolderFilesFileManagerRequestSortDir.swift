import Foundation

public enum ListFolderFilesFileManagerRequestSortDir: String, Codable, Hashable, CaseIterable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}