import Foundation

/// The most recent Note added about this member.
public struct ListsSegmentsMembersLastNote: Codable, Hashable, Sendable {
    /// The date and time the note was created in ISO 8601 format.
    public let createdAt: Date?
    /// The author of the note.
    public let createdBy: String?
    /// The content of the note.
    public let note: String?
    /// The note id.
    public let noteId: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        createdAt: Date? = nil,
        createdBy: String? = nil,
        note: String? = nil,
        noteId: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.createdAt = createdAt
        self.createdBy = createdBy
        self.note = note
        self.noteId = noteId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.createdAt = try container.decodeIfPresent(Date.self, forKey: .createdAt)
        self.createdBy = try container.decodeIfPresent(String.self, forKey: .createdBy)
        self.note = try container.decodeIfPresent(String.self, forKey: .note)
        self.noteId = try container.decodeIfPresent(Int.self, forKey: .noteId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.createdAt, forKey: .createdAt)
        try container.encodeIfPresent(self.createdBy, forKey: .createdBy)
        try container.encodeIfPresent(self.note, forKey: .note)
        try container.encodeIfPresent(self.noteId, forKey: .noteId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case createdAt = "created_at"
        case createdBy = "created_by"
        case note
        case noteId = "note_id"
    }
}