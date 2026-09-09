import Foundation

/// Whether the email address is/not exactly, contains/doesn't contain, starts/ends with a string.
public enum SegmentTypeItemEmailAddressOp: String, Codable, Hashable, CaseIterable, Sendable {
    case `is`
    case not
    case contains
    case notcontain
    case starts
    case ends
    case greater
    case less
}