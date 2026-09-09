import Foundation

/// Whether the website URL is/not exactly, contains/doesn't contain, starts with/ends with a string.
public enum SegmentTypeItemGoalActivityOp: String, Codable, Hashable, CaseIterable, Sendable {
    case `is`
    case goalNot = "goal_not"
    case contains
    case goalNotcontain = "goal_notcontain"
    case starts
    case ends
}