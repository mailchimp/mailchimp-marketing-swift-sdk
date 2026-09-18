# Reference
## root
<details><summary><code>client.root.<a href="/Sources/Resources/Root/RootClient.swift">list</a>(fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> ListRootResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get links to all other resources available in the API.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.root.list()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## AccountExports
<details><summary><code>client.accountExports.<a href="/Sources/Resources/AccountExports/AccountExportsClient.swift">list</a>(fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, requestOptions: RequestOptions?) -> ListAccountExportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of account exports for a given account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.accountExports.list()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.accountExports.<a href="/Sources/Resources/AccountExports/AccountExportsClient.swift">create</a>(request: Requests.CreateAccountExportsRequest, requestOptions: RequestOptions?) -> CreateAccountExportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new account export in your Mailchimp account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.accountExports.create(request: .init(includeStages: [
        .audiences,
        .galleryFiles
    ]))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CreateAccountExportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.accountExports.<a href="/Sources/Resources/AccountExports/AccountExportsClient.swift">get</a>(exportId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> GetAccountExportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific account export.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.accountExports.get(exportId: "export_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**exportId:** `String` — The unique id for the account export.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ActivityFeed
<details><summary><code>client.activityFeed.<a href="/Sources/Resources/ActivityFeed/ActivityFeedClient.swift">list</a>(requestOptions: RequestOptions?) -> [ListActivityFeedResponseItem]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about the activity feed endpoint's resources.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.activityFeed.list()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.activityFeed.<a href="/Sources/Resources/ActivityFeed/ActivityFeedClient.swift">listChimpChatter</a>(count: Int?, offset: Int?, requestOptions: RequestOptions?) -> ListChimpChatterActivityFeedResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return the Chimp Chatter for this account ordered by most recent.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.activityFeed.listChimpChatter()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Audiences
<details><summary><code>client.audiences.<a href="/Sources/Resources/Audiences/AudiencesClient.swift">getAudienceContactList</a>(audienceId: String, fields: [String]?, excludeFields: [String]?, count: Int?, cursor: String?, createdBefore: Date?, createdSince: Date?, updatedBefore: Date?, updatedSince: Date?, sortField: GetAudienceContactListRequestSortField?, sortDir: GetAudienceContactListRequestSortDir?, requestOptions: RequestOptions?) -> GetAudienceContactListResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of omni-channel contacts for a given audience.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.audiences.getAudienceContactList(audienceId: "audience_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**audienceId:** `String` — The unique ID for the audience.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `String?` — Paginate through a collection of records by setting the `cursor` parameter to a `next_cursor` attribute returned by a previous request. Default value fetches the first "page" of results.
    
</dd>
</dl>

<dl>
<dd>

**createdBefore:** `Date?` — Restricts the response to contacts created at or before the specified time (inclusive). Uses ISO 8601 format: 2025-04-23T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**createdSince:** `Date?` — Restricts the response to contacts created after the specified time (exclusive). Uses ISO 8601 format: 2025-04-23T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**updatedBefore:** `Date?` — Restricts the response to contacts updated at or before the specified time (inclusive). Uses ISO 8601 format: 2025-04-23T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**updatedSince:** `Date?` — Restricts the response to contacts updated after the specified time (exclusive). Uses ISO 8601 format: 2025-04-23T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**sortField:** `GetAudienceContactListRequestSortField?` — Specifies the field to sort the returned contacts by.
    
</dd>
</dl>

<dl>
<dd>

**sortDir:** `GetAudienceContactListRequestSortDir?` — Determines the order direction for sorted results.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.audiences.<a href="/Sources/Resources/Audiences/AudiencesClient.swift">createAudienceContact</a>(audienceId: String, mergeFieldValidationMode: CreateAudienceContactRequestMergeFieldValidationMode?, dataMode: CreateAudienceContactRequestDataMode?, request: Requests.CreateAudienceContactRequest, requestOptions: RequestOptions?) -> AudiencesContact</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new omni-channel contact for an audience.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.audiences.createAudienceContact(
        audienceId: "audience_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**audienceId:** `String` — The unique ID for the audience.
    
</dd>
</dl>

<dl>
<dd>

**mergeFieldValidationMode:** `CreateAudienceContactRequestMergeFieldValidationMode?` — Defines how merge field validation is handled. When set to `ignore_required_checks`, the API does not raise an error if required merge fields are missing from the request. When set to `strict`, the API enforces validation and returns an error if any required merge field is not provided. If this setting is omitted, `strict` is applied by default.
    
</dd>
</dl>

<dl>
<dd>

**dataMode:** `CreateAudienceContactRequestDataMode?` — Indicates the data processing mode. In `historical` mode, contact data changes do not trigger automations or webhooks. In `live mode`, such changes do trigger them.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateAudienceContactRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.audiences.<a href="/Sources/Resources/Audiences/AudiencesClient.swift">getAudienceContact</a>(audienceId: String, contactId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> AudiencesContact</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a specific omni-channel contact in an audience.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.audiences.getAudienceContact(
        audienceId: "audience_id",
        contactId: "contact_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**audienceId:** `String` — The unique ID for the audience.
    
</dd>
</dl>

<dl>
<dd>

**contactId:** `String` — A unique identifier for the contact, which can be a Mailchimp contact ID or a channel hash. A channel hash must follow the format email:[md5_hash] (where the hash is the MD5 of the lowercased email address) or sms:[sha256_hash] (where the hash is the SHA256 of the E.164-formatted phone number).
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.audiences.<a href="/Sources/Resources/Audiences/AudiencesClient.swift">patchAudienceContact</a>(audienceId: String, contactId: String, mergeFieldValidationMode: PatchAudienceContactRequestMergeFieldValidationMode?, dataMode: PatchAudienceContactRequestDataMode?, request: Requests.PatchAudienceContactRequest, requestOptions: RequestOptions?) -> AudiencesContact</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update an existing omni-channel contact.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.audiences.patchAudienceContact(
        audienceId: "audience_id",
        contactId: "contact_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**audienceId:** `String` — The unique ID for the audience.
    
</dd>
</dl>

<dl>
<dd>

**contactId:** `String` — The unique id for the contact.
    
</dd>
</dl>

<dl>
<dd>

**mergeFieldValidationMode:** `PatchAudienceContactRequestMergeFieldValidationMode?` — Defines how merge field validation is handled. When set to `ignore_required_checks`, the API does not raise an error if required merge fields are missing from the request. When set to `strict`, the API enforces validation and returns an error if any required merge field is not provided. If this setting is omitted, `strict` is applied by default.
    
</dd>
</dl>

<dl>
<dd>

**dataMode:** `PatchAudienceContactRequestDataMode?` — Indicates the data processing mode. In `historical` mode, contact data changes do not trigger automations or webhooks. In `live mode`, such changes do trigger them.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.PatchAudienceContactRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.audiences.<a href="/Sources/Resources/Audiences/AudiencesClient.swift">postAudiencesContactsActionsArchive</a>(audienceId: String, contactId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Archives a Contact.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.audiences.postAudiencesContactsActionsArchive(
        audienceId: "audience_id",
        contactId: "contact_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**audienceId:** `String` — The unique ID for the audience.
    
</dd>
</dl>

<dl>
<dd>

**contactId:** `String` — The unique id for the contact.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.audiences.<a href="/Sources/Resources/Audiences/AudiencesClient.swift">postAudiencesContactsActionsForget</a>(audienceId: String, contactId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Forgets a Contact.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.audiences.postAudiencesContactsActionsForget(
        audienceId: "audience_id",
        contactId: "contact_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**audienceId:** `String` — The unique ID for the audience.
    
</dd>
</dl>

<dl>
<dd>

**contactId:** `String` — The unique id for the contact.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## AuthorizedApps
<details><summary><code>client.authorizedApps.<a href="/Sources/Resources/AuthorizedApps/AuthorizedAppsClient.swift">list</a>(fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, requestOptions: RequestOptions?) -> ListAuthorizedAppsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of an account's registered, connected applications.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.authorizedApps.list()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.authorizedApps.<a href="/Sources/Resources/AuthorizedApps/AuthorizedAppsClient.swift">get</a>(appId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> GetAuthorizedAppsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific authorized application.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.authorizedApps.get(appId: "app_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**appId:** `String` — The unique id for the connected authorized application.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## automations
<details><summary><code>client.automations.<a href="/Sources/Resources/Automations/AutomationsClient.swift">list</a>(count: Int?, offset: Int?, fields: [String]?, excludeFields: [String]?, beforeCreateTime: Date?, sinceCreateTime: Date?, beforeStartTime: Date?, sinceStartTime: Date?, status: ListAutomationsRequestStatus?, requestOptions: RequestOptions?) -> ListAutomationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a summary of an account's classic automations.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.automations.list()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**beforeCreateTime:** `Date?` — Restrict the response to automations created before this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**sinceCreateTime:** `Date?` — Restrict the response to automations created after this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**beforeStartTime:** `Date?` — Restrict the response to automations started before this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**sinceStartTime:** `Date?` — Restrict the response to automations started after this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**status:** `ListAutomationsRequestStatus?` — Restrict the results to automations with the specified status.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/Sources/Resources/Automations/AutomationsClient.swift">create</a>(request: Requests.CreateAutomationsRequest, requestOptions: RequestOptions?) -> AutomationWorkflow</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new classic automation in your Mailchimp account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.automations.create(request: .init(
        recipients: CreateAutomationsRequestRecipients(

        ),
        triggerSettings: CreateAutomationsRequestTriggerSettings(
            workflowType: .abandonedBrowse
        )
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CreateAutomationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/Sources/Resources/Automations/AutomationsClient.swift">get</a>(workflowId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> AutomationWorkflow</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a summary of an individual classic automation workflow's settings and content. The `trigger_settings` object returns information for the first email in the workflow.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.automations.get(workflowId: "workflow_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflowId:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/Sources/Resources/Automations/AutomationsClient.swift">createActionArchive</a>(workflowId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Archiving will permanently end your automation and keep the report data. You’ll be able to replicate your archived automation, but you can’t restart it.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.automations.createActionArchive(workflowId: "workflow_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflowId:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/Sources/Resources/Automations/AutomationsClient.swift">createActionPauseAllEmail</a>(workflowId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Pause all emails in a specific classic automation workflow.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.automations.createActionPauseAllEmail(workflowId: "workflow_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflowId:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/Sources/Resources/Automations/AutomationsClient.swift">createActionStartAllEmail</a>(workflowId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Start all emails in a classic automation workflow.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.automations.createActionStartAllEmail(workflowId: "workflow_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflowId:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/Sources/Resources/Automations/AutomationsClient.swift">listEmails</a>(workflowId: String, requestOptions: RequestOptions?) -> ListEmailsAutomationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a summary of the emails in a classic automation workflow.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.automations.listEmails(workflowId: "workflow_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflowId:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/Sources/Resources/Automations/AutomationsClient.swift">getEmail</a>(workflowId: String, workflowEmailId: String, requestOptions: RequestOptions?) -> AutomationWorkflowEmail</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about an individual classic automation workflow email.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.automations.getEmail(
        workflowId: "workflow_id",
        workflowEmailId: "workflow_email_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflowId:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**workflowEmailId:** `String` — The unique id for the Automation workflow email.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/Sources/Resources/Automations/AutomationsClient.swift">deleteEmail</a>(workflowId: String, workflowEmailId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes an individual classic automation workflow email. Emails from certain workflow types, including the Abandoned Cart Email (abandonedCart) and Product Retargeting Email (abandonedBrowse) Workflows, cannot be deleted.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.automations.deleteEmail(
        workflowId: "workflow_id",
        workflowEmailId: "workflow_email_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflowId:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**workflowEmailId:** `String` — The unique id for the Automation workflow email.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/Sources/Resources/Automations/AutomationsClient.swift">updateEmail</a>(workflowId: String, workflowEmailId: String, request: Requests.UpdateEmailAutomationsRequest, requestOptions: RequestOptions?) -> AutomationWorkflowEmail</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update settings for a classic automation workflow email.  Only works with workflows of type: abandonedBrowse, abandonedCart, emailFollowup, or singleWelcome.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.automations.updateEmail(
        workflowId: "workflow_id",
        workflowEmailId: "workflow_email_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflowId:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**workflowEmailId:** `String` — The unique id for the Automation workflow email.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateEmailAutomationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/Sources/Resources/Automations/AutomationsClient.swift">createEmailActionPause</a>(workflowId: String, workflowEmailId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Pause an automated email.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.automations.createEmailActionPause(
        workflowId: "workflow_id",
        workflowEmailId: "workflow_email_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflowId:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**workflowEmailId:** `String` — The unique id for the Automation workflow email.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/Sources/Resources/Automations/AutomationsClient.swift">createEmailActionStart</a>(workflowId: String, workflowEmailId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Start an automated email.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.automations.createEmailActionStart(
        workflowId: "workflow_id",
        workflowEmailId: "workflow_email_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflowId:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**workflowEmailId:** `String` — The unique id for the Automation workflow email.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/Sources/Resources/Automations/AutomationsClient.swift">listEmailQueue</a>(workflowId: String, workflowEmailId: String, requestOptions: RequestOptions?) -> ListEmailQueueAutomationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a classic automation email queue.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.automations.listEmailQueue(
        workflowId: "workflow_id",
        workflowEmailId: "workflow_email_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflowId:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**workflowEmailId:** `String` — The unique id for the Automation workflow email.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/Sources/Resources/Automations/AutomationsClient.swift">createEmailQueue</a>(workflowId: String, workflowEmailId: String, request: Requests.CreateEmailQueueAutomationsRequest, requestOptions: RequestOptions?) -> SubscriberInAutomationQueue</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Manually add a subscriber to a workflow, bypassing the default trigger settings. You can also use this endpoint to trigger a series of automated emails in an API 3.0 workflow type.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.automations.createEmailQueue(
        workflowId: "workflow_id",
        workflowEmailId: "workflow_email_id",
        request: .init(emailAddress: "email_address")
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflowId:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**workflowEmailId:** `String` — The unique id for the Automation workflow email.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateEmailQueueAutomationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/Sources/Resources/Automations/AutomationsClient.swift">getEmailQueue</a>(workflowId: String, workflowEmailId: String, subscriberHash: String, requestOptions: RequestOptions?) -> SubscriberInAutomationQueue</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific subscriber in a classic automation email queue.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.automations.getEmailQueue(
        workflowId: "workflow_id",
        workflowEmailId: "workflow_email_id",
        subscriberHash: "subscriber_hash"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflowId:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**workflowEmailId:** `String` — The unique id for the Automation workflow email.
    
</dd>
</dl>

<dl>
<dd>

**subscriberHash:** `String` — The MD5 hash of the lowercase version of the list member's email address.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/Sources/Resources/Automations/AutomationsClient.swift">listRemovedSubscribers</a>(workflowId: String, requestOptions: RequestOptions?) -> ListRemovedSubscribersAutomationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about subscribers who were removed from a classic automation workflow.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.automations.listRemovedSubscribers(workflowId: "workflow_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflowId:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/Sources/Resources/Automations/AutomationsClient.swift">createRemovedSubscriber</a>(workflowId: String, request: Requests.CreateRemovedSubscriberAutomationsRequest, requestOptions: RequestOptions?) -> SubscriberRemovedFromAutomationWorkflow</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Remove a subscriber from a specific classic automation workflow. You can remove a subscriber at any point in an automation workflow, regardless of how many emails they've been sent from that workflow. Once they're removed, they can never be added back to the same workflow.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.automations.createRemovedSubscriber(
        workflowId: "workflow_id",
        request: .init(emailAddress: "email_address")
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflowId:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateRemovedSubscriberAutomationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/Sources/Resources/Automations/AutomationsClient.swift">getRemovedSubscriber</a>(workflowId: String, subscriberHash: String, requestOptions: RequestOptions?) -> SubscriberRemovedFromAutomationWorkflow</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific subscriber who was removed from a classic automation workflow.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.automations.getRemovedSubscriber(
        workflowId: "workflow_id",
        subscriberHash: "subscriber_hash"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflowId:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**subscriberHash:** `String` — The MD5 hash of the lowercase version of the list member's email address.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## BatchWebhooks
<details><summary><code>client.batchWebhooks.<a href="/Sources/Resources/BatchWebhooks/BatchWebhooksClient.swift">list</a>(fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, requestOptions: RequestOptions?) -> ListBatchWebhooksResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get all webhooks that have been configured for batches.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.batchWebhooks.list()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.batchWebhooks.<a href="/Sources/Resources/BatchWebhooks/BatchWebhooksClient.swift">create</a>(request: Requests.CreateBatchWebhooksRequest, requestOptions: RequestOptions?) -> CreateBatchWebhooksResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Configure a webhook that will fire whenever any batch request completes processing.  You may only have a maximum of 20 batch webhooks.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.batchWebhooks.create(request: .init(url: "http://yourdomain.com/webhook"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CreateBatchWebhooksRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.batchWebhooks.<a href="/Sources/Resources/BatchWebhooks/BatchWebhooksClient.swift">get</a>(batchWebhookId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> BatchWebhook</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific batch webhook.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.batchWebhooks.get(batchWebhookId: "batch_webhook_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**batchWebhookId:** `String` — The unique id for the batch webhook.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.batchWebhooks.<a href="/Sources/Resources/BatchWebhooks/BatchWebhooksClient.swift">delete</a>(batchWebhookId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Remove a batch webhook. Webhooks will no longer be sent to the given URL.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.batchWebhooks.delete(batchWebhookId: "batch_webhook_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**batchWebhookId:** `String` — The unique id for the batch webhook.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.batchWebhooks.<a href="/Sources/Resources/BatchWebhooks/BatchWebhooksClient.swift">update</a>(batchWebhookId: String, request: Requests.UpdateBatchWebhooksRequest, requestOptions: RequestOptions?) -> BatchWebhook</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a webhook that will fire whenever any batch request completes processing.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.batchWebhooks.update(
        batchWebhookId: "batch_webhook_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**batchWebhookId:** `String` — The unique id for the batch webhook.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateBatchWebhooksRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## batches
<details><summary><code>client.batches.<a href="/Sources/Resources/Batches/BatchesClient.swift">list</a>(fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, requestOptions: RequestOptions?) -> ListBatchesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a summary of batch requests that have been made.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.batches.list()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.batches.<a href="/Sources/Resources/Batches/BatchesClient.swift">create</a>(request: Requests.CreateBatchesRequest, requestOptions: RequestOptions?) -> Batch</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Begin processing a batch operations request.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.batches.create(request: .init(operations: [
        CreateBatchesRequestOperationsItem(
            method: .get,
            path: "/lists"
        )
    ]))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CreateBatchesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.batches.<a href="/Sources/Resources/Batches/BatchesClient.swift">get</a>(batchId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> Batch</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get the status of a batch request.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.batches.get(batchId: "batch_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**batchId:** `String` — The unique id for the batch operation.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.batches.<a href="/Sources/Resources/Batches/BatchesClient.swift">delete</a>(batchId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Stops a batch request from running. Since only one batch request is run at a time, this can be used to cancel a long running request. The results of any completed operations will not be available after this call.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.batches.delete(batchId: "batch_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**batchId:** `String` — The unique id for the batch operation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## CampaignFolders
<details><summary><code>client.campaignFolders.<a href="/Sources/Resources/CampaignFolders/CampaignFoldersClient.swift">list</a>(fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, requestOptions: RequestOptions?) -> CampaignFolders</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get all folders used to organize campaigns.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.campaignFolders.list()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaignFolders.<a href="/Sources/Resources/CampaignFolders/CampaignFoldersClient.swift">create</a>(request: Requests.CreateCampaignFoldersRequest, requestOptions: RequestOptions?) -> CampaignFolders</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new campaign folder.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.campaignFolders.create(request: .init(name: "name"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CreateCampaignFoldersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaignFolders.<a href="/Sources/Resources/CampaignFolders/CampaignFoldersClient.swift">get</a>(folderId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> GetCampaignFoldersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific folder used to organize campaigns.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.campaignFolders.get(folderId: "folder_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**folderId:** `String` — The unique id for the campaign folder.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaignFolders.<a href="/Sources/Resources/CampaignFolders/CampaignFoldersClient.swift">delete</a>(folderId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a specific campaign folder, and mark all the campaigns in the folder as 'unfiled'.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.campaignFolders.delete(folderId: "folder_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**folderId:** `String` — The unique id for the campaign folder.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaignFolders.<a href="/Sources/Resources/CampaignFolders/CampaignFoldersClient.swift">update</a>(folderId: String, request: Requests.UpdateCampaignFoldersRequest, requestOptions: RequestOptions?) -> UpdateCampaignFoldersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a specific folder used to organize campaigns.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.campaignFolders.update(
        folderId: "folder_id",
        request: .init(name: "name")
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**folderId:** `String` — The unique id for the campaign folder.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateCampaignFoldersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## campaigns
<details><summary><code>client.campaigns.<a href="/Sources/Resources/Campaigns/CampaignsClient.swift">list</a>(fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, type: ListCampaignsRequestType?, status: ListCampaignsRequestStatus?, beforeSendTime: Date?, sinceSendTime: Date?, beforeCreateTime: Date?, sinceCreateTime: Date?, listId: String?, folderId: String?, memberId: String?, sortField: ListCampaignsRequestSortField?, sortDir: ListCampaignsRequestSortDir?, includeResendShortcutEligibility: Bool?, includeResendShortcutUsage: Bool?, requestOptions: RequestOptions?) -> ListCampaignsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get all campaigns in an account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.campaigns.list()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**type:** `ListCampaignsRequestType?` — The campaign type.
    
</dd>
</dl>

<dl>
<dd>

**status:** `ListCampaignsRequestStatus?` — The status of the campaign.
    
</dd>
</dl>

<dl>
<dd>

**beforeSendTime:** `Date?` — Restrict the response to campaigns sent before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**sinceSendTime:** `Date?` — Restrict the response to campaigns sent after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**beforeCreateTime:** `Date?` — Restrict the response to campaigns created before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**sinceCreateTime:** `Date?` — Restrict the response to campaigns created after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**listId:** `String?` — The unique id for the list.
    
</dd>
</dl>

<dl>
<dd>

**folderId:** `String?` — The unique folder id.
    
</dd>
</dl>

<dl>
<dd>

**memberId:** `String?` — Retrieve campaigns sent to a particular list member. Member ID is The MD5 hash of the lowercase version of the list member’s email address.
    
</dd>
</dl>

<dl>
<dd>

**sortField:** `ListCampaignsRequestSortField?` — Returns files sorted by the specified field.
    
</dd>
</dl>

<dl>
<dd>

**sortDir:** `ListCampaignsRequestSortDir?` — Determines the order direction for sorted results.
    
</dd>
</dl>

<dl>
<dd>

**includeResendShortcutEligibility:** `Bool?` — Return the `resend_shortcut_eligibility` field in the response, which tells you if the campaign is eligible for the various Campaign Resend Shortcuts offered.
    
</dd>
</dl>

<dl>
<dd>

**includeResendShortcutUsage:** `Bool?` — Return the `resend_shortcut_usage` field in the response.  This includes information about campaigns related by a shortcut.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/Sources/Resources/Campaigns/CampaignsClient.swift">create</a>(request: Requests.CreateCampaignsRequest, requestOptions: RequestOptions?) -> Campaign</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new Mailchimp campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.campaigns.create(request: .init(type: .regular))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CreateCampaignsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/Sources/Resources/Campaigns/CampaignsClient.swift">get</a>(campaignId: String, fields: [String]?, excludeFields: [String]?, includeResendShortcutEligibility: Bool?, includeResendShortcutUsage: Bool?, requestOptions: RequestOptions?) -> Campaign</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.campaigns.get(campaignId: "campaign_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**includeResendShortcutEligibility:** `Bool?` — Return the `resend_shortcut_eligibility` field in the response, which tells you if the campaign is eligible for the various Campaign Resend Shortcuts offered.
    
</dd>
</dl>

<dl>
<dd>

**includeResendShortcutUsage:** `Bool?` — Return the `resend_shortcut_usage` field in the response.  This includes information about campaigns related by a shortcut.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/Sources/Resources/Campaigns/CampaignsClient.swift">delete</a>(campaignId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Remove a campaign from your Mailchimp account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.campaigns.delete(campaignId: "campaign_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/Sources/Resources/Campaigns/CampaignsClient.swift">update</a>(campaignId: String, request: Requests.UpdateCampaignsRequest, requestOptions: RequestOptions?) -> Campaign</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update some or all of the settings for a specific campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.campaigns.update(
        campaignId: "campaign_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateCampaignsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/Sources/Resources/Campaigns/CampaignsClient.swift">createActionCancelSend</a>(campaignId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Cancel a Regular or Plain-Text Campaign after you send, before all of your recipients receive it. This feature is included with Mailchimp Pro.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.campaigns.createActionCancelSend(campaignId: "campaign_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/Sources/Resources/Campaigns/CampaignsClient.swift">createActionCreateResend</a>(campaignId: String, request: Requests.CreateActionCreateResendCampaignsRequest, requestOptions: RequestOptions?) -> Campaign</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Remove the guesswork for resending a campaign to certain segments. You can use this endpoint as a shortcut to replicate a campaign and resend it to common segments, such as those who didn't open the campaign, or any new subscribers since it was sent.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.campaigns.createActionCreateResend(
        campaignId: "campaign_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateActionCreateResendCampaignsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/Sources/Resources/Campaigns/CampaignsClient.swift">createActionPause</a>(campaignId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Pause an RSS-Driven campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.campaigns.createActionPause(campaignId: "campaign_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/Sources/Resources/Campaigns/CampaignsClient.swift">createActionReplicate</a>(campaignId: String, requestOptions: RequestOptions?) -> Campaign</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Replicate a campaign in saved or send status.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.campaigns.createActionReplicate(campaignId: "campaign_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/Sources/Resources/Campaigns/CampaignsClient.swift">createActionResume</a>(campaignId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Resume an RSS-Driven campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.campaigns.createActionResume(campaignId: "campaign_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/Sources/Resources/Campaigns/CampaignsClient.swift">createActionSchedule</a>(campaignId: String, request: Requests.CreateActionScheduleCampaignsRequest, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Schedule a campaign for delivery. If you're using Multivariate Campaigns to test send times or sending RSS Campaigns, use the send action instead.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.campaigns.createActionSchedule(
        campaignId: "campaign_id",
        request: .init(scheduleTime: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateActionScheduleCampaignsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/Sources/Resources/Campaigns/CampaignsClient.swift">createActionSend</a>(campaignId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Send a Mailchimp campaign. For RSS Campaigns, the campaign will send according to its schedule. All other campaigns will send immediately.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.campaigns.createActionSend(campaignId: "campaign_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/Sources/Resources/Campaigns/CampaignsClient.swift">createActionTest</a>(campaignId: String, request: Requests.CreateActionTestCampaignsRequest, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Send a test email.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.campaigns.createActionTest(
        campaignId: "campaign_id",
        request: .init(
            sendType: .html,
            testEmails: [
                "test_emails"
            ]
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateActionTestCampaignsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/Sources/Resources/Campaigns/CampaignsClient.swift">createActionUnschedule</a>(campaignId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Unschedule a scheduled campaign that hasn't started sending.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.campaigns.createActionUnschedule(campaignId: "campaign_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/Sources/Resources/Campaigns/CampaignsClient.swift">getContent</a>(campaignId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> CampaignContent</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get the the HTML and plain-text content for a campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.campaigns.getContent(campaignId: "campaign_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/Sources/Resources/Campaigns/CampaignsClient.swift">upsertContent</a>(campaignId: String, request: CampaignContent, requestOptions: RequestOptions?) -> CampaignContent</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Set the content for a campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.campaigns.upsertContent(
        campaignId: "campaign_id",
        request: CampaignContent(

        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**request:** `CampaignContent` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/Sources/Resources/Campaigns/CampaignsClient.swift">listFeedback</a>(campaignId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> ListFeedbackCampaignsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get team feedback while you're working together on a Mailchimp campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.campaigns.listFeedback(campaignId: "campaign_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/Sources/Resources/Campaigns/CampaignsClient.swift">createFeedback</a>(campaignId: String, request: Requests.CreateFeedbackCampaignsRequest, requestOptions: RequestOptions?) -> CreateFeedbackCampaignsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add feedback on a specific campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.campaigns.createFeedback(
        campaignId: "campaign_id",
        request: .init(message: "message")
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateFeedbackCampaignsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/Sources/Resources/Campaigns/CampaignsClient.swift">getFeedback</a>(campaignId: String, feedbackId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> CampaignFeedback</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a specific feedback message from a campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.campaigns.getFeedback(
        campaignId: "campaign_id",
        feedbackId: "feedback_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**feedbackId:** `String` — The unique id for the feedback message.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/Sources/Resources/Campaigns/CampaignsClient.swift">deleteFeedback</a>(campaignId: String, feedbackId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Remove a specific feedback message for a campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.campaigns.deleteFeedback(
        campaignId: "campaign_id",
        feedbackId: "feedback_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**feedbackId:** `String` — The unique id for the feedback message.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/Sources/Resources/Campaigns/CampaignsClient.swift">updateFeedback</a>(campaignId: String, feedbackId: String, request: Requests.UpdateFeedbackCampaignsRequest, requestOptions: RequestOptions?) -> CampaignFeedback</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a specific feedback message for a campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.campaigns.updateFeedback(
        campaignId: "campaign_id",
        feedbackId: "feedback_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**feedbackId:** `String` — The unique id for the feedback message.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateFeedbackCampaignsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/Sources/Resources/Campaigns/CampaignsClient.swift">listSendChecklist</a>(campaignId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> ListSendChecklistCampaignsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Review the send checklist for a campaign, and resolve any issues before sending.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.campaigns.listSendChecklist(campaignId: "campaign_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ConnectedSites
<details><summary><code>client.connectedSites.<a href="/Sources/Resources/ConnectedSites/ConnectedSitesClient.swift">list</a>(fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, requestOptions: RequestOptions?) -> ListConnectedSitesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get all connected sites in an account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.connectedSites.list()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.connectedSites.<a href="/Sources/Resources/ConnectedSites/ConnectedSitesClient.swift">create</a>(request: Requests.CreateConnectedSitesRequest, requestOptions: RequestOptions?) -> ConnectedSite</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new Mailchimp connected site.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.connectedSites.create(request: .init(
        domain: "example.com",
        foreignId: "MC001"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CreateConnectedSitesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.connectedSites.<a href="/Sources/Resources/ConnectedSites/ConnectedSitesClient.swift">get</a>(connectedSiteId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> ConnectedSite</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific connected site.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.connectedSites.get(connectedSiteId: "connected_site_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**connectedSiteId:** `String` — The unique identifier for the site.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.connectedSites.<a href="/Sources/Resources/ConnectedSites/ConnectedSitesClient.swift">delete</a>(connectedSiteId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Remove a connected site from your Mailchimp account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.connectedSites.delete(connectedSiteId: "connected_site_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**connectedSiteId:** `String` — The unique identifier for the site.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.connectedSites.<a href="/Sources/Resources/ConnectedSites/ConnectedSitesClient.swift">createActionVerifyScriptInstallation</a>(connectedSiteId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Verify that the connected sites script has been installed, either via the script URL or fragment.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.connectedSites.createActionVerifyScriptInstallation(connectedSiteId: "connected_site_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**connectedSiteId:** `String` — The unique identifier for the site.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## conversations
<details><summary><code>client.conversations.<a href="/Sources/Resources/Conversations/ConversationsClient.swift">list</a>(fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, hasUnreadMessages: ListConversationsRequestHasUnreadMessages?, listId: String?, campaignId: String?, requestOptions: RequestOptions?) -> ListConversationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of conversations for the account. Conversations has been deprecated in favor of Inbox and these endpoints don't include Inbox data. Past Conversations are still available via this endpoint, but new campaign replies and other Inbox messages aren’t available using this endpoint.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.conversations.list()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**hasUnreadMessages:** `ListConversationsRequestHasUnreadMessages?` — Whether the conversation has any unread messages.
    
</dd>
</dl>

<dl>
<dd>

**listId:** `String?` — The unique id for the list.
    
</dd>
</dl>

<dl>
<dd>

**campaignId:** `String?` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.conversations.<a href="/Sources/Resources/Conversations/ConversationsClient.swift">get</a>(conversationId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> Conversation</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get details about an individual conversation. Conversations has been deprecated in favor of Inbox and these endpoints don't include Inbox data. Past Conversations are still available via this endpoint, but new campaign replies and other Inbox messages aren’t available using this endpoint.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.conversations.get(conversationId: "conversation_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**conversationId:** `String` — The unique id for the conversation.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.conversations.<a href="/Sources/Resources/Conversations/ConversationsClient.swift">listMessages</a>(conversationId: String, fields: [String]?, excludeFields: [String]?, isRead: ListMessagesConversationsRequestIsRead?, beforeTimestamp: Date?, sinceTimestamp: Date?, requestOptions: RequestOptions?) -> ListMessagesConversationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get messages from a specific conversation. Conversations has been deprecated in favor of Inbox and these endpoints don't include Inbox data. Past Conversations are still available via this endpoint, but new campaign replies and other Inbox messages aren’t available using this endpoint.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.conversations.listMessages(conversationId: "conversation_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**conversationId:** `String` — The unique id for the conversation.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**isRead:** `ListMessagesConversationsRequestIsRead?` — Whether a conversation message has been marked as read.
    
</dd>
</dl>

<dl>
<dd>

**beforeTimestamp:** `Date?` — Restrict the response to messages created before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**sinceTimestamp:** `Date?` — Restrict the response to messages created after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.conversations.<a href="/Sources/Resources/Conversations/ConversationsClient.swift">getMessage</a>(conversationId: String, messageId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> ConversationMessage</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get an individual message in a conversation. Conversations has been deprecated in favor of Inbox and these endpoints don't include Inbox data. Past Conversations are still available via this endpoint, but new campaign replies and other Inbox messages aren’t available using this endpoint.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.conversations.getMessage(
        conversationId: "conversation_id",
        messageId: "message_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**conversationId:** `String` — The unique id for the conversation.
    
</dd>
</dl>

<dl>
<dd>

**messageId:** `String` — The unique id for the conversation message.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## CustomerJourneys
<details><summary><code>client.customerJourneys.<a href="/Sources/Resources/CustomerJourneys/CustomerJourneysClient.swift">createJourneyStepActionTrigger</a>(journeyId: String, stepId: String, request: Requests.CreateJourneyStepActionTriggerCustomerJourneysRequest, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

A step trigger in an Automation flow. To use it, create a starting point or step from the Automation flow builder in the app using the Customer Journeys API condition. We’ll provide a url during the process that includes the {journey_id} and {step_id}. You’ll then be able to use this endpoint to trigger the condition for the posted contact.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.customerJourneys.createJourneyStepActionTrigger(
        journeyId: "1",
        stepId: "1",
        request: .init(emailAddress: "email_address")
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**journeyId:** `String` — The id for the flow.
    
</dd>
</dl>

<dl>
<dd>

**stepId:** `String` — The id for the Step.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateJourneyStepActionTriggerCustomerJourneysRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ecommerce
<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">list</a>(requestOptions: RequestOptions?) -> ListEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about the e-commerce endpoint's resources.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.list()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">listOrders</a>(fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, campaignId: String?, outreachId: String?, customerId: String?, hasOutreach: Bool?, requestOptions: RequestOptions?) -> ListOrdersEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about an account's orders.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.listOrders()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**campaignId:** `String?` — Restrict results to orders with a specific `campaign_id` value.
    
</dd>
</dl>

<dl>
<dd>

**outreachId:** `String?` — Restrict results to orders with a specific `outreach_id` value.
    
</dd>
</dl>

<dl>
<dd>

**customerId:** `String?` — Restrict results to orders made by a specific customer.
    
</dd>
</dl>

<dl>
<dd>

**hasOutreach:** `Bool?` — Restrict results to orders that have an outreach attached. For example, an email campaign or Facebook ad.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">listStores</a>(fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, requestOptions: RequestOptions?) -> ListStoresEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about all stores in the account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.listStores()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">createStore</a>(request: Requests.CreateStoreEcommerceRequest, requestOptions: RequestOptions?) -> ECommerceStore</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a new store to your Mailchimp account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.createStore(request: .init(
        currencyCode: "USD",
        id: "example_store",
        listId: "1a2df69511",
        name: "Freddie's Cat Hat Emporium"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CreateStoreEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">getStore</a>(storeId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> ECommerceStore</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific store.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.getStore(storeId: "store_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">deleteStore</a>(storeId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a store. Deleting a store will also delete any associated subresources, including Customers, Orders, Products, and Carts.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.deleteStore(storeId: "store_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">updateStore</a>(storeId: String, request: Requests.UpdateStoreEcommerceRequest, requestOptions: RequestOptions?) -> ECommerceStore</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a store.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.updateStore(
        storeId: "store_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateStoreEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">listStoreCarts</a>(storeId: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, requestOptions: RequestOptions?) -> ListStoreCartsEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a store's carts.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.listStoreCarts(storeId: "store_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">createStoreCart</a>(storeId: String, request: Requests.CreateStoreCartEcommerceRequest, requestOptions: RequestOptions?) -> ECommerceCart</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a new cart to a store.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.createStoreCart(
        storeId: "store_id",
        request: .init(
            currencyCode: "currency_code",
            customer: EcommerceStoresCartsPost(
                id: "id"
            ),
            id: CreateStoreCartEcommerceRequestId.string(
                "id"
            ),
            lines: [
                CreateStoreCartEcommerceRequestLinesItem(
                    id: "id",
                    price: CreateStoreCartEcommerceRequestLinesItemPrice.double(
                        1.1
                    ),
                    productId: "product_id",
                    productVariantId: "product_variant_id",
                    quantity: 1
                )
            ],
            orderTotal: CreateStoreCartEcommerceRequestOrderTotal.double(
                1.1
            )
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateStoreCartEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">getStoreCart</a>(storeId: String, cartId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> ECommerceCart</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific cart.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.getStoreCart(
        storeId: "store_id",
        cartId: "cart_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**cartId:** `String` — The id for the cart.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">deleteStoreCart</a>(storeId: String, cartId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a cart.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.deleteStoreCart(
        storeId: "store_id",
        cartId: "cart_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**cartId:** `String` — The id for the cart.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">updateStoreCart</a>(storeId: String, cartId: String, request: Requests.UpdateStoreCartEcommerceRequest, requestOptions: RequestOptions?) -> ECommerceCart</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a specific cart.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.updateStoreCart(
        storeId: "store_id",
        cartId: "cart_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**cartId:** `String` — The id for the cart.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateStoreCartEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">listStoreCartLines</a>(storeId: String, cartId: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, requestOptions: RequestOptions?) -> ListStoreCartLinesEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a cart's line items.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.listStoreCartLines(
        storeId: "store_id",
        cartId: "cart_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**cartId:** `String` — The id for the cart.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">createStoreCartLine</a>(storeId: String, cartId: String, request: Requests.CreateStoreCartLineEcommerceRequest, requestOptions: RequestOptions?) -> ECommerceCartLineItem</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a new line item to an existing cart.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.createStoreCartLine(
        storeId: "store_id",
        cartId: "cart_id",
        request: .init(
            id: "id",
            price: CreateStoreCartLineEcommerceRequestPrice.double(
                1.1
            ),
            productId: "product_id",
            productVariantId: "product_variant_id",
            quantity: 1
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**cartId:** `String` — The id for the cart.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateStoreCartLineEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">getStoreCartLine</a>(storeId: String, cartId: String, lineId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> ECommerceCartLineItem</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific cart line item.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.getStoreCartLine(
        storeId: "store_id",
        cartId: "cart_id",
        lineId: "line_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**cartId:** `String` — The id for the cart.
    
</dd>
</dl>

<dl>
<dd>

**lineId:** `String` — The id for the line item of a cart.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">deleteStoreCartLine</a>(storeId: String, cartId: String, lineId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a specific cart line item.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.deleteStoreCartLine(
        storeId: "store_id",
        cartId: "cart_id",
        lineId: "line_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**cartId:** `String` — The id for the cart.
    
</dd>
</dl>

<dl>
<dd>

**lineId:** `String` — The id for the line item of a cart.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">updateStoreCartLine</a>(storeId: String, cartId: String, lineId: String, request: Requests.UpdateStoreCartLineEcommerceRequest, requestOptions: RequestOptions?) -> ECommerceCartLineItem</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a specific cart line item.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.updateStoreCartLine(
        storeId: "store_id",
        cartId: "cart_id",
        lineId: "line_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**cartId:** `String` — The id for the cart.
    
</dd>
</dl>

<dl>
<dd>

**lineId:** `String` — The id for the line item of a cart.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateStoreCartLineEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">listStoreCustomers</a>(storeId: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, emailAddress: String?, requestOptions: RequestOptions?) -> ListStoreCustomersEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a store's customers.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.listStoreCustomers(storeId: "store_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**emailAddress:** `String?` — Restrict the response to customers with the email address.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">createStoreCustomer</a>(storeId: String, request: Requests.CreateStoreCustomerEcommerceRequest, requestOptions: RequestOptions?) -> ECommerceCustomer</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a new customer to a store.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.createStoreCustomer(
        storeId: "store_id",
        request: .init(
            id: "id",
            optInStatus: true
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateStoreCustomerEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">getStoreCustomer</a>(storeId: String, customerId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> ECommerceCustomer</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific customer.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.getStoreCustomer(
        storeId: "store_id",
        customerId: "customer_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**customerId:** `String` — The id for the customer of a store.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">upsertStoreCustomer</a>(storeId: String, customerId: String, request: Requests.UpsertStoreCustomerEcommerceRequest, requestOptions: RequestOptions?) -> ECommerceCustomer</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add or update a customer.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.upsertStoreCustomer(
        storeId: "store_id",
        customerId: "customer_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**customerId:** `String` — The id for the customer of a store.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpsertStoreCustomerEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">deleteStoreCustomer</a>(storeId: String, customerId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a customer from a store.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.deleteStoreCustomer(
        storeId: "store_id",
        customerId: "customer_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**customerId:** `String` — The id for the customer of a store.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">updateStoreCustomer</a>(storeId: String, customerId: String, request: EcommerceStoresCartsPatch, requestOptions: RequestOptions?) -> ECommerceCustomer</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a customer.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.updateStoreCustomer(
        storeId: "store_id",
        customerId: "customer_id",
        request: EcommerceStoresCartsPatch(

        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**customerId:** `String` — The id for the customer of a store.
    
</dd>
</dl>

<dl>
<dd>

**request:** `EcommerceStoresCartsPatch` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">listStoreOrders</a>(storeId: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, customerId: String?, hasOutreach: Bool?, campaignId: String?, outreachId: String?, requestOptions: RequestOptions?) -> ListStoreOrdersEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a store's orders.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.listStoreOrders(storeId: "store_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**customerId:** `String?` — Restrict results to orders made by a specific customer.
    
</dd>
</dl>

<dl>
<dd>

**hasOutreach:** `Bool?` — Restrict results to orders that have an outreach attached. For example, an email campaign or Facebook ad.
    
</dd>
</dl>

<dl>
<dd>

**campaignId:** `String?` — Restrict results to orders with a specific `campaign_id` value.
    
</dd>
</dl>

<dl>
<dd>

**outreachId:** `String?` — Restrict results to orders with a specific `outreach_id` value.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">createStoreOrder</a>(storeId: String, request: Requests.CreateStoreOrderEcommerceRequest, requestOptions: RequestOptions?) -> ECommerceOrder</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a new order to a store.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.createStoreOrder(
        storeId: "store_id",
        request: .init(
            currencyCode: "currency_code",
            customer: EcommerceStoresCartsPost(
                id: "id"
            ),
            id: "id",
            lines: [
                CreateStoreOrderEcommerceRequestLinesItem(
                    id: "id",
                    price: CreateStoreOrderEcommerceRequestLinesItemPrice.double(
                        1.1
                    ),
                    productId: "product_id",
                    productVariantId: "product_variant_id",
                    quantity: 1
                )
            ],
            orderTotal: CreateStoreOrderEcommerceRequestOrderTotal.double(
                1.1
            )
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateStoreOrderEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">getStoreOrder</a>(storeId: String, orderId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> ECommerceOrder</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific order.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.getStoreOrder(
        storeId: "store_id",
        orderId: "order_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**orderId:** `String` — The id for the order in a store.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">deleteStoreOrder</a>(storeId: String, orderId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete an order.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.deleteStoreOrder(
        storeId: "store_id",
        orderId: "order_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**orderId:** `String` — The id for the order in a store.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">updateStoreOrder</a>(storeId: String, orderId: String, request: Requests.UpdateStoreOrderEcommerceRequest, requestOptions: RequestOptions?) -> ECommerceOrder</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a specific order.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.updateStoreOrder(
        storeId: "store_id",
        orderId: "order_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**orderId:** `String` — The id for the order in a store.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateStoreOrderEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">listStoreOrderLines</a>(storeId: String, orderId: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, requestOptions: RequestOptions?) -> ListStoreOrderLinesEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about an order's line items.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.listStoreOrderLines(
        storeId: "store_id",
        orderId: "order_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**orderId:** `String` — The id for the order in a store.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">createStoreOrderLine</a>(storeId: String, orderId: String, request: Requests.CreateStoreOrderLineEcommerceRequest, requestOptions: RequestOptions?) -> ECommerceOrderLineItem</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a new line item to an existing order.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.createStoreOrderLine(
        storeId: "store_id",
        orderId: "order_id",
        request: .init(
            id: "id",
            price: CreateStoreOrderLineEcommerceRequestPrice.double(
                1.1
            ),
            productId: "product_id",
            productVariantId: "product_variant_id",
            quantity: 1
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**orderId:** `String` — The id for the order in a store.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateStoreOrderLineEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">getStoreOrderLine</a>(storeId: String, orderId: String, lineId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> ECommerceOrderLineItem</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific order line item.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.getStoreOrderLine(
        storeId: "store_id",
        orderId: "order_id",
        lineId: "line_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**orderId:** `String` — The id for the order in a store.
    
</dd>
</dl>

<dl>
<dd>

**lineId:** `String` — The id for the line item of an order.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">deleteStoreOrderLine</a>(storeId: String, orderId: String, lineId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a specific order line item.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.deleteStoreOrderLine(
        storeId: "store_id",
        orderId: "order_id",
        lineId: "line_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**orderId:** `String` — The id for the order in a store.
    
</dd>
</dl>

<dl>
<dd>

**lineId:** `String` — The id for the line item of an order.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">updateStoreOrderLine</a>(storeId: String, orderId: String, lineId: String, request: Requests.UpdateStoreOrderLineEcommerceRequest, requestOptions: RequestOptions?) -> ECommerceOrderLineItem</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a specific order line item.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.updateStoreOrderLine(
        storeId: "store_id",
        orderId: "order_id",
        lineId: "line_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**orderId:** `String` — The id for the order in a store.
    
</dd>
</dl>

<dl>
<dd>

**lineId:** `String` — The id for the line item of an order.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateStoreOrderLineEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">listStoreProducts</a>(storeId: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, requestOptions: RequestOptions?) -> ListStoreProductsEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a store's products.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.listStoreProducts(storeId: "store_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">createStoreProduct</a>(storeId: String, request: EcommerceStoresOrdersPost, requestOptions: RequestOptions?) -> ECommerceProduct</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a new product to a store.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.createStoreProduct(
        storeId: "store_id",
        request: EcommerceStoresOrdersPost(
            id: EcommerceStoresOrdersPostId.string(
                "id"
            ),
            title: "Cat Hat",
            variants: [
                EcommerceStoresOrdersPostVariantsItem(
                    id: EcommerceStoresOrdersPostVariantsItemId.string(
                        "id"
                    ),
                    title: "Cat Hat"
                )
            ]
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**request:** `EcommerceStoresOrdersPost` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">getStoreProduct</a>(storeId: String, productId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> ECommerceProduct</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific product.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.getStoreProduct(
        storeId: "store_id",
        productId: "product_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**productId:** `String` — The id for the product of a store.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">upsertStoreProduct</a>(storeId: String, productId: String, request: Requests.UpsertStoreProductEcommerceRequest, requestOptions: RequestOptions?) -> ECommerceProduct</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a specific product.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.upsertStoreProduct(
        storeId: "store_id",
        productId: "product_id",
        request: .init(id: UpsertStoreProductEcommerceRequestId.string(
            "id"
        ))
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**productId:** `String` — The id for the product of a store.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpsertStoreProductEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">deleteStoreProduct</a>(storeId: String, productId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a product.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.deleteStoreProduct(
        storeId: "store_id",
        productId: "product_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**productId:** `String` — The id for the product of a store.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">updateStoreProduct</a>(storeId: String, productId: String, request: Requests.UpdateStoreProductEcommerceRequest, requestOptions: RequestOptions?) -> ECommerceProduct</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a specific product.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.updateStoreProduct(
        storeId: "store_id",
        productId: "product_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**productId:** `String` — The id for the product of a store.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateStoreProductEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">listStoreProductImages</a>(storeId: String, productId: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, requestOptions: RequestOptions?) -> ListStoreProductImagesEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a product's images.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.listStoreProductImages(
        storeId: "store_id",
        productId: "product_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**productId:** `String` — The id for the product of a store.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">createStoreProductImage</a>(storeId: String, productId: String, request: Requests.CreateStoreProductImageEcommerceRequest, requestOptions: RequestOptions?) -> CreateStoreProductImageEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a new image to the product.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.createStoreProductImage(
        storeId: "store_id",
        productId: "product_id",
        request: .init(
            id: "id",
            url: "url"
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**productId:** `String` — The id for the product of a store.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateStoreProductImageEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">getStoreProductImage</a>(storeId: String, productId: String, imageId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> GetStoreProductImageEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific product image.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.getStoreProductImage(
        storeId: "store_id",
        productId: "product_id",
        imageId: "image_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**productId:** `String` — The id for the product of a store.
    
</dd>
</dl>

<dl>
<dd>

**imageId:** `String` — The id for the product image.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">deleteStoreProductImage</a>(storeId: String, productId: String, imageId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a product image.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.deleteStoreProductImage(
        storeId: "store_id",
        productId: "product_id",
        imageId: "image_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**productId:** `String` — The id for the product of a store.
    
</dd>
</dl>

<dl>
<dd>

**imageId:** `String` — The id for the product image.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">updateStoreProductImage</a>(storeId: String, productId: String, imageId: String, request: Requests.UpdateStoreProductImageEcommerceRequest, requestOptions: RequestOptions?) -> UpdateStoreProductImageEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a product image.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.updateStoreProductImage(
        storeId: "store_id",
        productId: "product_id",
        imageId: "image_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**productId:** `String` — The id for the product of a store.
    
</dd>
</dl>

<dl>
<dd>

**imageId:** `String` — The id for the product image.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateStoreProductImageEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">listStoreProductVariants</a>(storeId: String, productId: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, requestOptions: RequestOptions?) -> ListStoreProductVariantsEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a product's variants.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.listStoreProductVariants(
        storeId: "store_id",
        productId: "product_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**productId:** `String` — The id for the product of a store.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">createStoreProductVariant</a>(storeId: String, productId: String, request: Requests.CreateStoreProductVariantEcommerceRequest, requestOptions: RequestOptions?) -> ECommerceProductVariant</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a new variant to the product.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.createStoreProductVariant(
        storeId: "store_id",
        productId: "product_id",
        request: .init(
            id: CreateStoreProductVariantEcommerceRequestId.string(
                "id"
            ),
            title: "Cat Hat"
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**productId:** `String` — The id for the product of a store.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateStoreProductVariantEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">getStoreProductVariant</a>(storeId: String, productId: String, variantId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> ECommerceProductVariant</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific product variant.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.getStoreProductVariant(
        storeId: "store_id",
        productId: "product_id",
        variantId: "variant_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**productId:** `String` — The id for the product of a store.
    
</dd>
</dl>

<dl>
<dd>

**variantId:** `String` — The id for the product variant.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">upsertStoreProductVariant</a>(storeId: String, productId: String, variantId: String, request: Requests.UpsertStoreProductVariantEcommerceRequest, requestOptions: RequestOptions?) -> ECommerceProductVariant</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add or update a product variant.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.upsertStoreProductVariant(
        storeId: "store_id",
        productId: "product_id",
        variantId: "variant_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**productId:** `String` — The id for the product of a store.
    
</dd>
</dl>

<dl>
<dd>

**variantId:** `String` — The id for the product variant.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpsertStoreProductVariantEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">deleteStoreProductVariant</a>(storeId: String, productId: String, variantId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a product variant.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.deleteStoreProductVariant(
        storeId: "store_id",
        productId: "product_id",
        variantId: "variant_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**productId:** `String` — The id for the product of a store.
    
</dd>
</dl>

<dl>
<dd>

**variantId:** `String` — The id for the product variant.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">updateStoreProductVariant</a>(storeId: String, productId: String, variantId: String, request: Requests.UpdateStoreProductVariantEcommerceRequest, requestOptions: RequestOptions?) -> ECommerceProductVariant</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a product variant.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.updateStoreProductVariant(
        storeId: "store_id",
        productId: "product_id",
        variantId: "variant_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**productId:** `String` — The id for the product of a store.
    
</dd>
</dl>

<dl>
<dd>

**variantId:** `String` — The id for the product variant.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateStoreProductVariantEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">listStorePromoRules</a>(storeId: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, requestOptions: RequestOptions?) -> ListStorePromoRulesEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a store's promo rules.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.listStorePromoRules(storeId: "store_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">createStorePromoRule</a>(storeId: String, request: Requests.CreateStorePromoRuleEcommerceRequest, requestOptions: RequestOptions?) -> ECommercePromoRule</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a new promo rule to a store.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.createStorePromoRule(
        storeId: "store_id",
        request: .init(
            amount: CreateStorePromoRuleEcommerceRequestAmount.double(
                1.1
            ),
            description: "Save BIG during our summer sale!",
            id: "id",
            target: .perItem,
            type: .fixed
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateStorePromoRuleEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">getStorePromoRule</a>(storeId: String, promoRuleId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> ECommercePromoRule</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific promo rule.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.getStorePromoRule(
        storeId: "store_id",
        promoRuleId: "promo_rule_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**promoRuleId:** `String` — The id for the promo rule of a store.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">deleteStorePromoRule</a>(storeId: String, promoRuleId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a promo rule from a store.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.deleteStorePromoRule(
        storeId: "store_id",
        promoRuleId: "promo_rule_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**promoRuleId:** `String` — The id for the promo rule of a store.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">updateStorePromoRule</a>(storeId: String, promoRuleId: String, request: Requests.UpdateStorePromoRuleEcommerceRequest, requestOptions: RequestOptions?) -> ECommercePromoRule</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a promo rule.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.updateStorePromoRule(
        storeId: "store_id",
        promoRuleId: "promo_rule_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**promoRuleId:** `String` — The id for the promo rule of a store.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateStorePromoRuleEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">listStorePromoRulePromoCodes</a>(storeId: String, promoRuleId: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, requestOptions: RequestOptions?) -> ListStorePromoRulePromoCodesEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a store's promo codes.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.listStorePromoRulePromoCodes(
        storeId: "store_id",
        promoRuleId: "promo_rule_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**promoRuleId:** `String` — The id for the promo rule of a store.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">createStorePromoRulePromoCode</a>(storeId: String, promoRuleId: String, request: Requests.CreateStorePromoRulePromoCodeEcommerceRequest, requestOptions: RequestOptions?) -> ECommercePromoCode</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a new promo code to a store.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.createStorePromoRulePromoCode(
        storeId: "store_id",
        promoRuleId: "promo_rule_id",
        request: .init(
            code: "summersale",
            id: "id",
            redemptionUrl: "A url that applies promo code directly at checkout or a url that points to sale page or store url"
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**promoRuleId:** `String` — The id for the promo rule of a store.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateStorePromoRulePromoCodeEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">getStorePromoRulePromoCode</a>(storeId: String, promoRuleId: String, promoCodeId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> ECommercePromoCode</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific promo code.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.getStorePromoRulePromoCode(
        storeId: "store_id",
        promoRuleId: "promo_rule_id",
        promoCodeId: "promo_code_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**promoRuleId:** `String` — The id for the promo rule of a store.
    
</dd>
</dl>

<dl>
<dd>

**promoCodeId:** `String` — The id for the promo code of a store.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">deleteStorePromoRulePromoCode</a>(storeId: String, promoRuleId: String, promoCodeId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a promo code from a store.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.deleteStorePromoRulePromoCode(
        storeId: "store_id",
        promoRuleId: "promo_rule_id",
        promoCodeId: "promo_code_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**promoRuleId:** `String` — The id for the promo rule of a store.
    
</dd>
</dl>

<dl>
<dd>

**promoCodeId:** `String` — The id for the promo code of a store.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">updateStorePromoRulePromoCode</a>(storeId: String, promoRuleId: String, promoCodeId: String, request: Requests.UpdateStorePromoRulePromoCodeEcommerceRequest, requestOptions: RequestOptions?) -> ECommercePromoCode</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a promo code.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ecommerce.updateStorePromoRulePromoCode(
        storeId: "store_id",
        promoRuleId: "promo_rule_id",
        promoCodeId: "promo_code_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**storeId:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**promoRuleId:** `String` — The id for the promo rule of a store.
    
</dd>
</dl>

<dl>
<dd>

**promoCodeId:** `String` — The id for the promo code of a store.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateStorePromoRulePromoCodeEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## FacebookAds
<details><summary><code>client.facebookAds.<a href="/Sources/Resources/FacebookAds/FacebookAdsClient.swift">list</a>(fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, sortField: ListFacebookAdsRequestSortField?, sortDir: ListFacebookAdsRequestSortDir?, requestOptions: RequestOptions?) -> ListFacebookAdsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get list of Facebook ads.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.facebookAds.list()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**sortField:** `ListFacebookAdsRequestSortField?` — Returns files sorted by the specified field.
    
</dd>
</dl>

<dl>
<dd>

**sortDir:** `ListFacebookAdsRequestSortDir?` — Determines the order direction for sorted results.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.facebookAds.<a href="/Sources/Resources/FacebookAds/FacebookAdsClient.swift">get</a>(outreachId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> FacebookAds</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get details of a Facebook ad.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.facebookAds.get(outreachId: "outreach_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**outreachId:** `String` — The outreach id.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## FileManager
<details><summary><code>client.fileManager.<a href="/Sources/Resources/FileManager/FileManagerClient.swift">list</a>(requestOptions: RequestOptions?) -> [ListFileManagerResponseItem]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about the file-manager endpoint's resources
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.fileManager.list()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.fileManager.<a href="/Sources/Resources/FileManager/FileManagerClient.swift">listFiles</a>(fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, type: String?, createdBy: String?, beforeCreatedAt: String?, sinceCreatedAt: String?, sortField: ListFilesFileManagerRequestSortField?, sortDir: ListFilesFileManagerRequestSortDir?, requestOptions: RequestOptions?) -> ListFilesFileManagerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of available images and files stored in the File Manager for the account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.fileManager.listFiles()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**type:** `String?` — The file type for the File Manager file.
    
</dd>
</dl>

<dl>
<dd>

**createdBy:** `String?` — The Mailchimp account user who created the File Manager file.
    
</dd>
</dl>

<dl>
<dd>

**beforeCreatedAt:** `String?` — Restrict the response to files created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**sinceCreatedAt:** `String?` — Restrict the response to files created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**sortField:** `ListFilesFileManagerRequestSortField?` — Returns files sorted by the specified field.
    
</dd>
</dl>

<dl>
<dd>

**sortDir:** `ListFilesFileManagerRequestSortDir?` — Determines the order direction for sorted results.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.fileManager.<a href="/Sources/Resources/FileManager/FileManagerClient.swift">createFile</a>(request: Requests.CreateFileFileManagerRequest, requestOptions: RequestOptions?) -> GalleryFile</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Upload a new image or file to the File Manager.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.fileManager.createFile(request: .init(
        fileData: "file_data",
        name: "name"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CreateFileFileManagerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.fileManager.<a href="/Sources/Resources/FileManager/FileManagerClient.swift">getFile</a>(fileId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> GalleryFile</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific file in the File Manager.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.fileManager.getFile(fileId: "file_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fileId:** `String` — The unique id for the File Manager file.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.fileManager.<a href="/Sources/Resources/FileManager/FileManagerClient.swift">deleteFile</a>(fileId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Remove a specific file from the File Manager.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.fileManager.deleteFile(fileId: "file_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fileId:** `String` — The unique id for the File Manager file.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.fileManager.<a href="/Sources/Resources/FileManager/FileManagerClient.swift">updateFile</a>(fileId: String, request: Requests.UpdateFileFileManagerRequest, requestOptions: RequestOptions?) -> GalleryFile</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a file in the File Manager.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.fileManager.updateFile(
        fileId: "file_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fileId:** `String` — The unique id for the File Manager file.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateFileFileManagerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.fileManager.<a href="/Sources/Resources/FileManager/FileManagerClient.swift">listFolders</a>(fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, createdBy: String?, beforeCreatedAt: String?, sinceCreatedAt: String?, requestOptions: RequestOptions?) -> ListFoldersFileManagerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of all folders in the File Manager.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.fileManager.listFolders()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**createdBy:** `String?` — The Mailchimp account user who created the File Manager file.
    
</dd>
</dl>

<dl>
<dd>

**beforeCreatedAt:** `String?` — Restrict the response to files created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**sinceCreatedAt:** `String?` — Restrict the response to files created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.fileManager.<a href="/Sources/Resources/FileManager/FileManagerClient.swift">createFolder</a>(request: Requests.CreateFolderFileManagerRequest, requestOptions: RequestOptions?) -> CreateFolderFileManagerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new folder in the File Manager.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.fileManager.createFolder(request: .init(name: "name"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CreateFolderFileManagerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.fileManager.<a href="/Sources/Resources/FileManager/FileManagerClient.swift">getFolder</a>(folderId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> GetFolderFileManagerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific folder in the File Manager.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.fileManager.getFolder(folderId: "folder_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**folderId:** `String` — The unique id for the File Manager folder.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.fileManager.<a href="/Sources/Resources/FileManager/FileManagerClient.swift">deleteFolder</a>(folderId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a specific folder in the File Manager.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.fileManager.deleteFolder(folderId: "folder_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**folderId:** `String` — The unique id for the File Manager folder.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.fileManager.<a href="/Sources/Resources/FileManager/FileManagerClient.swift">updateFolder</a>(folderId: String, request: Requests.UpdateFolderFileManagerRequest, requestOptions: RequestOptions?) -> UpdateFolderFileManagerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a specific File Manager folder.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.fileManager.updateFolder(
        folderId: "folder_id",
        request: .init(name: "name")
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**folderId:** `String` — The unique id for the File Manager folder.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateFolderFileManagerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.fileManager.<a href="/Sources/Resources/FileManager/FileManagerClient.swift">listFolderFiles</a>(folderId: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, type: String?, createdBy: String?, beforeCreatedAt: String?, sinceCreatedAt: String?, sortField: ListFolderFilesFileManagerRequestSortField?, sortDir: ListFolderFilesFileManagerRequestSortDir?, requestOptions: RequestOptions?) -> ListFolderFilesFileManagerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of available images and files stored in this folder.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.fileManager.listFolderFiles(folderId: "folder_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**folderId:** `String` — The unique id for the File Manager folder.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**type:** `String?` — The file type for the File Manager file.
    
</dd>
</dl>

<dl>
<dd>

**createdBy:** `String?` — The Mailchimp account user who created the File Manager file.
    
</dd>
</dl>

<dl>
<dd>

**beforeCreatedAt:** `String?` — Restrict the response to files created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**sinceCreatedAt:** `String?` — Restrict the response to files created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**sortField:** `ListFolderFilesFileManagerRequestSortField?` — Returns files sorted by the specified field.
    
</dd>
</dl>

<dl>
<dd>

**sortDir:** `ListFolderFilesFileManagerRequestSortDir?` — Determines the order direction for sorted results.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## LandingPages
<details><summary><code>client.landingPages.<a href="/Sources/Resources/LandingPages/LandingPagesClient.swift">list</a>(sortDir: ListLandingPagesRequestSortDir?, sortField: ListLandingPagesRequestSortField?, fields: [String]?, excludeFields: [String]?, count: Int?, requestOptions: RequestOptions?) -> ListLandingPagesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get all landing pages.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.landingPages.list()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sortDir:** `ListLandingPagesRequestSortDir?` — Determines the order direction for sorted results.
    
</dd>
</dl>

<dl>
<dd>

**sortField:** `ListLandingPagesRequestSortField?` — Returns files sorted by the specified field.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.landingPages.<a href="/Sources/Resources/LandingPages/LandingPagesClient.swift">create</a>(useDefaultList: Bool?, request: Requests.CreateLandingPagesRequest, requestOptions: RequestOptions?) -> LandingPage</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create an unpublished and contentless Mailchimp landing page.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.landingPages.create(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**useDefaultList:** `Bool?` — Will create the Landing Page using the account's Default List instead of requiring a list_id.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateLandingPagesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.landingPages.<a href="/Sources/Resources/LandingPages/LandingPagesClient.swift">get</a>(pageId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> LandingPage</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific page.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.landingPages.get(pageId: "page_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**pageId:** `String` — The unique id for the page.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.landingPages.<a href="/Sources/Resources/LandingPages/LandingPagesClient.swift">delete</a>(pageId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a landing page.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.landingPages.delete(pageId: "page_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**pageId:** `String` — The unique id for the page.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.landingPages.<a href="/Sources/Resources/LandingPages/LandingPagesClient.swift">update</a>(pageId: String, request: Requests.UpdateLandingPagesRequest, requestOptions: RequestOptions?) -> LandingPage</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a landing page.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.landingPages.update(
        pageId: "page_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**pageId:** `String` — The unique id for the page.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateLandingPagesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.landingPages.<a href="/Sources/Resources/LandingPages/LandingPagesClient.swift">createActionPublish</a>(pageId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Publish a landing page that is in draft, unpublished, or has been previously published and edited.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.landingPages.createActionPublish(pageId: "page_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**pageId:** `String` — The unique id for the page.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.landingPages.<a href="/Sources/Resources/LandingPages/LandingPagesClient.swift">createActionUnpublish</a>(pageId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Unpublish a landing page that is in draft or has been published.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.landingPages.createActionUnpublish(pageId: "page_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**pageId:** `String` — The unique id for the page.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.landingPages.<a href="/Sources/Resources/LandingPages/LandingPagesClient.swift">listContent</a>(pageId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> ListContentLandingPagesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get the the HTML for your landing page.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.landingPages.listContent(pageId: "page_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**pageId:** `String` — The unique id for the page.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## lists
<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">list</a>(fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, beforeDateCreated: String?, sinceDateCreated: String?, beforeCampaignLastSent: String?, sinceCampaignLastSent: String?, email: String?, sortField: ListListsRequestSortField?, sortDir: ListListsRequestSortDir?, hasEcommerceStore: Bool?, includeTotalContacts: Bool?, requestOptions: RequestOptions?) -> ListListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about all lists in the account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.list()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**beforeDateCreated:** `String?` — Restrict response to lists created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**sinceDateCreated:** `String?` — Restrict results to lists created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**beforeCampaignLastSent:** `String?` — Restrict results to lists created before the last campaign send date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**sinceCampaignLastSent:** `String?` — Restrict results to lists created after the last campaign send date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**email:** `String?` — Restrict results to lists that include a specific subscriber's email address.
    
</dd>
</dl>

<dl>
<dd>

**sortField:** `ListListsRequestSortField?` — Returns files sorted by the specified field.
    
</dd>
</dl>

<dl>
<dd>

**sortDir:** `ListListsRequestSortDir?` — Determines the order direction for sorted results.
    
</dd>
</dl>

<dl>
<dd>

**hasEcommerceStore:** `Bool?` — Restrict results to lists that contain an active, connected, undeleted ecommerce store.
    
</dd>
</dl>

<dl>
<dd>

**includeTotalContacts:** `Bool?` — Deprecated. Return the total_contacts field in the stats response, which contains an approximate count of subscribed, unsubscribed, and transactional contacts. For a complete audience contact count, use the /audiences endpoint instead.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">create</a>(request: Requests.CreateListsRequest, requestOptions: RequestOptions?) -> SubscriberList</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new list in your Mailchimp account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.create(request: .init(
        campaignDefaults: CreateListsRequestCampaignDefaults(
            fromEmail: "from_email",
            fromName: "from_name",
            language: "language",
            subject: "subject"
        ),
        contact: CreateListsRequestContact(
            address1: "address1",
            city: "city",
            company: "company",
            country: "country"
        ),
        emailTypeOption: true,
        name: "name",
        permissionReminder: "permission_reminder"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CreateListsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">get</a>(listId: String, fields: [String]?, excludeFields: [String]?, includeTotalContacts: Bool?, requestOptions: RequestOptions?) -> SubscriberList</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific list in your Mailchimp account. Results include list members who have signed up but haven't confirmed their subscription yet and unsubscribed or cleaned.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.get(listId: "list_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**includeTotalContacts:** `Bool?` — Deprecated. Return the total_contacts field in the stats response, which contains an approximate count of subscribed, unsubscribed, and transactional contacts. For a complete audience contact count, use the /audiences endpoint instead.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">batchSubscribeOrUnsubscribe</a>(listId: String, skipMergeValidation: Bool?, skipDuplicateCheck: Bool?, request: Requests.BatchSubscribeOrUnsubscribeListsRequest, requestOptions: RequestOptions?) -> BatchSubscribeOrUnsubscribeListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Batch subscribe or unsubscribe list members.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.batchSubscribeOrUnsubscribe(
        listId: "list_id",
        request: .init(members: [])
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**skipMergeValidation:** `Bool?` — If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false.
    
</dd>
</dl>

<dl>
<dd>

**skipDuplicateCheck:** `Bool?` — If skip_duplicate_check is true, we will ignore duplicates sent in the request when using the batch sub/unsub on the lists endpoint. The status of the first appearance in the request will be saved. This defaults to false.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.BatchSubscribeOrUnsubscribeListsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">delete</a>(listId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a list from your Mailchimp account. If you delete a list, you'll lose the list history—including subscriber activity, unsubscribes, complaints, and bounces. You’ll also lose subscribers’ email addresses, unless you exported and backed up your list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.delete(listId: "list_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">update</a>(listId: String, request: Requests.UpdateListsRequest, requestOptions: RequestOptions?) -> SubscriberList</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update the settings for a specific list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.update(
        listId: "list_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateListsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">listAbuseReports</a>(listId: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, requestOptions: RequestOptions?) -> ListAbuseReportsListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get all abuse reports for a specific list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.listAbuseReports(listId: "list_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">getAbuseReport</a>(listId: String, reportId: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, requestOptions: RequestOptions?) -> ListsAbuseReports</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get details about a specific abuse report.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.getAbuseReport(
        listId: "list_id",
        reportId: "report_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**reportId:** `String` — The id for the abuse report.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">listActivity</a>(listId: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, requestOptions: RequestOptions?) -> ListActivityListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get up to the previous 180 days of daily detailed aggregated activity stats for a list, not including Automation activity.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.listActivity(listId: "list_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">listClients</a>(listId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> ListClientsListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of the top email clients based on user-agent strings.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.listClients(listId: "list_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">listGrowthHistory</a>(listId: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, sortField: ListGrowthHistoryListsRequestSortField?, sortDir: ListGrowthHistoryListsRequestSortDir?, requestOptions: RequestOptions?) -> ListGrowthHistoryListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a month-by-month summary of a specific list's growth activity.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.listGrowthHistory(listId: "list_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**sortField:** `ListGrowthHistoryListsRequestSortField?` — Returns files sorted by the specified field.
    
</dd>
</dl>

<dl>
<dd>

**sortDir:** `ListGrowthHistoryListsRequestSortDir?` — Determines the order direction for sorted results.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">getGrowthHistory</a>(listId: String, month: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> GrowthHistory</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a summary of a specific list's growth activity for a specific month and year.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.getGrowthHistory(
        listId: "list_id",
        month: "month"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**month:** `String` — A specific month of list growth history.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">listInterestCategories</a>(listId: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, type: String?, sortField: ListInterestCategoriesListsRequestSortField?, sortDir: ListInterestCategoriesListsRequestSortDir?, requestOptions: RequestOptions?) -> ListInterestCategoriesListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a list's interest categories.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.listInterestCategories(listId: "list_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**type:** `String?` — Restrict results a type of interest group
    
</dd>
</dl>

<dl>
<dd>

**sortField:** `ListInterestCategoriesListsRequestSortField?` — Returns interest categories sorted by the specified field. Defaults to display_order.
    
</dd>
</dl>

<dl>
<dd>

**sortDir:** `ListInterestCategoriesListsRequestSortDir?` — Determines the order direction for sorted results.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">createInterestCategory</a>(listId: String, request: Requests.CreateInterestCategoryListsRequest, requestOptions: RequestOptions?) -> InterestCategory</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new interest category.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.createInterestCategory(
        listId: "list_id",
        request: .init(
            title: "title",
            type: .checkboxes
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateInterestCategoryListsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">getInterestCategory</a>(listId: String, interestCategoryId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> InterestCategory</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific interest category.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.getInterestCategory(
        listId: "list_id",
        interestCategoryId: "interest_category_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**interestCategoryId:** `String` — The unique ID for the interest category.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">deleteInterestCategory</a>(listId: String, interestCategoryId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a specific interest category.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.deleteInterestCategory(
        listId: "list_id",
        interestCategoryId: "interest_category_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**interestCategoryId:** `String` — The unique ID for the interest category.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">updateInterestCategory</a>(listId: String, interestCategoryId: String, request: Requests.UpdateInterestCategoryListsRequest, requestOptions: RequestOptions?) -> InterestCategory</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a specific interest category.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.updateInterestCategory(
        listId: "list_id",
        interestCategoryId: "interest_category_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**interestCategoryId:** `String` — The unique ID for the interest category.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateInterestCategoryListsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">listInterestCategoryInterests</a>(listId: String, interestCategoryId: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, requestOptions: RequestOptions?) -> ListInterestCategoryInterestsListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of this category's interests.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.listInterestCategoryInterests(
        listId: "list_id",
        interestCategoryId: "interest_category_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**interestCategoryId:** `String` — The unique ID for the interest category.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">createInterestCategoryInterest</a>(listId: String, interestCategoryId: String, request: Requests.CreateInterestCategoryInterestListsRequest, requestOptions: RequestOptions?) -> Interest</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new interest or 'group name' for a specific category.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.createInterestCategoryInterest(
        listId: "list_id",
        interestCategoryId: "interest_category_id",
        request: .init(name: "name")
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**interestCategoryId:** `String` — The unique ID for the interest category.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateInterestCategoryInterestListsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">getInterestCategoryInterest</a>(listId: String, interestCategoryId: String, interestId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> Interest</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get interests or 'group names' for a specific category.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.getInterestCategoryInterest(
        listId: "list_id",
        interestCategoryId: "interest_category_id",
        interestId: "interest_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**interestCategoryId:** `String` — The unique ID for the interest category.
    
</dd>
</dl>

<dl>
<dd>

**interestId:** `String` — The specific interest or 'group name'.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">deleteInterestCategoryInterest</a>(listId: String, interestCategoryId: String, interestId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete interests or group names in a specific category.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.deleteInterestCategoryInterest(
        listId: "list_id",
        interestCategoryId: "interest_category_id",
        interestId: "interest_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**interestCategoryId:** `String` — The unique ID for the interest category.
    
</dd>
</dl>

<dl>
<dd>

**interestId:** `String` — The specific interest or 'group name'.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">updateInterestCategoryInterest</a>(listId: String, interestCategoryId: String, interestId: String, request: Requests.UpdateInterestCategoryInterestListsRequest, requestOptions: RequestOptions?) -> Interest</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update interests or 'group names' for a specific category.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.updateInterestCategoryInterest(
        listId: "list_id",
        interestCategoryId: "interest_category_id",
        interestId: "interest_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**interestCategoryId:** `String` — The unique ID for the interest category.
    
</dd>
</dl>

<dl>
<dd>

**interestId:** `String` — The specific interest or 'group name'.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateInterestCategoryInterestListsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">listLocations</a>(listId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> ListLocationsListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get the locations (countries) that the list's subscribers have been tagged to based on geocoding their IP address.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.listLocations(listId: "list_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">listMembers</a>(listId: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, emailType: String?, status: ListMembersListsRequestStatus?, sinceTimestampOpt: String?, beforeTimestampOpt: String?, sinceLastChanged: String?, beforeLastChanged: String?, uniqueEmailId: String?, vipOnly: Bool?, interestCategoryId: String?, interestIds: String?, interestMatch: ListMembersListsRequestInterestMatch?, sortField: ListMembersListsRequestSortField?, sortDir: ListMembersListsRequestSortDir?, sinceLastCampaign: Bool?, unsubscribedSince: String?, requestOptions: RequestOptions?) -> ListMembersListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about members in a specific Mailchimp list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.listMembers(listId: "list_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**emailType:** `String?` — The email type.
    
</dd>
</dl>

<dl>
<dd>

**status:** `ListMembersListsRequestStatus?` — The subscriber's status.
    
</dd>
</dl>

<dl>
<dd>

**sinceTimestampOpt:** `String?` — Restrict results to subscribers who opted-in after the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**beforeTimestampOpt:** `String?` — Restrict results to subscribers who opted-in before the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**sinceLastChanged:** `String?` — Restrict results to subscribers whose information changed after the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**beforeLastChanged:** `String?` — Restrict results to subscribers whose information changed before the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**uniqueEmailId:** `String?` — A unique identifier for the email address across all Mailchimp lists.
    
</dd>
</dl>

<dl>
<dd>

**vipOnly:** `Bool?` — A filter to return only the list's VIP members. Passing `true` will restrict results to VIP list members, passing `false` will return all list members.
    
</dd>
</dl>

<dl>
<dd>

**interestCategoryId:** `String?` — The unique id for the interest category.
    
</dd>
</dl>

<dl>
<dd>

**interestIds:** `String?` — Used to filter list members by interests. Must be accompanied by interest_category_id and interest_match. The value must be a comma separated list of interest ids present for any supplied interest categories.
    
</dd>
</dl>

<dl>
<dd>

**interestMatch:** `ListMembersListsRequestInterestMatch?` — Used to filter list members by interests. Must be accompanied by interest_category_id and interest_ids. "any" will match a member with any of the interest supplied, "all" will only match members with every interest supplied, and "none" will match members without any of the interest supplied.
    
</dd>
</dl>

<dl>
<dd>

**sortField:** `ListMembersListsRequestSortField?` — Returns files sorted by the specified field.
    
</dd>
</dl>

<dl>
<dd>

**sortDir:** `ListMembersListsRequestSortDir?` — Determines the order direction for sorted results.
    
</dd>
</dl>

<dl>
<dd>

**sinceLastCampaign:** `Bool?` — Filter subscribers by those subscribed/unsubscribed/pending/cleaned since last email campaign send. Member status is required to use this filter.
    
</dd>
</dl>

<dl>
<dd>

**unsubscribedSince:** `String?` — Filter subscribers by those unsubscribed since a specific date. Using any status other than unsubscribed with this filter will result in an error.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">createMember</a>(listId: String, skipMergeValidation: Bool?, request: Requests.CreateMemberListsRequest, requestOptions: RequestOptions?) -> ListMembers</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a new member to the list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.createMember(
        listId: "list_id",
        request: .init(
            emailAddress: "email_address",
            status: .subscribed
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**skipMergeValidation:** `Bool?` — If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateMemberListsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">getMember</a>(listId: String, subscriberHash: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> ListMembers</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific list member, including a currently subscribed, unsubscribed, or bounced member.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.getMember(
        listId: "list_id",
        subscriberHash: "subscriber_hash"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriberHash:** `String` — The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">upsertMember</a>(listId: String, subscriberHash: String, skipMergeValidation: Bool?, request: Requests.UpsertMemberListsRequest, requestOptions: RequestOptions?) -> ListMembers</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add or update a list member.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.upsertMember(
        listId: "list_id",
        subscriberHash: "subscriber_hash",
        request: .init(emailAddress: "email_address")
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriberHash:** `String` — The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    
</dd>
</dl>

<dl>
<dd>

**skipMergeValidation:** `Bool?` — If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpsertMemberListsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">deleteMember</a>(listId: String, subscriberHash: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Archive a list member. To permanently delete, use the delete-permanent action.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.deleteMember(
        listId: "list_id",
        subscriberHash: "subscriber_hash"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriberHash:** `String` — The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">updateMember</a>(listId: String, subscriberHash: String, skipMergeValidation: Bool?, request: Requests.UpdateMemberListsRequest, requestOptions: RequestOptions?) -> ListMembers</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update information for a specific list member.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.updateMember(
        listId: "list_id",
        subscriberHash: "subscriber_hash",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriberHash:** `String` — The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    
</dd>
</dl>

<dl>
<dd>

**skipMergeValidation:** `Bool?` — If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateMemberListsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">createMemberActionDeletePermanent</a>(listId: String, subscriberHash: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete all personally identifiable information related to a list member, and remove them from a list. This will make it impossible to re-import the list member.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.createMemberActionDeletePermanent(
        listId: "list_id",
        subscriberHash: "subscriber_hash"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriberHash:** `String` — The MD5 hash of the lowercase version of the list member's email address.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">listMemberActivity</a>(listId: String, subscriberHash: String, fields: [String]?, excludeFields: [String]?, action: [ListMemberActivityListsRequestActionItem]?, requestOptions: RequestOptions?) -> ListMemberActivityListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get the last 50 events of a member's activity on a specific list, including opens, clicks, and unsubscribes.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.listMemberActivity(
        listId: "list_id",
        subscriberHash: "subscriber_hash"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriberHash:** `String` — The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**action:** `[ListMemberActivityListsRequestActionItem]?` — A comma seperated list of actions to return.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">listMemberActivityFeed</a>(listId: String, subscriberHash: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, activityFilters: [ListMemberActivityFeedListsRequestActivityFiltersItem]?, requestOptions: RequestOptions?) -> ListMemberActivityFeedListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a member's activity on a specific list, including opens, clicks, and unsubscribes.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.listMemberActivityFeed(
        listId: "list_id",
        subscriberHash: "subscriber_hash"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriberHash:** `String` — The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**activityFilters:** `[ListMemberActivityFeedListsRequestActivityFiltersItem]?` — A comma-separated list of activity filters that correspond to a set of activity types, e.g "?activity_filters=open,bounce,click".
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">listMemberEvents</a>(listId: String, subscriberHash: String, count: Int?, offset: Int?, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> ListMemberEventsListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get events for a contact.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.listMemberEvents(
        listId: "list_id",
        subscriberHash: "subscriber_hash"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriberHash:** `String` — The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">createMemberEvent</a>(listId: String, subscriberHash: String, request: Requests.CreateMemberEventListsRequest, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add an event for a list member.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.createMemberEvent(
        listId: "list_id",
        subscriberHash: "subscriber_hash",
        request: .init(name: "name")
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriberHash:** `String` — The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateMemberEventListsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">listMemberGoals</a>(listId: String, subscriberHash: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> ListMemberGoalsListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get the last 50 Goal events for a member on a specific list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.listMemberGoals(
        listId: "list_id",
        subscriberHash: "subscriber_hash"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriberHash:** `String` — The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">listMemberNotes</a>(listId: String, subscriberHash: String, sortField: ListMemberNotesListsRequestSortField?, sortDir: ListMemberNotesListsRequestSortDir?, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, requestOptions: RequestOptions?) -> ListMemberNotesListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get recent notes for a specific list member.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.listMemberNotes(
        listId: "list_id",
        subscriberHash: "subscriber_hash"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriberHash:** `String` — The MD5 hash of the lowercase version of the list member's email address.
    
</dd>
</dl>

<dl>
<dd>

**sortField:** `ListMemberNotesListsRequestSortField?` — Returns notes sorted by the specified field.
    
</dd>
</dl>

<dl>
<dd>

**sortDir:** `ListMemberNotesListsRequestSortDir?` — Determines the order direction for sorted results.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">createMemberNote</a>(listId: String, subscriberHash: String, request: Requests.CreateMemberNoteListsRequest, requestOptions: RequestOptions?) -> MemberNotes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a new note for a specific subscriber.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.createMemberNote(
        listId: "list_id",
        subscriberHash: "subscriber_hash",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriberHash:** `String` — The MD5 hash of the lowercase version of the list member's email address.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateMemberNoteListsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">getMemberNote</a>(listId: String, subscriberHash: String, noteId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> MemberNotes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a specific note for a specific list member.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.getMemberNote(
        listId: "list_id",
        subscriberHash: "subscriber_hash",
        noteId: "note_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriberHash:** `String` — The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    
</dd>
</dl>

<dl>
<dd>

**noteId:** `String` — The id for the note.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">deleteMemberNote</a>(listId: String, subscriberHash: String, noteId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a specific note for a specific list member.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.deleteMemberNote(
        listId: "list_id",
        subscriberHash: "subscriber_hash",
        noteId: "note_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriberHash:** `String` — The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    
</dd>
</dl>

<dl>
<dd>

**noteId:** `String` — The id for the note.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">updateMemberNote</a>(listId: String, subscriberHash: String, noteId: String, request: Requests.UpdateMemberNoteListsRequest, requestOptions: RequestOptions?) -> MemberNotes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a specific note for a specific list member.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.updateMemberNote(
        listId: "list_id",
        subscriberHash: "subscriber_hash",
        noteId: "note_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriberHash:** `String` — The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    
</dd>
</dl>

<dl>
<dd>

**noteId:** `String` — The id for the note.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateMemberNoteListsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">listMemberTags</a>(listId: String, subscriberHash: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, requestOptions: RequestOptions?) -> ListMemberTagsListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get the tags on a list member.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.listMemberTags(
        listId: "list_id",
        subscriberHash: "subscriber_hash"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriberHash:** `String` — The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">createMemberTag</a>(listId: String, subscriberHash: String, request: Requests.CreateMemberTagListsRequest, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add or remove tags from a list member. If a tag that does not exist is passed in and set as 'active', a new tag will be created.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.createMemberTag(
        listId: "list_id",
        subscriberHash: "subscriber_hash",
        request: .init(tags: [
            CreateMemberTagListsRequestTagsItem(
                name: "name",
                status: .inactive
            )
        ])
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriberHash:** `String` — The MD5 hash of the lowercase version of the list member's email address.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateMemberTagListsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">listMergeFields</a>(listId: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, type: String?, required: Bool?, requestOptions: RequestOptions?) -> ListMergeFieldsListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of all merge fields for an audience.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.listMergeFields(listId: "list_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**type:** `String?` — The merge field type.
    
</dd>
</dl>

<dl>
<dd>

**required:** `Bool?` — Whether it's a required merge field.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">createMergeField</a>(listId: String, request: Requests.CreateMergeFieldListsRequest, requestOptions: RequestOptions?) -> MergeField</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a new merge field for a specific audience.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.createMergeField(
        listId: "list_id",
        request: .init(
            name: "name",
            type: .text
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateMergeFieldListsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">getMergeField</a>(listId: String, mergeId: String, excludeFields: [String]?, fields: [String]?, requestOptions: RequestOptions?) -> MergeField</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific merge field.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.getMergeField(
        listId: "list_id",
        mergeId: "merge_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**mergeId:** `String` — The id for the merge field.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">deleteMergeField</a>(listId: String, mergeId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a specific merge field.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.deleteMergeField(
        listId: "list_id",
        mergeId: "merge_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**mergeId:** `String` — The id for the merge field.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">updateMergeField</a>(listId: String, mergeId: String, request: Requests.UpdateMergeFieldListsRequest, requestOptions: RequestOptions?) -> MergeField</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a specific merge field.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.updateMergeField(
        listId: "list_id",
        mergeId: "merge_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**mergeId:** `String` — The id for the merge field.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateMergeFieldListsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">listSegments</a>(listId: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, type: String?, sinceCreatedAt: String?, beforeCreatedAt: String?, includeCleaned: Bool?, includeTransactional: Bool?, includeUnsubscribed: Bool?, sinceUpdatedAt: String?, beforeUpdatedAt: String?, excludeType: ListSegmentsListsRequestExcludeType?, requestOptions: RequestOptions?) -> ListSegmentsListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about all available segments for a specific list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.listSegments(listId: "list_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**type:** `String?` — Limit results based on segment type.
    
</dd>
</dl>

<dl>
<dd>

**sinceCreatedAt:** `String?` — Restrict results to segments created after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**beforeCreatedAt:** `String?` — Restrict results to segments created before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**includeCleaned:** `Bool?` — Include cleaned members in response
    
</dd>
</dl>

<dl>
<dd>

**includeTransactional:** `Bool?` — Include transactional members in response
    
</dd>
</dl>

<dl>
<dd>

**includeUnsubscribed:** `Bool?` — Include unsubscribed members in response
    
</dd>
</dl>

<dl>
<dd>

**sinceUpdatedAt:** `String?` — Restrict results to segments update after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**beforeUpdatedAt:** `String?` — Restrict results to segments update before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**excludeType:** `ListSegmentsListsRequestExcludeType?` — Exclude results based on segment type. For example, use `exclude_type=static` to exclude tags from the response.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">createSegment</a>(listId: String, request: Requests.CreateSegmentListsRequest, requestOptions: RequestOptions?) -> List</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new segment in a specific list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.createSegment(
        listId: "list_id",
        request: .init(name: "name")
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateSegmentListsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">getSegment</a>(listId: String, segmentId: String, fields: [String]?, excludeFields: [String]?, includeCleaned: Bool?, includeTransactional: Bool?, includeUnsubscribed: Bool?, requestOptions: RequestOptions?) -> List</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific segment.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.getSegment(
        listId: "list_id",
        segmentId: "segment_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**segmentId:** `String` — The unique id for the segment.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**includeCleaned:** `Bool?` — Include cleaned members in response
    
</dd>
</dl>

<dl>
<dd>

**includeTransactional:** `Bool?` — Include transactional members in response
    
</dd>
</dl>

<dl>
<dd>

**includeUnsubscribed:** `Bool?` — Include unsubscribed members in response
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">batchAddOrRemoveMembers</a>(listId: String, segmentId: String, request: Requests.BatchAddOrRemoveMembersListsRequest, requestOptions: RequestOptions?) -> BatchAddOrRemoveMembersListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Batch add/remove list members to static segment
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.batchAddOrRemoveMembers(
        listId: "list_id",
        segmentId: "segment_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**segmentId:** `String` — The unique id for the segment.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.BatchAddOrRemoveMembersListsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">deleteSegment</a>(listId: String, segmentId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a specific segment in a list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.deleteSegment(
        listId: "list_id",
        segmentId: "segment_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**segmentId:** `String` — The unique id for the segment.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">updateSegment</a>(listId: String, segmentId: String, request: Requests.UpdateSegmentListsRequest, requestOptions: RequestOptions?) -> List</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a specific segment in a list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.updateSegment(
        listId: "list_id",
        segmentId: "segment_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**segmentId:** `String` — The unique id for the segment.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateSegmentListsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">listSegmentMembers</a>(listId: String, segmentId: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, includeCleaned: Bool?, includeTransactional: Bool?, includeUnsubscribed: Bool?, requestOptions: RequestOptions?) -> ListSegmentMembersListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about members in a saved segment.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.listSegmentMembers(
        listId: "list_id",
        segmentId: "segment_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**segmentId:** `String` — The unique id for the segment.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**includeCleaned:** `Bool?` — Include cleaned members in response
    
</dd>
</dl>

<dl>
<dd>

**includeTransactional:** `Bool?` — Include transactional members in response
    
</dd>
</dl>

<dl>
<dd>

**includeUnsubscribed:** `Bool?` — Include unsubscribed members in response
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">createSegmentMember</a>(listId: String, segmentId: String, request: Requests.CreateSegmentMemberListsRequest, requestOptions: RequestOptions?) -> ListsSegmentsMembers</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a member to a static segment.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.createSegmentMember(
        listId: "list_id",
        segmentId: "segment_id",
        request: .init(emailAddress: "email_address")
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**segmentId:** `String` — The unique id for the segment.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateSegmentMemberListsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">deleteSegmentMember</a>(listId: String, segmentId: String, subscriberHash: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Remove a member from the specified static segment.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.deleteSegmentMember(
        listId: "list_id",
        segmentId: "segment_id",
        subscriberHash: "subscriber_hash"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**segmentId:** `String` — The unique id for the segment.
    
</dd>
</dl>

<dl>
<dd>

**subscriberHash:** `String` — The MD5 hash of the lowercase version of the list member's email address.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">listSignupForms</a>(listId: String, requestOptions: RequestOptions?) -> ListSignupFormsListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get signup forms for a specific list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.listSignupForms(listId: "list_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">createSignupForm</a>(listId: String, request: Requests.CreateSignupFormListsRequest, requestOptions: RequestOptions?) -> SignupForm</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Customize a list's default signup form.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.createSignupForm(
        listId: "list_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateSignupFormListsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">listSurveys</a>(listId: String, requestOptions: RequestOptions?) -> JSONValue</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about all available surveys for a specific list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.listSurveys(listId: "list_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">createSurvey</a>(listId: String, request: Requests.CreateSurveyListsRequest, requestOptions: RequestOptions?) -> JSONValue</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a draft survey for an audience.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.createSurvey(
        listId: "list_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateSurveyListsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">getSurvey</a>(listId: String, surveyId: String, requestOptions: RequestOptions?) -> JSONValue</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get details about a specific survey.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.getSurvey(
        listId: "list_id",
        surveyId: "survey_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**surveyId:** `String` — The ID of the survey.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">deleteSurvey</a>(listId: String, surveyId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a survey.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.deleteSurvey(
        listId: "list_id",
        surveyId: "survey_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**surveyId:** `String` — The ID of the survey.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">updateSurvey</a>(listId: String, surveyId: String, request: Requests.UpdateSurveyListsRequest, requestOptions: RequestOptions?) -> JSONValue</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a survey. When sections is provided, send the complete section list in display order. Any existing section not included is deleted.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.updateSurvey(
        listId: "list_id",
        surveyId: "survey_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**surveyId:** `String` — The ID of the survey.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateSurveyListsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">createListSurveyActionReplicate</a>(listIdPathParam: String, surveyId: String, request: Requests.CreateListSurveyActionReplicateListsRequest, requestOptions: RequestOptions?) -> JSONValue</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Replicate a survey.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.createListSurveyActionReplicate(
        listIdPathParam: "list_id",
        surveyId: "survey_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listIdPathParam:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**surveyId:** `String` — The ID of the survey.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateListSurveyActionReplicateListsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">listTagSearch</a>(listId: String, name: String?, requestOptions: RequestOptions?) -> ListTagSearchListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Search for tags on a list by name. If no name is provided, will return all tags on the list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.listTagSearch(listId: "list_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String?` — The search query used to filter tags.  The search query will be compared to each tag as a prefix, so all tags that have a name starting with this field will be returned.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">listWebhooks</a>(listId: String, requestOptions: RequestOptions?) -> ListWebhooksListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about all webhooks for a specific list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.listWebhooks(listId: "list_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">createWebhook</a>(listId: String, request: AddWebhook, requestOptions: RequestOptions?) -> CreateWebhookListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new webhook for a specific list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.createWebhook(
        listId: "list_id",
        request: AddWebhook(

        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**request:** `AddWebhook` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">getWebhook</a>(listId: String, webhookId: String, requestOptions: RequestOptions?) -> ListWebhooks</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific webhook.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.getWebhook(
        listId: "list_id",
        webhookId: "webhook_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**webhookId:** `String` — The webhook's id.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">deleteWebhook</a>(listId: String, webhookId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a specific webhook in a list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.deleteWebhook(
        listId: "list_id",
        webhookId: "webhook_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**webhookId:** `String` — The webhook's id.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/Sources/Resources/Lists/ListsClient.swift">updateWebhook</a>(listId: String, webhookId: String, request: AddWebhook, requestOptions: RequestOptions?) -> ListWebhooks</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update the settings for an existing webhook.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.lists.updateWebhook(
        listId: "list_id",
        webhookId: "webhook_id",
        request: AddWebhook(

        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**webhookId:** `String` — The webhook's id.
    
</dd>
</dl>

<dl>
<dd>

**request:** `AddWebhook` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## surveys
<details><summary><code>client.surveys.<a href="/Sources/Resources/Surveys/SurveysClient.swift">createListSurveyActionCreateEmail</a>(listId: String, surveyId: String, requestOptions: RequestOptions?) -> Campaign</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Utilize the List ID and Survey ID to generate a Campaign that links to your survey.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.surveys.createListSurveyActionCreateEmail(
        listId: "list_id",
        surveyId: "survey_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**surveyId:** `String` — The ID of the survey.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.surveys.<a href="/Sources/Resources/Surveys/SurveysClient.swift">createListSurveyActionPublish</a>(listId: String, surveyId: String, requestOptions: RequestOptions?) -> JSONValue</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Publish a survey that is in draft, unpublished, or has been previously published and edited.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.surveys.createListSurveyActionPublish(
        listId: "list_id",
        surveyId: "survey_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**surveyId:** `String` — The ID of the survey.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.surveys.<a href="/Sources/Resources/Surveys/SurveysClient.swift">createListSurveyActionUnpublish</a>(listId: String, surveyId: String, requestOptions: RequestOptions?) -> JSONValue</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Unpublish a survey that has been published.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.surveys.createListSurveyActionUnpublish(
        listId: "list_id",
        surveyId: "survey_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listId:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**surveyId:** `String` — The ID of the survey.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ping
<details><summary><code>client.ping.<a href="/Sources/Resources/Ping/PingClient.swift">list</a>(requestOptions: RequestOptions?) -> ListPingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

A health check for the API that won't return any account-specific information.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.ping.list()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## reporting
<details><summary><code>client.reporting.<a href="/Sources/Resources/Reporting/ReportingClient.swift">list</a>(requestOptions: RequestOptions?) -> [ListReportingResponseItem]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about the reporting endpoint's resources.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reporting.list()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reporting.<a href="/Sources/Resources/Reporting/ReportingClient.swift">listFacebookAds</a>(fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, sortField: ListFacebookAdsReportingRequestSortField?, sortDir: ListFacebookAdsReportingRequestSortDir?, requestOptions: RequestOptions?) -> ListFacebookAdsReportingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get reports of Facebook ads.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reporting.listFacebookAds()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**sortField:** `ListFacebookAdsReportingRequestSortField?` — Returns files sorted by the specified field.
    
</dd>
</dl>

<dl>
<dd>

**sortDir:** `ListFacebookAdsReportingRequestSortDir?` — Determines the order direction for sorted results.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reporting.<a href="/Sources/Resources/Reporting/ReportingClient.swift">getFacebookAd</a>(outreachId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> ReportingFacebookAd</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get report of a Facebook ad.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reporting.getFacebookAd(outreachId: "outreach_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**outreachId:** `String` — The outreach id.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reporting.<a href="/Sources/Resources/Reporting/ReportingClient.swift">listFacebookAdEcommerceProductActivity</a>(outreachId: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, sortField: ListFacebookAdEcommerceProductActivityReportingRequestSortField?, requestOptions: RequestOptions?) -> ListFacebookAdEcommerceProductActivityReportingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get breakdown of product activity for an outreach.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reporting.listFacebookAdEcommerceProductActivity(outreachId: "outreach_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**outreachId:** `String` — The outreach id.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**sortField:** `ListFacebookAdEcommerceProductActivityReportingRequestSortField?` — Returns files sorted by the specified field.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reporting.<a href="/Sources/Resources/Reporting/ReportingClient.swift">listLandingPages</a>(fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, requestOptions: RequestOptions?) -> ListLandingPagesReportingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get reports of landing pages.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reporting.listLandingPages()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reporting.<a href="/Sources/Resources/Reporting/ReportingClient.swift">getLandingPage</a>(outreachId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> LandingPageReport</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get report of a landing page.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reporting.getLandingPage(outreachId: "outreach_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**outreachId:** `String` — The outreach id.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reporting.<a href="/Sources/Resources/Reporting/ReportingClient.swift">listSurveys</a>(fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, requestOptions: RequestOptions?) -> ListSurveysReportingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get reports for surveys.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reporting.listSurveys()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reporting.<a href="/Sources/Resources/Reporting/ReportingClient.swift">getSurvey</a>(surveyId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> GetSurveyReportingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get report for a survey.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reporting.getSurvey(surveyId: "survey_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**surveyId:** `String` — The ID of the survey.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reporting.<a href="/Sources/Resources/Reporting/ReportingClient.swift">listSurveyQuestions</a>(surveyId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> ListSurveyQuestionsReportingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get reports for survey questions.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reporting.listSurveyQuestions(surveyId: "survey_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**surveyId:** `String` — The ID of the survey.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reporting.<a href="/Sources/Resources/Reporting/ReportingClient.swift">getSurveyQuestion</a>(surveyId: String, questionId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> SurveyQuestionReport</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get report for a survey question.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reporting.getSurveyQuestion(
        surveyId: "survey_id",
        questionId: "question_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**surveyId:** `String` — The ID of the survey.
    
</dd>
</dl>

<dl>
<dd>

**questionId:** `String` — The ID of the survey question.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reporting.<a href="/Sources/Resources/Reporting/ReportingClient.swift">listSurveyQuestionAnswers</a>(surveyId: String, questionId: String, fields: [String]?, excludeFields: [String]?, respondentFamiliarityIs: ListSurveyQuestionAnswersReportingRequestRespondentFamiliarityIs?, requestOptions: RequestOptions?) -> ListSurveyQuestionAnswersReportingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get answers for a survey question.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reporting.listSurveyQuestionAnswers(
        surveyId: "survey_id",
        questionId: "question_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**surveyId:** `String` — The ID of the survey.
    
</dd>
</dl>

<dl>
<dd>

**questionId:** `String` — The ID of the survey question.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**respondentFamiliarityIs:** `ListSurveyQuestionAnswersReportingRequestRespondentFamiliarityIs?` — Filter survey responses by familiarity of the respondents.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reporting.<a href="/Sources/Resources/Reporting/ReportingClient.swift">listSurveyResponses</a>(surveyId: String, fields: [String]?, excludeFields: [String]?, answeredQuestion: Int?, choseAnswer: String?, respondentFamiliarityIs: ListSurveyResponsesReportingRequestRespondentFamiliarityIs?, requestOptions: RequestOptions?) -> ListSurveyResponsesReportingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get responses to a survey.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reporting.listSurveyResponses(surveyId: "survey_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**surveyId:** `String` — The ID of the survey.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**answeredQuestion:** `Int?` — The ID of the question that was answered.
    
</dd>
</dl>

<dl>
<dd>

**choseAnswer:** `String?` — The ID of the option chosen to filter responses on.
    
</dd>
</dl>

<dl>
<dd>

**respondentFamiliarityIs:** `ListSurveyResponsesReportingRequestRespondentFamiliarityIs?` — Filter survey responses by familiarity of the respondents.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reporting.<a href="/Sources/Resources/Reporting/ReportingClient.swift">getSurveyRespons</a>(surveyId: String, responseId: String, requestOptions: RequestOptions?) -> GetSurveyResponsReportingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a single survey response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reporting.getSurveyRespons(
        surveyId: "survey_id",
        responseId: "response_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**surveyId:** `String` — The ID of the survey.
    
</dd>
</dl>

<dl>
<dd>

**responseId:** `String` — The ID of the survey response.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## reports
<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">list</a>(fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, type: ListReportsRequestType?, beforeSendTime: Date?, sinceSendTime: Date?, requestOptions: RequestOptions?) -> ListReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get campaign reports.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reports.list()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**type:** `ListReportsRequestType?` — The campaign type.
    
</dd>
</dl>

<dl>
<dd>

**beforeSendTime:** `Date?` — Restrict the response to campaigns sent before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**sinceSendTime:** `Date?` — Restrict the response to campaigns sent after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">get</a>(campaignId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> CampaignReport</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get report details for a specific sent campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reports.get(campaignId: "campaign_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">listAbuseReports</a>(campaignId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> ListAbuseReportsReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of abuse complaints for a specific campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reports.listAbuseReports(campaignId: "campaign_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">getAbuseReport</a>(campaignId: String, reportId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> AbuseComplaint</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific abuse report for a campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reports.getAbuseReport(
        campaignId: "campaign_id",
        reportId: "report_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**reportId:** `String` — The id for the abuse report.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">listAdvice</a>(campaignId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> ListAdviceReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get feedback based on a campaign's statistics. Advice feedback is based on campaign stats like opens, clicks, unsubscribes, bounces, and more.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reports.listAdvice(campaignId: "campaign_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">listClickDetails</a>(campaignId: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, sortField: ListClickDetailsReportsRequestSortField?, sortDir: ListClickDetailsReportsRequestSortDir?, filterBots: Bool?, requestOptions: RequestOptions?) -> ListClickDetailsReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about clicks on specific links in your Mailchimp campaigns.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reports.listClickDetails(campaignId: "campaign_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**sortField:** `ListClickDetailsReportsRequestSortField?` — Returns click reports sorted by the specified field.
    
</dd>
</dl>

<dl>
<dd>

**sortDir:** `ListClickDetailsReportsRequestSortDir?` — Determines the order direction for sorted results.
    
</dd>
</dl>

<dl>
<dd>

**filterBots:** `Bool?` — When true, exclude automated bot clicks so the returned click counts reflect human clicks only, matching the in-app Recipient Activity view. Filtering changes a link's counts, but never removes a link from the response. Defaults to false (all clicks).
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">getClickDetail</a>(campaignId: String, linkId: String, fields: [String]?, excludeFields: [String]?, filterBots: Bool?, requestOptions: RequestOptions?) -> ClickDetailReport</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get click details for a specific link in a campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reports.getClickDetail(
        campaignId: "campaign_id",
        linkId: "link_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**linkId:** `String` — The id for the link.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**filterBots:** `Bool?` — When true, exclude automated bot clicks so the returned click counts reflect human clicks only, matching the in-app Recipient Activity view. Filtering changes a link's counts, but never removes a link from the response. Defaults to false (all clicks).
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">listClickDetailMembers</a>(campaignId: String, linkId: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, requestOptions: RequestOptions?) -> ListClickDetailMembersReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about list members who clicked on a specific link in a campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reports.listClickDetailMembers(
        campaignId: "campaign_id",
        linkId: "link_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**linkId:** `String` — The id for the link.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">getClickDetailMember</a>(campaignId: String, linkId: String, subscriberHash: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> ClickDetailMember</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific subscriber who clicked a link in a specific campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reports.getClickDetailMember(
        campaignId: "campaign_id",
        linkId: "link_id",
        subscriberHash: "subscriber_hash"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**linkId:** `String` — The id for the link.
    
</dd>
</dl>

<dl>
<dd>

**subscriberHash:** `String` — The MD5 hash of the lowercase version of the list member's email address.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">listDomainPerformance</a>(campaignId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> ListDomainPerformanceReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get statistics for the top-performing email domains in a campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reports.listDomainPerformance(campaignId: "campaign_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">listEcommerceProductActivity</a>(campaignId: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, sortField: ListEcommerceProductActivityReportsRequestSortField?, requestOptions: RequestOptions?) -> ListEcommerceProductActivityReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get breakdown of product activity for a campaign
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reports.listEcommerceProductActivity(campaignId: "campaign_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**sortField:** `ListEcommerceProductActivityReportsRequestSortField?` — Returns files sorted by the specified field.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">listEepurl</a>(campaignId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> ListEepurlReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a summary of social activity for the campaign, tracked by EepURL.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reports.listEepurl(campaignId: "campaign_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">listEmailActivity</a>(campaignId: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, since: String?, filterBots: Bool?, requestOptions: RequestOptions?) -> ListEmailActivityReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of member's subscriber activity in a specific campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reports.listEmailActivity(campaignId: "campaign_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**since:** `String?` — Restrict results to email activity events that occur after a specific time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**filterBots:** `Bool?` — When true, exclude automated bot and Apple Mail Privacy Protection (MPP) proxy activity so the returned activity reflects human-only opens and clicks, matching the in-app Recipient Activity view. Filtering removes events from a member's activity, but never removes the member from the response. Defaults to false (all activity).
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">getEmailActivity</a>(campaignId: String, subscriberHash: String, fields: [String]?, excludeFields: [String]?, since: String?, filterBots: Bool?, requestOptions: RequestOptions?) -> EmailActivity</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a specific list member's activity in a campaign including opens, clicks, and bounces.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reports.getEmailActivity(
        campaignId: "campaign_id",
        subscriberHash: "subscriber_hash"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**subscriberHash:** `String` — The MD5 hash of the lowercase version of the list member's email address.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**since:** `String?` — Restrict results to email activity events that occur after a specific time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**filterBots:** `Bool?` — When true, exclude automated bot and Apple Mail Privacy Protection (MPP) proxy activity so the returned activity reflects human-only opens and clicks, matching the in-app Recipient Activity view. Filtering removes events from a member's activity, but never removes the member from the response. Defaults to false (all activity).
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">listLocations</a>(campaignId: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, requestOptions: RequestOptions?) -> ListLocationsReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get top open locations for a specific campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reports.listLocations(campaignId: "campaign_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">listOpenDetails</a>(campaignId: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, since: String?, sortField: ListOpenDetailsReportsRequestSortField?, sortDir: ListOpenDetailsReportsRequestSortDir?, filterBots: Bool?, requestOptions: RequestOptions?) -> ListOpenDetailsReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get detailed information about any campaign emails that were opened by a list member.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reports.listOpenDetails(
        campaignId: "campaign_id",
        since: "2016-04-12 12:00:00"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**since:** `String?` — Restrict results to campaign open events that occur after a specific time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**sortField:** `ListOpenDetailsReportsRequestSortField?` — Returns open reports sorted by the specified field.
    
</dd>
</dl>

<dl>
<dd>

**sortDir:** `ListOpenDetailsReportsRequestSortDir?` — Determines the order direction for sorted results.
    
</dd>
</dl>

<dl>
<dd>

**filterBots:** `Bool?` — When true, exclude automated (proxy/bot) opens so the returned open counts reflect human opens only, matching the in-app Recipient Activity view. A member whose opens are all automated is excluded from the human-only view. Defaults to false (all opens).
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">getOpenDetail</a>(campaignId: String, subscriberHash: String, fields: [String]?, excludeFields: [String]?, filterBots: Bool?, requestOptions: RequestOptions?) -> OpenActivity</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific subscriber who opened a campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reports.getOpenDetail(
        campaignId: "campaign_id",
        subscriberHash: "subscriber_hash"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**subscriberHash:** `String` — The MD5 hash of the lowercase version of the list member's email address.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**filterBots:** `Bool?` — When true, exclude automated (proxy/bot) opens so the returned open counts reflect human opens only, matching the in-app Recipient Activity view. A member whose opens are all automated is excluded from the human-only view. Defaults to false (all opens).
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">listSentTo</a>(campaignId: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, requestOptions: RequestOptions?) -> ListSentToReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about campaign recipients.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reports.listSentTo(campaignId: "campaign_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">getSentTo</a>(campaignId: String, subscriberHash: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> SentTo</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific campaign recipient.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reports.getSentTo(
        campaignId: "campaign_id",
        subscriberHash: "subscriber_hash"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**subscriberHash:** `String` — The MD5 hash of the lowercase version of the list member's email address.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">listSubReports</a>(campaignId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> ListSubReportsReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of reports with child campaigns for a specific parent campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reports.listSubReports(campaignId: "campaign_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">listUnsubscribed</a>(campaignId: String, fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, requestOptions: RequestOptions?) -> ListUnsubscribedReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about members who have unsubscribed from a specific campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reports.listUnsubscribed(campaignId: "campaign_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">getUnsubscribed</a>(campaignId: String, subscriberHash: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> Unsubscribes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific list member who unsubscribed from a campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.reports.getUnsubscribed(
        campaignId: "campaign_id",
        subscriberHash: "subscriber_hash"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaignId:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**subscriberHash:** `String` — The MD5 hash of the lowercase version of the list member's email address.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## SearchCampaigns
<details><summary><code>client.searchCampaigns.<a href="/Sources/Resources/SearchCampaigns/SearchCampaignsClient.swift">list</a>(fields: [String]?, excludeFields: [String]?, query: String, requestOptions: RequestOptions?) -> ListSearchCampaignsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Search all campaigns for the specified query terms.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.searchCampaigns.list(query: "query")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**query:** `String` — The search query used to filter results.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## SmsCampaigns
<details><summary><code>client.smsCampaigns.<a href="/Sources/Resources/SmsCampaigns/SmsCampaignsClient.swift">list</a>(fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, requestOptions: RequestOptions?) -> ListSmsCampaignsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get all SMS campaigns in an account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.smsCampaigns.list()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.smsCampaigns.<a href="/Sources/Resources/SmsCampaigns/SmsCampaignsClient.swift">create</a>(request: Requests.CreateSmsCampaignsRequest, requestOptions: RequestOptions?) -> SmsCampaign</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new SMS campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.smsCampaigns.create(request: .init(name: "name"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CreateSmsCampaignsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.smsCampaigns.<a href="/Sources/Resources/SmsCampaigns/SmsCampaignsClient.swift">get</a>(smsCampaignId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> SmsCampaign</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get the details for a single SMS campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.smsCampaigns.get(smsCampaignId: "sms_campaign_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**smsCampaignId:** `String` — The unique id for the SMS campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.smsCampaigns.<a href="/Sources/Resources/SmsCampaigns/SmsCampaignsClient.swift">delete</a>(smsCampaignId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Remove a campaign from your Mailchimp account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.smsCampaigns.delete(smsCampaignId: "sms_campaign_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**smsCampaignId:** `String` — The unique id for the SMS campaign.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.smsCampaigns.<a href="/Sources/Resources/SmsCampaigns/SmsCampaignsClient.swift">update</a>(smsCampaignId: String, request: Requests.UpdateSmsCampaignsRequest, requestOptions: RequestOptions?) -> SmsCampaign</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update an SMS campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.smsCampaigns.update(
        smsCampaignId: "sms_campaign_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**smsCampaignId:** `String` — The unique id for the SMS campaign.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateSmsCampaignsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.smsCampaigns.<a href="/Sources/Resources/SmsCampaigns/SmsCampaignsClient.swift">createActionCancelSend</a>(smsCampaignId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Cancel a scheduled or sending SMS campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.smsCampaigns.createActionCancelSend(smsCampaignId: "sms_campaign_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**smsCampaignId:** `String` — The unique id for the SMS campaign.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.smsCampaigns.<a href="/Sources/Resources/SmsCampaigns/SmsCampaignsClient.swift">createActionSchedule</a>(smsCampaignId: String, request: Requests.CreateActionScheduleSmsCampaignsRequest, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Schedule an SMS campaign for delivery.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.smsCampaigns.createActionSchedule(
        smsCampaignId: "sms_campaign_id",
        request: .init(scheduleTime: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**smsCampaignId:** `String` — The unique id for the SMS campaign.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateActionScheduleSmsCampaignsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.smsCampaigns.<a href="/Sources/Resources/SmsCampaigns/SmsCampaignsClient.swift">createActionSend</a>(smsCampaignId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Send an SMS campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.smsCampaigns.createActionSend(smsCampaignId: "sms_campaign_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**smsCampaignId:** `String` — The unique id for the SMS campaign.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.smsCampaigns.<a href="/Sources/Resources/SmsCampaigns/SmsCampaignsClient.swift">getContent</a>(smsCampaignId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> SmsCampaignContent</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get the content for an SMS campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.smsCampaigns.getContent(smsCampaignId: "sms_campaign_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**smsCampaignId:** `String` — The unique id for the SMS campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.smsCampaigns.<a href="/Sources/Resources/SmsCampaigns/SmsCampaignsClient.swift">upsertContent</a>(smsCampaignId: String, request: Requests.UpsertContentSmsCampaignsRequest, requestOptions: RequestOptions?) -> SmsCampaignContent</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Set the content for an SMS campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.smsCampaigns.upsertContent(
        smsCampaignId: "sms_campaign_id",
        request: .init(messageBody: "message_body")
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**smsCampaignId:** `String` — The unique id for the SMS campaign.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpsertContentSmsCampaignsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## SearchMembers
<details><summary><code>client.searchMembers.<a href="/Sources/Resources/SearchMembers/SearchMembersClient.swift">list</a>(fields: [String]?, excludeFields: [String]?, query: String, listId: String?, requestOptions: RequestOptions?) -> ListSearchMembersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Search for list members. This search can be restricted to a specific list, or can be used to search across all lists in an account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.searchMembers.list(query: "query")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**query:** `String` — The search query used to filter results. Query should be a valid email, or a string representing a contact's first or last name.
    
</dd>
</dl>

<dl>
<dd>

**listId:** `String?` — The unique id for the list.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TemplateFolders
<details><summary><code>client.templateFolders.<a href="/Sources/Resources/TemplateFolders/TemplateFoldersClient.swift">list</a>(fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, requestOptions: RequestOptions?) -> ListTemplateFoldersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get all folders used to organize templates.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.templateFolders.list()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.templateFolders.<a href="/Sources/Resources/TemplateFolders/TemplateFoldersClient.swift">create</a>(request: Requests.CreateTemplateFoldersRequest, requestOptions: RequestOptions?) -> CreateTemplateFoldersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new template folder.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.templateFolders.create(request: .init(name: "name"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CreateTemplateFoldersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.templateFolders.<a href="/Sources/Resources/TemplateFolders/TemplateFoldersClient.swift">get</a>(folderId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> GetTemplateFoldersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific folder used to organize templates.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.templateFolders.get(folderId: "folder_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**folderId:** `String` — The unique id for the template folder.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.templateFolders.<a href="/Sources/Resources/TemplateFolders/TemplateFoldersClient.swift">delete</a>(folderId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a specific template folder, and mark all the templates in the folder as 'unfiled'.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.templateFolders.delete(folderId: "folder_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**folderId:** `String` — The unique id for the template folder.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.templateFolders.<a href="/Sources/Resources/TemplateFolders/TemplateFoldersClient.swift">update</a>(folderId: String, request: Requests.UpdateTemplateFoldersRequest, requestOptions: RequestOptions?) -> UpdateTemplateFoldersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a specific folder used to organize templates.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.templateFolders.update(
        folderId: "folder_id",
        request: .init(name: "name")
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**folderId:** `String` — The unique id for the template folder.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateTemplateFoldersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## templates
<details><summary><code>client.templates.<a href="/Sources/Resources/Templates/TemplatesClient.swift">list</a>(fields: [String]?, excludeFields: [String]?, count: Int?, offset: Int?, createdBy: String?, sinceDateCreated: String?, beforeDateCreated: String?, type: String?, category: String?, folderId: String?, sortField: ListTemplatesRequestSortField?, contentType: ListTemplatesRequestContentType?, sortDir: ListTemplatesRequestSortDir?, requestOptions: RequestOptions?) -> ListTemplatesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of an account's available templates.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.templates.list()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Int?` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Int?` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**createdBy:** `String?` — The Mailchimp account user who created the template.
    
</dd>
</dl>

<dl>
<dd>

**sinceDateCreated:** `String?` — Restrict the response to templates created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**beforeDateCreated:** `String?` — Restrict the response to templates created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**type:** `String?` — Limit results based on template type.
    
</dd>
</dl>

<dl>
<dd>

**category:** `String?` — Limit results based on category.
    
</dd>
</dl>

<dl>
<dd>

**folderId:** `String?` — The unique folder id.
    
</dd>
</dl>

<dl>
<dd>

**sortField:** `ListTemplatesRequestSortField?` — Returns user templates sorted by the specified field.
    
</dd>
</dl>

<dl>
<dd>

**contentType:** `ListTemplatesRequestContentType?` — Limit results based on how the template's content is put together. Only templates of type `user` can be filtered by `content_type`. If you want to retrieve saved templates created with the legacy email editor, then filter `content_type` to `template`. If you'd rather pull your saved templates for the new editor, filter to `multichannel`. For code your own templates, filter to `html`.
    
</dd>
</dl>

<dl>
<dd>

**sortDir:** `ListTemplatesRequestSortDir?` — Determines the order direction for sorted results.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.templates.<a href="/Sources/Resources/Templates/TemplatesClient.swift">create</a>(request: Requests.CreateTemplatesRequest, requestOptions: RequestOptions?) -> TemplateInstance</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new template for the account. Only Classic templates are supported.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.templates.create(request: .init(
        html: "html",
        name: "Freddie's Jokes"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CreateTemplatesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.templates.<a href="/Sources/Resources/Templates/TemplatesClient.swift">get</a>(templateId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> TemplateInstance</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific template.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.templates.get(templateId: "template_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**templateId:** `String` — The unique id for the template.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.templates.<a href="/Sources/Resources/Templates/TemplatesClient.swift">delete</a>(templateId: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a specific template.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.templates.delete(templateId: "template_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**templateId:** `String` — The unique id for the template.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.templates.<a href="/Sources/Resources/Templates/TemplatesClient.swift">update</a>(templateId: String, request: Requests.UpdateTemplatesRequest, requestOptions: RequestOptions?) -> TemplateInstance</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update the name, HTML, or `folder_id` of an existing template.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.templates.update(
        templateId: "template_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**templateId:** `String` — The unique id for the template.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateTemplatesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.templates.<a href="/Sources/Resources/Templates/TemplatesClient.swift">listDefaultContent</a>(templateId: String, fields: [String]?, excludeFields: [String]?, requestOptions: RequestOptions?) -> ListDefaultContentTemplatesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get the sections that you can edit in a template, including each section's default content.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.templates.listDefaultContent(templateId: "template_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**templateId:** `String` — The unique id for the template.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `[String]?` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**excludeFields:** `[String]?` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## VerifiedDomains
<details><summary><code>client.verifiedDomains.<a href="/Sources/Resources/VerifiedDomains/VerifiedDomainsClient.swift">list</a>(requestOptions: RequestOptions?) -> ListVerifiedDomainsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get all of the sending domains on the account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.verifiedDomains.list()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.verifiedDomains.<a href="/Sources/Resources/VerifiedDomains/VerifiedDomainsClient.swift">create</a>(request: Requests.CreateVerifiedDomainsRequest, requestOptions: RequestOptions?) -> CreateVerifiedDomainsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a domain to the account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.verifiedDomains.create(request: .init(verificationEmail: "verification_email"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CreateVerifiedDomainsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.verifiedDomains.<a href="/Sources/Resources/VerifiedDomains/VerifiedDomainsClient.swift">get</a>(domainName: String, requestOptions: RequestOptions?) -> GetVerifiedDomainsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get the details for a single domain on the account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.verifiedDomains.get(domainName: "domain_name")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**domainName:** `String` — The domain name.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.verifiedDomains.<a href="/Sources/Resources/VerifiedDomains/VerifiedDomainsClient.swift">delete</a>(domainName: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a verified domain from the account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.verifiedDomains.delete(domainName: "domain_name")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**domainName:** `String` — The domain name.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.verifiedDomains.<a href="/Sources/Resources/VerifiedDomains/VerifiedDomainsClient.swift">createActionVerify</a>(domainName: String, request: Requests.CreateActionVerifyVerifiedDomainsRequest, requestOptions: RequestOptions?) -> CreateActionVerifyVerifiedDomainsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Verify a domain for sending.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Mailchimp

private func main() async throws {
    let client = MailchimpClient(token: "<token>")

    _ = try await client.verifiedDomains.createActionVerify(
        domainName: "domain_name",
        request: .init(code: "code")
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**domainName:** `String` — The domain name.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateActionVerifyVerifiedDomainsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

