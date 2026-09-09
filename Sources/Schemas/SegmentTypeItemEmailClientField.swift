import Foundation

/// Segment by use of a particular email client.
public enum SegmentTypeItemEmailClientField: String, Codable, Hashable, CaseIterable, Sendable {
    case emailClient = "email_client"
}