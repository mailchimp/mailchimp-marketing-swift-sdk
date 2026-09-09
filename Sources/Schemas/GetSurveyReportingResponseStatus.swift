import Foundation

/// The survey's status.
public enum GetSurveyReportingResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case published
    case unpublished
}