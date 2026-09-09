import Foundation

/// Members who have spent exactly, have not spent exactly, spent more, or spent less than the segment value.
public enum SegmentTypeItemEcommNumberOp: String, Codable, Hashable, CaseIterable, Sendable {
    case `is`
    case not
    case greater
    case less
}