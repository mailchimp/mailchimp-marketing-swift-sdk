import Foundation

/// The social network to segment against.
public enum SegmentTypeItemSocialNetworkMemberValue: String, Codable, Hashable, CaseIterable, Sendable {
    case twitter
    case facebook
    case linkedin
    case flickr
    case foursquare
    case lastfm
    case myspace
    case quora
    case vimeo
    case yelp
    case youtube
}