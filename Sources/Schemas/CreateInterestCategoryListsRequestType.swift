import Foundation

/// Determines how this category’s interests appear on signup forms.
public enum CreateInterestCategoryListsRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case checkboxes
    case dropdown
    case radio
    case hidden
}