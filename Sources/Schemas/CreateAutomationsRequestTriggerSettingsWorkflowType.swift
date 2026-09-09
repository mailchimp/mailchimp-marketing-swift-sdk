import Foundation

/// The type of Automation workflow.
public enum CreateAutomationsRequestTriggerSettingsWorkflowType: String, Codable, Hashable, CaseIterable, Sendable {
    case abandonedBrowse
    case abandonedCart
    case emailFollowup
    case singleWelcome
}