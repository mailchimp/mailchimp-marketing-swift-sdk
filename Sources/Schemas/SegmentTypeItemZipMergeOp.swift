import Foundation

/// Whether the member's address merge field is within a given distance from a city or zip.
public enum SegmentTypeItemZipMergeOp: String, Codable, Hashable, CaseIterable, Sendable {
    case geoin
}