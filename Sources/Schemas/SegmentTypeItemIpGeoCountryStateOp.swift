import Foundation

/// Segment members who are within a specific country or US state.
public enum SegmentTypeItemIpGeoCountryStateOp: String, Codable, Hashable, CaseIterable, Sendable {
    case ipgeocountry
    case ipgeonotcountry
    case ipgeostate
    case ipgeonotstate
}