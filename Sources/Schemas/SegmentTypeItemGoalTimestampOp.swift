import Foundation

/// Whether the website activity happened after, before, or at a given timestamp.
public enum SegmentTypeItemGoalTimestampOp: String, Codable, Hashable, CaseIterable, Sendable {
    case greater
    case less
    case `is`
}