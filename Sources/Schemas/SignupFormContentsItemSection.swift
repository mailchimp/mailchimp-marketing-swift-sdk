import Foundation

/// The content section name.
public enum SignupFormContentsItemSection: String, Codable, Hashable, CaseIterable, Sendable {
    case signupMessage = "signup_message"
    case unsubMessage = "unsub_message"
    case signupThankYouTitle = "signup_thank_you_title"
}