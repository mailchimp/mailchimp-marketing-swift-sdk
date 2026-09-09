import Foundation

/// How the campaign's content is put together.
public enum CampaignsContentType: String, Codable, Hashable, CaseIterable, Sendable {
    case template
    case html
    case url
    case multichannel
}