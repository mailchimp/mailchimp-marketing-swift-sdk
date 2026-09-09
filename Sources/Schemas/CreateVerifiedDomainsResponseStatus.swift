import Foundation

/// The Domain's current status.
public enum CreateVerifiedDomainsResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case verificationInProgress = "VERIFICATION_IN_PROGRESS"
    case verified = "VERIFIED"
    case expired = "EXPIRED"
    case error = "ERROR"
    case authenticationInProgress = "AUTHENTICATION_IN_PROGRESS"
    case authenticationError = "AUTHENTICATION_ERROR"
    case authenticated = "AUTHENTICATED"
}