import Foundation

/// The operation to determine whether we select clients that match the value, or clients that do not match the value.
public enum SegmentTypeItemEmailClientOp: String, Codable, Hashable, CaseIterable, Sendable {
    case clientIs = "client_is"
    case clientNot = "client_not"
}