import Foundation

extension Requests {
    public struct CreateFileFileManagerRequest: Codable, Hashable, Sendable {
        /// The base64-encoded contents of the file.
        public let fileData: String
        /// The id of the folder.
        public let folderId: Int?
        /// The name of the file.
        public let name: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            fileData: String,
            folderId: Int? = nil,
            name: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.fileData = fileData
            self.folderId = folderId
            self.name = name
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.fileData = try container.decode(String.self, forKey: .fileData)
            self.folderId = try container.decodeIfPresent(Int.self, forKey: .folderId)
            self.name = try container.decode(String.self, forKey: .name)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.fileData, forKey: .fileData)
            try container.encodeIfPresent(self.folderId, forKey: .folderId)
            try container.encode(self.name, forKey: .name)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case fileData = "file_data"
            case folderId = "folder_id"
            case name
        }
    }
}