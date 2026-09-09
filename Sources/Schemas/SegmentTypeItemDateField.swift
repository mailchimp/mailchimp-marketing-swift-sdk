import Foundation

/// The type of date field to segment on: The opt-in time for a signup, the date the subscriber was last updated, or the date of their last ecomm purchase.
public enum SegmentTypeItemDateField: String, Codable, Hashable, CaseIterable, Sendable {
    case timestampOpt = "timestamp_opt"
    case infoChanged = "info_changed"
    case ecommDate = "ecomm_date"
}