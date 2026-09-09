import Foundation

/// The current state of a campaign delivery.
public enum CampaignDeliveryStatusStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case delivering
    case delivered
    case canceling
    case canceled
}