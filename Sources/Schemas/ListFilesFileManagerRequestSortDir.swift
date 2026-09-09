import Foundation

public enum ListFilesFileManagerRequestSortDir: String, Codable, Hashable, CaseIterable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}