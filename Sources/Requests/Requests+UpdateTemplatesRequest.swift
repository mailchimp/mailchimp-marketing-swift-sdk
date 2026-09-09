import Foundation

extension Requests {
    public struct UpdateTemplatesRequest: Codable, Hashable, Sendable {
        /// The id of the folder the template is currently in.
        public let folderId: String?
        /// The raw HTML for the template. We  support the Mailchimp [Template Language](https://mailchimp.com/help/getting-started-with-mailchimps-template-language/) in any HTML code passed via the API.
        public let html: String?
        /// The name of the template.
        public let name: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            folderId: String? = nil,
            html: String? = nil,
            name: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.folderId = folderId
            self.html = html
            self.name = name
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.folderId = try container.decodeIfPresent(String.self, forKey: .folderId)
            self.html = try container.decodeIfPresent(String.self, forKey: .html)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.folderId, forKey: .folderId)
            try container.encodeIfPresent(self.html, forKey: .html)
            try container.encodeIfPresent(self.name, forKey: .name)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case folderId = "folder_id"
            case html
            case name
        }
    }
}