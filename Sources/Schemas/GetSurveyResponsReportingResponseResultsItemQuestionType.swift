import Foundation

/// The type of question this is.
public enum GetSurveyResponsReportingResponseResultsItemQuestionType: String, Codable, Hashable, CaseIterable, Sendable {
    case pickOne
    case pickMany
    case range
    case text
    case email
    case contactInformation
    case dropdown
}