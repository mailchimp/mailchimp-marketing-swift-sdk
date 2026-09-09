import Foundation

/// There are four types of [campaigns](https://mailchimp.com/help/getting-started-with-campaigns/) you can create in Mailchimp. A/B Split campaigns have been deprecated and variate campaigns should be used instead.
public enum CampaignsType: String, Codable, Hashable, CaseIterable, Sendable {
    case regular
    case plaintext
    case absplit
    case rss
    case variate
}