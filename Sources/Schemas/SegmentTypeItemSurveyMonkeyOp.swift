import Foundation

/// The status of the member with regard to the survey.One of the following: has started the survey, has completed the survey, has not started the survey, or has not completed the survey.
public enum SegmentTypeItemSurveyMonkeyOp: String, Codable, Hashable, CaseIterable, Sendable {
    case started
    case completed
    case notStarted = "not_started"
    case notCompleted = "not_completed"
}