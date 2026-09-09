import Foundation

/// Whether the delay settings describe before or after the delay action of an Automation email.
public enum AutomationWorkflowEmailDelayDirection: String, Codable, Hashable, CaseIterable, Sendable {
    case before
    case after
}