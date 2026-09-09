import Foundation

/// Segment members who are within a specific geographic region.
public enum SegmentTypeItemIpGeoInOp: String, Codable, Hashable, CaseIterable, Sendable {
    case ipgeoin
    case ipgeonotin
}