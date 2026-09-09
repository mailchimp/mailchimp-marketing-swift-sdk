import Foundation

/// The type of delay for an Automation email.
public enum AutomationWorkflowEmailDelayType: String, Codable, Hashable, CaseIterable, Sendable {
    case now
    case day
    case hour
    case week
}