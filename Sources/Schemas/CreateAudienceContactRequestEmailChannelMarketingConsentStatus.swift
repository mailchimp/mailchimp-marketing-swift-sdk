import Foundation

/// Status of a contacts Marketing Consent
public enum CreateAudienceContactRequestEmailChannelMarketingConsentStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case confirmed
    case consented
    case denied
    case unknown
}