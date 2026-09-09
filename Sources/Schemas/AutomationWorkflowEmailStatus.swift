import Foundation

/// The current status of the campaign.
public enum AutomationWorkflowEmailStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case save
    case paused
    case sending
}