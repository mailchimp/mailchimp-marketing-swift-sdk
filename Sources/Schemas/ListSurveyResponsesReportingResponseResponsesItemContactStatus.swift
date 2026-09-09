import Foundation

/// The contact's current status.
public enum ListSurveyResponsesReportingResponseResponsesItemContactStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case subscribed = "Subscribed"
    case unsubscribed = "Unsubscribed"
    case nonSubscribed = "Non-Subscribed"
    case cleaned = "Cleaned"
    case archived = "Archived"
}