import Foundation

public enum ListInterestCategoriesListsRequestSortField: String, Codable, Hashable, CaseIterable, Sendable {
    case name
    case displayOrder = "display_order"
}