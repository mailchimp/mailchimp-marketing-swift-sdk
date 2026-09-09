import Foundation

public enum ListTemplatesRequestSortField: String, Codable, Hashable, CaseIterable, Sendable {
    case dateCreated = "date_created"
    case dateEdited = "date_edited"
    case name
}