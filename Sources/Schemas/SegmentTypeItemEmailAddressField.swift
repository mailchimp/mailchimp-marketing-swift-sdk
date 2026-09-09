import Foundation

/// Segmenting based off of a subscriber's email address.
public enum SegmentTypeItemEmailAddressField: String, Codable, Hashable, CaseIterable, Sendable {
    case merge0
    case email = "EMAIL"
}