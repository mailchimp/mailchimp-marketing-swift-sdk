import Foundation

/// How the campaign's content is put together. The old drag and drop editor uses 'template' while the new editor uses 'multichannel'. Defaults to template.
public enum CreateCampaignsRequestContentType: String, Codable, Hashable, CaseIterable, Sendable {
    case template
    case multichannel
}