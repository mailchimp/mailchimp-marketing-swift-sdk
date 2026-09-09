import Foundation

/// The status for the tag on the member, pass in active to add a tag or inactive to remove it.
public enum CreateMemberTagListsRequestTagsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case inactive
    case active
}