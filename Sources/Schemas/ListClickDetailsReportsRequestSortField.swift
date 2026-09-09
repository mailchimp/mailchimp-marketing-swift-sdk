import Foundation

public enum ListClickDetailsReportsRequestSortField: String, Codable, Hashable, CaseIterable, Sendable {
    case totalClicks = "total_clicks"
    case uniqueClicks = "unique_clicks"
}