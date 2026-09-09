import Foundation

/// The current status of the Automation.
public enum AutomationWorkflowStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case save
    case paused
    case sending
}