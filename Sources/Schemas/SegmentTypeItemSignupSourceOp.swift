import Foundation

/// Whether the member's signup source was/was not a particular value.
public enum SegmentTypeItemSignupSourceOp: String, Codable, Hashable, CaseIterable, Sendable {
    case sourceIs = "source_is"
    case sourceNot = "source_not"
}