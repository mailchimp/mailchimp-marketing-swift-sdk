import Foundation

public enum ListFacebookAdsRequestSortField: String, Codable, Hashable, CaseIterable, Sendable {
    case createdAt = "created_at"
    case updatedAt = "updated_at"
    case endTime = "end_time"
}