import Foundation

/// Segment match type.
public enum AutomationWorkflowEmailRecipientsSegmentOptsMatch: String, Codable, Hashable, CaseIterable, Sendable {
    case any
    case all
}