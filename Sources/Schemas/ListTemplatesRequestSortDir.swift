import Foundation

public enum ListTemplatesRequestSortDir: String, Codable, Hashable, CaseIterable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}