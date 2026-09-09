import Foundation

/// Members who are/are not apart of a static segment.
public enum SegmentTypeItemStaticSegmentOp: String, Codable, Hashable, CaseIterable, Sendable {
    case staticIs = "static_is"
    case staticNot = "static_not"
}