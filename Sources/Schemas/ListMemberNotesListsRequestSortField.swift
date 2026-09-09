import Foundation

public enum ListMemberNotesListsRequestSortField: String, Codable, Hashable, CaseIterable, Sendable {
    case createdAt = "created_at"
    case updatedAt = "updated_at"
    case noteId = "note_id"
}