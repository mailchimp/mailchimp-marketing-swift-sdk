import Foundation

/// Members who have spent 'more' or 'less' than then specified value.
public enum SegmentTypeItemEcommSpentOp: String, Codable, Hashable, CaseIterable, Sendable {
    case greater
    case less
}