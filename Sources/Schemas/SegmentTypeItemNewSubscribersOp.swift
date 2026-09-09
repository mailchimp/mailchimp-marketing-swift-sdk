import Foundation

/// Whe the event took place, namely within a time frame.
public enum SegmentTypeItemNewSubscribersOp: String, Codable, Hashable, CaseIterable, Sendable {
    case dateWithin = "date_within"
}