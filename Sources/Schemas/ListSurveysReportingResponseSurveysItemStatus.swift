import Foundation

/// The survey's status.
public enum ListSurveysReportingResponseSurveysItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case published
    case unpublished
}