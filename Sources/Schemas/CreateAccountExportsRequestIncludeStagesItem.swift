import Foundation

public enum CreateAccountExportsRequestIncludeStagesItem: String, Codable, Hashable, CaseIterable, Sendable {
    case audiences
    case campaigns
    case events
    case galleryFiles = "gallery_files"
    case reports
    case templates
}