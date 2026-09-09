import Foundation

/// The Mailchimp tracking code for the order. Uses the 'mc_tc' parameter in E-Commerce tracking URLs.
public enum CreateStoreOrderEcommerceRequestTrackingCode: String, Codable, Hashable, CaseIterable, Sendable {
    case prec
}