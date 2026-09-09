import Foundation

/// The status of this outreach.
public enum FacebookAdStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case save
    case paused
    case schedule
    case scheduled
    case sending
    case sent
    case canceled
    case canceling
    case active
    case disconnected
    case somepaused
    case draft
    case completed
    case partialRejected
    case pending
    case rejected
    case published
    case unpublished
}