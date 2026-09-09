import Foundation

/// A member who has purchased from a category/specific item that is/is not a specific name, where the category/item name contains/doesn't contain a specific phrase or string, or a category/item name that starts/ends with a string.
public enum SegmentTypeItemEcommCategoryOp: String, Codable, Hashable, CaseIterable, Sendable {
    case `is`
    case not
    case contains
    case notcontain
    case starts
    case ends
}