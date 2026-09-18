import Foundation

public enum AudiencesContactEmailChannelMarketingConsentStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case consented
    case denied
    case confirmed
    case unknown
}