import Foundation

/// Choose the type of test email to send.
public enum CreateActionTestCampaignsRequestSendType: String, Codable, Hashable, CaseIterable, Sendable {
    case html
    case plaintext
}