import Foundation

/// Segment by most recent interaction with a website.
public enum SegmentTypeItemGoalTimestampField: String, Codable, Hashable, CaseIterable, Sendable {
    case goalLastVisited = "goal_last_visited"
}