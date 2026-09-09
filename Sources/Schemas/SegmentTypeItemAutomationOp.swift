import Foundation

/// The status of the member with regard to the automation workflow. One of the following: has started the workflow, has completed the workflow, has not started the workflow, or has not completed the workflow.
public enum SegmentTypeItemAutomationOp: String, Codable, Hashable, CaseIterable, Sendable {
    case started
    case completed
    case notStarted = "not_started"
    case notCompleted = "not_completed"
}