import Foundation

/// The action that triggers the delay of an automation emails.
public enum UpdateEmailAutomationsRequestDelayAction: String, Codable, Hashable, CaseIterable, Sendable {
    case signup
    case ecommAbandonedBrowse = "ecomm_abandoned_browse"
    case ecommAbandonedCart = "ecomm_abandoned_cart"
}