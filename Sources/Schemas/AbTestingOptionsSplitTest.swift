import Foundation

/// The type of AB split to run.
public enum AbTestingOptionsSplitTest: String, Codable, Hashable, CaseIterable, Sendable {
    case subject
    case fromName = "from_name"
    case schedule
}