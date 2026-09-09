import Foundation

public enum ListLandingPagesRequestSortField: String, Codable, Hashable, CaseIterable, Sendable {
    case createdAt = "created_at"
    case updatedAt = "updated_at"
}