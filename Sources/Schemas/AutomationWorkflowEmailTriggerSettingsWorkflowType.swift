import Foundation

/// The type of Automation workflow.
public enum AutomationWorkflowEmailTriggerSettingsWorkflowType: String, Codable, Hashable, CaseIterable, Sendable {
    case abandonedBrowse
    case abandonedCart
    case api
    case bestCustomers
    case categoryFollowup
    case dateAdded
    case emailFollowup
    case emailSeries
    case groupAdd
    case groupRemove
    case mandrill
    case productFollowup
    case purchaseFollowup
    case recurringEvent
    case specialEvent
    case visitUrl
    case welcomeSeries
}