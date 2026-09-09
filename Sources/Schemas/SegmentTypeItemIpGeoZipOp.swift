import Foundation

/// Segment members who are/are not within a specific US zip code.
public enum SegmentTypeItemIpGeoZipOp: String, Codable, Hashable, CaseIterable, Sendable {
    case ipgeoiszip
    case ipgeonotzip
}