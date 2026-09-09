import Foundation

/// When to send the Automation email.
public enum AutomationWorkflowTriggerSettingsRuntimeHoursType: String, Codable, Hashable, CaseIterable, Sendable {
    case sendAsap = "send_asap"
    case sendBetween = "send_between"
    case sendAt = "send_at"
}