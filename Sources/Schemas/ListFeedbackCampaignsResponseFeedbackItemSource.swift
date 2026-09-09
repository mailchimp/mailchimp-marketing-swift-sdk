import Foundation

/// The source of the feedback.
public enum ListFeedbackCampaignsResponseFeedbackItemSource: String, Codable, Hashable, CaseIterable, Sendable {
    case api
    case email
    case sms
    case web
    case ios
    case android
}