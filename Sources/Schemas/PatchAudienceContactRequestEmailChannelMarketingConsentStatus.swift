import Foundation

public enum PatchAudienceContactRequestEmailChannelMarketingConsentStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case consented
    case denied
    case confirmed
    case unknown
}