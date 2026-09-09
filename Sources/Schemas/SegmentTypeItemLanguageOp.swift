import Foundation

/// Whether the member's language is or is not set to a specific language.
public enum SegmentTypeItemLanguageOp: String, Codable, Hashable, CaseIterable, Sendable {
    case `is`
    case not
}