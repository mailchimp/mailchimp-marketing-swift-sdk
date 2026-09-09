import Foundation

/// The status of the member with regard to their campaign interaction. One of the following: opened, clicked, was sent, didn't open, didn't click, or was not sent.
public enum SegmentTypeItemAimOp: String, Codable, Hashable, CaseIterable, Sendable {
    case open
    case click
    case sent
    case noopen
    case noclick
    case nosent
}