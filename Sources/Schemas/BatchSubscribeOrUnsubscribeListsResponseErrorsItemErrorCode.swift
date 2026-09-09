import Foundation

/// A unique code that identifies this specifc error.
public enum BatchSubscribeOrUnsubscribeListsResponseErrorsItemErrorCode: String, Codable, Hashable, CaseIterable, Sendable {
    case errorContactExists = "ERROR_CONTACT_EXISTS"
    case errorGeneric = "ERROR_GENERIC"
}