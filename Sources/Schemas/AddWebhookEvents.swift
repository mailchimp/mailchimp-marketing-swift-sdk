import Foundation

/// The events that can trigger the webhook and whether they are enabled.
public struct AddWebhookEvents: Codable, Hashable, Sendable {
    /// Whether the webhook is triggered when a campaign is sent or cancelled.
    public let campaign: Bool?
    /// Whether the webhook is triggered when a subscriber's email address is cleaned from the list.
    public let cleaned: Bool?
    /// Whether the webhook is triggered when a contact's profile is updated. This includes email subscribers and SMS-only contacts [BETA].
    public let profile: Bool?
    /// Whether the webhook is triggered when a list subscriber is added.
    public let subscribe: Bool?
    /// Whether the webhook is triggered when a list member unsubscribes.
    public let unsubscribe: Bool?
    /// Whether the webhook is triggered when a subscriber's email address is changed.
    public let upemail: Bool?
    /// [BETA] Whether the webhook is triggered when a contact subscribes to SMS.
    public let smsSubscribe: Bool?
    /// [BETA] Whether the webhook is triggered when a contact unsubscribes from SMS.
    public let smsUnsubscribe: Bool?
    /// [BETA] Whether the webhook is triggered when a contact's SMS phone number is updated.
    public let upsms: Bool?
    /// [BETA] Whether the webhook is triggered when an SMS campaign is sent.
    public let smsCampaign: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        campaign: Bool? = nil,
        cleaned: Bool? = nil,
        profile: Bool? = nil,
        subscribe: Bool? = nil,
        unsubscribe: Bool? = nil,
        upemail: Bool? = nil,
        smsSubscribe: Bool? = nil,
        smsUnsubscribe: Bool? = nil,
        upsms: Bool? = nil,
        smsCampaign: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.campaign = campaign
        self.cleaned = cleaned
        self.profile = profile
        self.subscribe = subscribe
        self.unsubscribe = unsubscribe
        self.upemail = upemail
        self.smsSubscribe = smsSubscribe
        self.smsUnsubscribe = smsUnsubscribe
        self.upsms = upsms
        self.smsCampaign = smsCampaign
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.campaign = try container.decodeIfPresent(Bool.self, forKey: .campaign)
        self.cleaned = try container.decodeIfPresent(Bool.self, forKey: .cleaned)
        self.profile = try container.decodeIfPresent(Bool.self, forKey: .profile)
        self.subscribe = try container.decodeIfPresent(Bool.self, forKey: .subscribe)
        self.unsubscribe = try container.decodeIfPresent(Bool.self, forKey: .unsubscribe)
        self.upemail = try container.decodeIfPresent(Bool.self, forKey: .upemail)
        self.smsSubscribe = try container.decodeIfPresent(Bool.self, forKey: .smsSubscribe)
        self.smsUnsubscribe = try container.decodeIfPresent(Bool.self, forKey: .smsUnsubscribe)
        self.upsms = try container.decodeIfPresent(Bool.self, forKey: .upsms)
        self.smsCampaign = try container.decodeIfPresent(Bool.self, forKey: .smsCampaign)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.campaign, forKey: .campaign)
        try container.encodeIfPresent(self.cleaned, forKey: .cleaned)
        try container.encodeIfPresent(self.profile, forKey: .profile)
        try container.encodeIfPresent(self.subscribe, forKey: .subscribe)
        try container.encodeIfPresent(self.unsubscribe, forKey: .unsubscribe)
        try container.encodeIfPresent(self.upemail, forKey: .upemail)
        try container.encodeIfPresent(self.smsSubscribe, forKey: .smsSubscribe)
        try container.encodeIfPresent(self.smsUnsubscribe, forKey: .smsUnsubscribe)
        try container.encodeIfPresent(self.upsms, forKey: .upsms)
        try container.encodeIfPresent(self.smsCampaign, forKey: .smsCampaign)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case campaign
        case cleaned
        case profile
        case subscribe
        case unsubscribe
        case upemail
        case smsSubscribe = "sms_subscribe"
        case smsUnsubscribe = "sms_unsubscribe"
        case upsms
        case smsCampaign = "sms_campaign"
    }
}