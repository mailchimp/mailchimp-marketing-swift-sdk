import Foundation

/// Options for customizing your signup form header.
public struct SignupFormHeader: Codable, Hashable, Sendable {
    /// Image alignment.
    public let imageAlign: SignupFormHeaderImageAlign?
    /// Alt text for the image.
    public let imageAlt: String?
    /// Image border color.
    public let imageBorderColor: String?
    /// Image border style.
    public let imageBorderStyle: SignupFormHeaderImageBorderStyle?
    /// Image border width.
    public let imageBorderWidth: String?
    /// Image height, in pixels.
    public let imageHeight: String?
    /// The URL that the header image will link to.
    public let imageLink: String?
    /// Image link target.
    public let imageTarget: SignupFormHeaderImageTarget?
    /// Header image URL.
    public let imageUrl: String?
    /// Image width, in pixels.
    public let imageWidth: String?
    /// Header text.
    public let text: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        imageAlign: SignupFormHeaderImageAlign? = nil,
        imageAlt: String? = nil,
        imageBorderColor: String? = nil,
        imageBorderStyle: SignupFormHeaderImageBorderStyle? = nil,
        imageBorderWidth: String? = nil,
        imageHeight: String? = nil,
        imageLink: String? = nil,
        imageTarget: SignupFormHeaderImageTarget? = nil,
        imageUrl: String? = nil,
        imageWidth: String? = nil,
        text: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.imageAlign = imageAlign
        self.imageAlt = imageAlt
        self.imageBorderColor = imageBorderColor
        self.imageBorderStyle = imageBorderStyle
        self.imageBorderWidth = imageBorderWidth
        self.imageHeight = imageHeight
        self.imageLink = imageLink
        self.imageTarget = imageTarget
        self.imageUrl = imageUrl
        self.imageWidth = imageWidth
        self.text = text
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.imageAlign = try container.decodeIfPresent(SignupFormHeaderImageAlign.self, forKey: .imageAlign)
        self.imageAlt = try container.decodeIfPresent(String.self, forKey: .imageAlt)
        self.imageBorderColor = try container.decodeIfPresent(String.self, forKey: .imageBorderColor)
        self.imageBorderStyle = try container.decodeIfPresent(SignupFormHeaderImageBorderStyle.self, forKey: .imageBorderStyle)
        self.imageBorderWidth = try container.decodeIfPresent(String.self, forKey: .imageBorderWidth)
        self.imageHeight = try container.decodeIfPresent(String.self, forKey: .imageHeight)
        self.imageLink = try container.decodeIfPresent(String.self, forKey: .imageLink)
        self.imageTarget = try container.decodeIfPresent(SignupFormHeaderImageTarget.self, forKey: .imageTarget)
        self.imageUrl = try container.decodeIfPresent(String.self, forKey: .imageUrl)
        self.imageWidth = try container.decodeIfPresent(String.self, forKey: .imageWidth)
        self.text = try container.decodeIfPresent(String.self, forKey: .text)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.imageAlign, forKey: .imageAlign)
        try container.encodeIfPresent(self.imageAlt, forKey: .imageAlt)
        try container.encodeIfPresent(self.imageBorderColor, forKey: .imageBorderColor)
        try container.encodeIfPresent(self.imageBorderStyle, forKey: .imageBorderStyle)
        try container.encodeIfPresent(self.imageBorderWidth, forKey: .imageBorderWidth)
        try container.encodeIfPresent(self.imageHeight, forKey: .imageHeight)
        try container.encodeIfPresent(self.imageLink, forKey: .imageLink)
        try container.encodeIfPresent(self.imageTarget, forKey: .imageTarget)
        try container.encodeIfPresent(self.imageUrl, forKey: .imageUrl)
        try container.encodeIfPresent(self.imageWidth, forKey: .imageWidth)
        try container.encodeIfPresent(self.text, forKey: .text)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case imageAlign = "image_align"
        case imageAlt = "image_alt"
        case imageBorderColor = "image_border_color"
        case imageBorderStyle = "image_border_style"
        case imageBorderWidth = "image_border_width"
        case imageHeight = "image_height"
        case imageLink = "image_link"
        case imageTarget = "image_target"
        case imageUrl = "image_url"
        case imageWidth = "image_width"
        case text
    }
}