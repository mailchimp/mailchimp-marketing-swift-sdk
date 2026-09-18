import Foundation

/// The contact's SMS marketing consent status. Use `confirmed` for double opt-in audiences, `consented` for single opt-in audiences. `denied` is accepted on PATCH/PUT only (not POST) and drives an API-initiated unsubscribe; it cannot be used when creating a new contact.
public enum AudiencesContactSmsChannelMarketingConsentStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case consented
    case confirmed
    case denied
    case unknown
}