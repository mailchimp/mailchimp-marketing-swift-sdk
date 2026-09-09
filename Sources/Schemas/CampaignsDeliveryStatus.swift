import Foundation

/// Updates on campaigns in the process of sending.
public struct CampaignsDeliveryStatus: Codable, Hashable, Sendable {
    /// Whether a campaign send can be canceled.
    public let canCancel: Bool?
    /// The total number of emails canceled for this campaign.
    public let emailsCanceled: Int?
    /// The total number of emails confirmed sent for this campaign so far.
    public let emailsSent: Int?
    /// Whether Campaign Delivery Status is enabled for this account and campaign.
    public let enabled: Bool?
    /// The current state of a campaign delivery.
    public let status: CampaignsDeliveryStatusStatus?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        canCancel: Bool? = nil,
        emailsCanceled: Int? = nil,
        emailsSent: Int? = nil,
        enabled: Bool? = nil,
        status: CampaignsDeliveryStatusStatus? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.canCancel = canCancel
        self.emailsCanceled = emailsCanceled
        self.emailsSent = emailsSent
        self.enabled = enabled
        self.status = status
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.canCancel = try container.decodeIfPresent(Bool.self, forKey: .canCancel)
        self.emailsCanceled = try container.decodeIfPresent(Int.self, forKey: .emailsCanceled)
        self.emailsSent = try container.decodeIfPresent(Int.self, forKey: .emailsSent)
        self.enabled = try container.decodeIfPresent(Bool.self, forKey: .enabled)
        self.status = try container.decodeIfPresent(CampaignsDeliveryStatusStatus.self, forKey: .status)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.canCancel, forKey: .canCancel)
        try container.encodeIfPresent(self.emailsCanceled, forKey: .emailsCanceled)
        try container.encodeIfPresent(self.emailsSent, forKey: .emailsSent)
        try container.encodeIfPresent(self.enabled, forKey: .enabled)
        try container.encodeIfPresent(self.status, forKey: .status)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case canCancel = "can_cancel"
        case emailsCanceled = "emails_canceled"
        case emailsSent = "emails_sent"
        case enabled
        case status
    }
}