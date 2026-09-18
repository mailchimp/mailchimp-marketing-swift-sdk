import Foundation

/// The contact's SMS marketing consent status. Use `confirmed` for double opt-in audiences, `consented` for single opt-in audiences.
public enum CreateAudienceContactRequestSmsChannelMarketingConsentStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case consented
    case confirmed
    case unknown
}