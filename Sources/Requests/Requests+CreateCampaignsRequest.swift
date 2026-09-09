import Foundation

extension Requests {
    public struct CreateCampaignsRequest: Codable, Hashable, Sendable {
        /// How the campaign's content is put together. The old drag and drop editor uses 'template' while the new editor uses 'multichannel'. Defaults to template.
        public let contentType: CreateCampaignsRequestContentType?
        /// List settings for the campaign.
        public let recipients: CreateCampaignsRequestRecipients?
        /// [RSS](https://mailchimp.com/help/share-your-blog-posts-with-mailchimp/) options, specific to an RSS campaign.
        public let rssOpts: CreateCampaignsRequestRssOpts?
        /// The settings for your campaign, including subject, from name, reply-to address, and more.
        public let settings: CreateCampaignsRequestSettings?
        /// The preview for the campaign, rendered by social networks like Facebook and Twitter. [Learn more](https://mailchimp.com/help/enable-and-customize-social-cards/).
        public let socialCard: CreateCampaignsRequestSocialCard?
        public let tracking: CampaignTrackingOptions?
        /// There are four types of [campaigns](https://mailchimp.com/help/getting-started-with-campaigns/) you can create in Mailchimp. A/B Split campaigns have been deprecated and variate campaigns should be used instead.
        public let type: CreateCampaignsRequestType
        /// The settings specific to A/B test campaigns.
        public let variateSettings: CreateCampaignsRequestVariateSettings?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            contentType: CreateCampaignsRequestContentType? = nil,
            recipients: CreateCampaignsRequestRecipients? = nil,
            rssOpts: CreateCampaignsRequestRssOpts? = nil,
            settings: CreateCampaignsRequestSettings? = nil,
            socialCard: CreateCampaignsRequestSocialCard? = nil,
            tracking: CampaignTrackingOptions? = nil,
            type: CreateCampaignsRequestType,
            variateSettings: CreateCampaignsRequestVariateSettings? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.contentType = contentType
            self.recipients = recipients
            self.rssOpts = rssOpts
            self.settings = settings
            self.socialCard = socialCard
            self.tracking = tracking
            self.type = type
            self.variateSettings = variateSettings
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.contentType = try container.decodeIfPresent(CreateCampaignsRequestContentType.self, forKey: .contentType)
            self.recipients = try container.decodeIfPresent(CreateCampaignsRequestRecipients.self, forKey: .recipients)
            self.rssOpts = try container.decodeIfPresent(CreateCampaignsRequestRssOpts.self, forKey: .rssOpts)
            self.settings = try container.decodeIfPresent(CreateCampaignsRequestSettings.self, forKey: .settings)
            self.socialCard = try container.decodeIfPresent(CreateCampaignsRequestSocialCard.self, forKey: .socialCard)
            self.tracking = try container.decodeIfPresent(CampaignTrackingOptions.self, forKey: .tracking)
            self.type = try container.decode(CreateCampaignsRequestType.self, forKey: .type)
            self.variateSettings = try container.decodeIfPresent(CreateCampaignsRequestVariateSettings.self, forKey: .variateSettings)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.contentType, forKey: .contentType)
            try container.encodeIfPresent(self.recipients, forKey: .recipients)
            try container.encodeIfPresent(self.rssOpts, forKey: .rssOpts)
            try container.encodeIfPresent(self.settings, forKey: .settings)
            try container.encodeIfPresent(self.socialCard, forKey: .socialCard)
            try container.encodeIfPresent(self.tracking, forKey: .tracking)
            try container.encode(self.type, forKey: .type)
            try container.encodeIfPresent(self.variateSettings, forKey: .variateSettings)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case contentType = "content_type"
            case recipients
            case rssOpts = "rss_opts"
            case settings
            case socialCard = "social_card"
            case tracking
            case type
            case variateSettings = "variate_settings"
        }
    }
}