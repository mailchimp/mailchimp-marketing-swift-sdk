import Foundation

extension Requests {
    public struct UpdateCampaignsRequest: Codable, Hashable, Sendable {
        /// List settings for the campaign.
        public let recipients: UpdateCampaignsRequestRecipients?
        /// [RSS](https://mailchimp.com/help/share-your-blog-posts-with-mailchimp/) options for a campaign.
        public let rssOpts: UpdateCampaignsRequestRssOpts?
        /// The settings for your campaign, including subject, from name, reply-to address, and more.
        public let settings: UpdateCampaignsRequestSettings?
        /// The preview for the campaign, rendered by social networks like Facebook and Twitter. [Learn more](https://mailchimp.com/help/enable-and-customize-social-cards/).
        public let socialCard: UpdateCampaignsRequestSocialCard?
        public let tracking: CampaignTrackingOptions?
        /// The settings specific to A/B test campaigns.
        public let variateSettings: UpdateCampaignsRequestVariateSettings?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            recipients: UpdateCampaignsRequestRecipients? = nil,
            rssOpts: UpdateCampaignsRequestRssOpts? = nil,
            settings: UpdateCampaignsRequestSettings? = nil,
            socialCard: UpdateCampaignsRequestSocialCard? = nil,
            tracking: CampaignTrackingOptions? = nil,
            variateSettings: UpdateCampaignsRequestVariateSettings? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.recipients = recipients
            self.rssOpts = rssOpts
            self.settings = settings
            self.socialCard = socialCard
            self.tracking = tracking
            self.variateSettings = variateSettings
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.recipients = try container.decodeIfPresent(UpdateCampaignsRequestRecipients.self, forKey: .recipients)
            self.rssOpts = try container.decodeIfPresent(UpdateCampaignsRequestRssOpts.self, forKey: .rssOpts)
            self.settings = try container.decodeIfPresent(UpdateCampaignsRequestSettings.self, forKey: .settings)
            self.socialCard = try container.decodeIfPresent(UpdateCampaignsRequestSocialCard.self, forKey: .socialCard)
            self.tracking = try container.decodeIfPresent(CampaignTrackingOptions.self, forKey: .tracking)
            self.variateSettings = try container.decodeIfPresent(UpdateCampaignsRequestVariateSettings.self, forKey: .variateSettings)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.recipients, forKey: .recipients)
            try container.encodeIfPresent(self.rssOpts, forKey: .rssOpts)
            try container.encodeIfPresent(self.settings, forKey: .settings)
            try container.encodeIfPresent(self.socialCard, forKey: .socialCard)
            try container.encodeIfPresent(self.tracking, forKey: .tracking)
            try container.encodeIfPresent(self.variateSettings, forKey: .variateSettings)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case recipients
            case rssOpts = "rss_opts"
            case settings
            case socialCard = "social_card"
            case tracking
            case variateSettings = "variate_settings"
        }
    }
}