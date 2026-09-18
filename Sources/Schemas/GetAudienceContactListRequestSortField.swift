import Foundation

public enum GetAudienceContactListRequestSortField: String, Codable, Hashable, CaseIterable, Sendable {
    case createdAt = "created_at"
    case updatedAt = "updated_at"
}