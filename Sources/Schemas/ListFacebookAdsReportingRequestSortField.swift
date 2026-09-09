import Foundation

public enum ListFacebookAdsReportingRequestSortField: String, Codable, Hashable, CaseIterable, Sendable {
    case createdAt = "created_at"
    case updatedAt = "updated_at"
    case endTime = "end_time"
}