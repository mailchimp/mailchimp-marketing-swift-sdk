import Foundation

public enum ListCampaignsRequestSortField: String, Codable, Hashable, CaseIterable, Sendable {
    case createTime = "create_time"
    case sendTime = "send_time"
}