import Foundation

/// The type of file in the File Manager.
public enum GalleryFileType: String, Codable, Hashable, CaseIterable, Sendable {
    case image
    case file
}