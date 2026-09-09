import Foundation

/// The response type of the survey question.
public enum SurveyQuestionReportType: String, Codable, Hashable, CaseIterable, Sendable {
    case pickOne
    case pickMany
    case range
    case text
    case email
    case contactInformation
    case dropdown
}