import Foundation

/// The status of a contact.
public enum AudiencesContactStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case archived
}