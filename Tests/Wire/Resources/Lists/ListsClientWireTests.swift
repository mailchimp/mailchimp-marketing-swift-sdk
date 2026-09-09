import Foundation
import Testing
import Mailchimp

@Suite("ListsClient Wire Tests") struct ListsClientWireTests {
    @Test func list1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "constraints": {
                    "current_total_instances": 1,
                    "max_instances": 1,
                    "may_create": true
                  },
                  "lists": [
                    {
                      "_links": [
                        {}
                      ],
                      "beamer_address": "beamer_address",
                      "date_created": "2024-01-15T09:30:00Z",
                      "double_optin": true,
                      "email_type_option": true,
                      "has_welcome": false,
                      "id": "id",
                      "list_rating": 1,
                      "marketing_permissions": true,
                      "modules": [
                        "modules"
                      ],
                      "name": "name",
                      "notify_on_subscribe": "notify_on_subscribe",
                      "notify_on_unsubscribe": "notify_on_unsubscribe",
                      "permission_reminder": "permission_reminder",
                      "subscribe_url_long": "subscribe_url_long",
                      "subscribe_url_short": "subscribe_url_short",
                      "use_archive_bar": true,
                      "visibility": "pub",
                      "web_id": 1
                    }
                  ],
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListListsResponse(
            links: Optional([
                ListListsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListListsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            constraints: Optional(ListListsResponseConstraints(
                currentTotalInstances: Optional(1),
                maxInstances: 1,
                mayCreate: true
            )),
            lists: [
                SubscriberList(
                    links: Optional([
                        SubscriberListLinksItem(

                        )
                    ]),
                    beamerAddress: Optional("beamer_address"),
                    dateCreated: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    doubleOptin: Optional(true),
                    emailTypeOption: Optional(true),
                    hasWelcome: Optional(false),
                    id: Optional("id"),
                    listRating: Optional(1),
                    marketingPermissions: Optional(true),
                    modules: Optional([
                        "modules"
                    ]),
                    name: Optional("name"),
                    notifyOnSubscribe: Optional("notify_on_subscribe"),
                    notifyOnUnsubscribe: Optional("notify_on_unsubscribe"),
                    permissionReminder: Optional("permission_reminder"),
                    subscribeUrlLong: Optional("subscribe_url_long"),
                    subscribeUrlShort: Optional("subscribe_url_short"),
                    useArchiveBar: Optional(true),
                    visibility: Optional(SubscriberListVisibility.pub),
                    webId: Optional(1)
                )
            ],
            totalItems: Optional(1)
        )
        let response = try await client.lists.list(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func create1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "beamer_address": "beamer_address",
                  "campaign_defaults": {
                    "from_email": "from_email",
                    "from_name": "from_name",
                    "language": "language",
                    "subject": "subject"
                  },
                  "contact": {
                    "address1": "address1",
                    "address2": "address2",
                    "city": "city",
                    "company": "company",
                    "country": "country",
                    "phone": "phone",
                    "state": "state",
                    "zip": "zip"
                  },
                  "date_created": "2024-01-15T09:30:00Z",
                  "double_optin": true,
                  "email_type_option": true,
                  "has_welcome": false,
                  "id": "id",
                  "list_rating": 1,
                  "marketing_permissions": true,
                  "modules": [
                    "modules"
                  ],
                  "name": "name",
                  "notify_on_subscribe": "notify_on_subscribe",
                  "notify_on_unsubscribe": "notify_on_unsubscribe",
                  "permission_reminder": "permission_reminder",
                  "stats": {
                    "avg_sub_rate": 1.1,
                    "avg_unsub_rate": 1.1,
                    "campaign_count": 1,
                    "campaign_last_sent": "2024-01-15T09:30:00Z",
                    "cleaned_count": 1,
                    "cleaned_count_since_send": 1,
                    "click_rate": 1.1,
                    "last_sub_date": "2024-01-15T09:30:00Z",
                    "last_unsub_date": "2024-01-15T09:30:00Z",
                    "member_count": 1,
                    "member_count_since_send": 1,
                    "merge_field_count": 1,
                    "open_rate": 1.1,
                    "target_sub_rate": 1.1,
                    "total_contacts": 1,
                    "unsubscribe_count": 1,
                    "unsubscribe_count_since_send": 1
                  },
                  "subscribe_url_long": "subscribe_url_long",
                  "subscribe_url_short": "subscribe_url_short",
                  "use_archive_bar": true,
                  "visibility": "pub",
                  "web_id": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SubscriberList(
            links: Optional([
                SubscriberListLinksItem(
                    href: Optional("href"),
                    method: Optional(SubscriberListLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            beamerAddress: Optional("beamer_address"),
            campaignDefaults: Optional(SubscriberListCampaignDefaults(
                fromEmail: Optional("from_email"),
                fromName: Optional("from_name"),
                language: Optional("language"),
                subject: Optional("subject")
            )),
            contact: Optional(SubscriberListContact(
                address1: Optional("address1"),
                address2: Optional("address2"),
                city: Optional("city"),
                company: Optional("company"),
                country: Optional("country"),
                phone: Optional("phone"),
                state: Optional("state"),
                zip: Optional("zip")
            )),
            dateCreated: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            doubleOptin: Optional(true),
            emailTypeOption: Optional(true),
            hasWelcome: Optional(false),
            id: Optional("id"),
            listRating: Optional(1),
            marketingPermissions: Optional(true),
            modules: Optional([
                "modules"
            ]),
            name: Optional("name"),
            notifyOnSubscribe: Optional("notify_on_subscribe"),
            notifyOnUnsubscribe: Optional("notify_on_unsubscribe"),
            permissionReminder: Optional("permission_reminder"),
            stats: Optional(SubscriberListStats(
                avgSubRate: Optional(1.1),
                avgUnsubRate: Optional(1.1),
                campaignCount: Optional(1),
                campaignLastSent: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                cleanedCount: Optional(1),
                cleanedCountSinceSend: Optional(1),
                clickRate: Optional(1.1),
                lastSubDate: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                lastUnsubDate: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                memberCount: Optional(1),
                memberCountSinceSend: Optional(1),
                mergeFieldCount: Optional(1),
                openRate: Optional(1.1),
                targetSubRate: Optional(1.1),
                totalContacts: Optional(1),
                unsubscribeCount: Optional(1),
                unsubscribeCountSinceSend: Optional(1)
            )),
            subscribeUrlLong: Optional("subscribe_url_long"),
            subscribeUrlShort: Optional("subscribe_url_short"),
            useArchiveBar: Optional(true),
            visibility: Optional(SubscriberListVisibility.pub),
            webId: Optional(1)
        )
        let response = try await client.lists.create(
            request: .init(
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
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func get1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "beamer_address": "beamer_address",
                  "campaign_defaults": {
                    "from_email": "from_email",
                    "from_name": "from_name",
                    "language": "language",
                    "subject": "subject"
                  },
                  "contact": {
                    "address1": "address1",
                    "address2": "address2",
                    "city": "city",
                    "company": "company",
                    "country": "country",
                    "phone": "phone",
                    "state": "state",
                    "zip": "zip"
                  },
                  "date_created": "2024-01-15T09:30:00Z",
                  "double_optin": true,
                  "email_type_option": true,
                  "has_welcome": false,
                  "id": "id",
                  "list_rating": 1,
                  "marketing_permissions": true,
                  "modules": [
                    "modules"
                  ],
                  "name": "name",
                  "notify_on_subscribe": "notify_on_subscribe",
                  "notify_on_unsubscribe": "notify_on_unsubscribe",
                  "permission_reminder": "permission_reminder",
                  "stats": {
                    "avg_sub_rate": 1.1,
                    "avg_unsub_rate": 1.1,
                    "campaign_count": 1,
                    "campaign_last_sent": "2024-01-15T09:30:00Z",
                    "cleaned_count": 1,
                    "cleaned_count_since_send": 1,
                    "click_rate": 1.1,
                    "last_sub_date": "2024-01-15T09:30:00Z",
                    "last_unsub_date": "2024-01-15T09:30:00Z",
                    "member_count": 1,
                    "member_count_since_send": 1,
                    "merge_field_count": 1,
                    "open_rate": 1.1,
                    "target_sub_rate": 1.1,
                    "total_contacts": 1,
                    "unsubscribe_count": 1,
                    "unsubscribe_count_since_send": 1
                  },
                  "subscribe_url_long": "subscribe_url_long",
                  "subscribe_url_short": "subscribe_url_short",
                  "use_archive_bar": true,
                  "visibility": "pub",
                  "web_id": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SubscriberList(
            links: Optional([
                SubscriberListLinksItem(
                    href: Optional("href"),
                    method: Optional(SubscriberListLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            beamerAddress: Optional("beamer_address"),
            campaignDefaults: Optional(SubscriberListCampaignDefaults(
                fromEmail: Optional("from_email"),
                fromName: Optional("from_name"),
                language: Optional("language"),
                subject: Optional("subject")
            )),
            contact: Optional(SubscriberListContact(
                address1: Optional("address1"),
                address2: Optional("address2"),
                city: Optional("city"),
                company: Optional("company"),
                country: Optional("country"),
                phone: Optional("phone"),
                state: Optional("state"),
                zip: Optional("zip")
            )),
            dateCreated: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            doubleOptin: Optional(true),
            emailTypeOption: Optional(true),
            hasWelcome: Optional(false),
            id: Optional("id"),
            listRating: Optional(1),
            marketingPermissions: Optional(true),
            modules: Optional([
                "modules"
            ]),
            name: Optional("name"),
            notifyOnSubscribe: Optional("notify_on_subscribe"),
            notifyOnUnsubscribe: Optional("notify_on_unsubscribe"),
            permissionReminder: Optional("permission_reminder"),
            stats: Optional(SubscriberListStats(
                avgSubRate: Optional(1.1),
                avgUnsubRate: Optional(1.1),
                campaignCount: Optional(1),
                campaignLastSent: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                cleanedCount: Optional(1),
                cleanedCountSinceSend: Optional(1),
                clickRate: Optional(1.1),
                lastSubDate: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                lastUnsubDate: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                memberCount: Optional(1),
                memberCountSinceSend: Optional(1),
                mergeFieldCount: Optional(1),
                openRate: Optional(1.1),
                targetSubRate: Optional(1.1),
                totalContacts: Optional(1),
                unsubscribeCount: Optional(1),
                unsubscribeCountSinceSend: Optional(1)
            )),
            subscribeUrlLong: Optional("subscribe_url_long"),
            subscribeUrlShort: Optional("subscribe_url_short"),
            useArchiveBar: Optional(true),
            visibility: Optional(SubscriberListVisibility.pub),
            webId: Optional(1)
        )
        let response = try await client.lists.get(
            listId: "list_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func batchSubscribeOrUnsubscribe1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "error_count": 42,
                  "errors": [
                    {
                      "email_address": "email_address",
                      "error": "error",
                      "error_code": "ERROR_CONTACT_EXISTS",
                      "field": "field",
                      "field_message": "field_message"
                    }
                  ],
                  "new_members": [
                    {
                      "_links": [
                        {}
                      ],
                      "contact_id": "contact_id",
                      "email_address": "email_address",
                      "email_client": "email_client",
                      "email_type": "email_type",
                      "id": "id",
                      "interests": {
                        "key": true
                      },
                      "ip_opt": "ip_opt",
                      "ip_signup": "ip_signup",
                      "language": "language",
                      "last_changed": "2024-01-15T09:30:00Z",
                      "list_id": "list_id",
                      "member_rating": 1,
                      "merge_fields": {
                        "key": "value"
                      },
                      "status": "subscribed",
                      "tags": [
                        {}
                      ],
                      "tags_count": 1,
                      "timestamp_opt": "2024-01-15T09:30:00Z",
                      "timestamp_signup": "2024-01-15T09:30:00Z",
                      "unique_email_id": "unique_email_id",
                      "vip": true
                    }
                  ],
                  "total_created": 42,
                  "total_updated": 42,
                  "updated_members": [
                    {
                      "_links": [
                        {}
                      ],
                      "contact_id": "contact_id",
                      "email_address": "email_address",
                      "email_client": "email_client",
                      "email_type": "email_type",
                      "id": "id",
                      "interests": {
                        "key": true
                      },
                      "ip_opt": "ip_opt",
                      "ip_signup": "ip_signup",
                      "language": "language",
                      "last_changed": "2024-01-15T09:30:00Z",
                      "list_id": "list_id",
                      "member_rating": 1,
                      "merge_fields": {
                        "key": "value"
                      },
                      "status": "subscribed",
                      "tags": [
                        {}
                      ],
                      "tags_count": 1,
                      "timestamp_opt": "2024-01-15T09:30:00Z",
                      "timestamp_signup": "2024-01-15T09:30:00Z",
                      "unique_email_id": "unique_email_id",
                      "vip": true
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = BatchSubscribeOrUnsubscribeListsResponse(
            links: Optional([
                BatchSubscribeOrUnsubscribeListsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(BatchSubscribeOrUnsubscribeListsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            errorCount: Optional(42),
            errors: Optional([
                BatchSubscribeOrUnsubscribeListsResponseErrorsItem(
                    emailAddress: Optional("email_address"),
                    error: Optional("error"),
                    errorCode: Optional(BatchSubscribeOrUnsubscribeListsResponseErrorsItemErrorCode.errorContactExists),
                    field: Optional("field"),
                    fieldMessage: Optional("field_message")
                )
            ]),
            newMembers: Optional([
                ListsPost(
                    links: Optional([
                        ListsPostLinksItem(

                        )
                    ]),
                    contactId: Optional("contact_id"),
                    emailAddress: Optional("email_address"),
                    emailClient: Optional("email_client"),
                    emailType: Optional("email_type"),
                    id: Optional("id"),
                    interests: Optional([
                        "key": true
                    ]),
                    ipOpt: Optional("ip_opt"),
                    ipSignup: Optional("ip_signup"),
                    language: Optional("language"),
                    lastChanged: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    listId: Optional("list_id"),
                    memberRating: Optional(1),
                    mergeFields: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    status: Optional(ListsPostStatus.subscribed),
                    tags: Optional([
                        ListsPostTagsItem(

                        )
                    ]),
                    tagsCount: Optional(1),
                    timestampOpt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    timestampSignup: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    uniqueEmailId: Optional("unique_email_id"),
                    vip: Optional(true)
                )
            ]),
            totalCreated: Optional(42),
            totalUpdated: Optional(42),
            updatedMembers: Optional([
                ListsPost(
                    links: Optional([
                        ListsPostLinksItem(

                        )
                    ]),
                    contactId: Optional("contact_id"),
                    emailAddress: Optional("email_address"),
                    emailClient: Optional("email_client"),
                    emailType: Optional("email_type"),
                    id: Optional("id"),
                    interests: Optional([
                        "key": true
                    ]),
                    ipOpt: Optional("ip_opt"),
                    ipSignup: Optional("ip_signup"),
                    language: Optional("language"),
                    lastChanged: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    listId: Optional("list_id"),
                    memberRating: Optional(1),
                    mergeFields: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    status: Optional(ListsPostStatus.subscribed),
                    tags: Optional([
                        ListsPostTagsItem(

                        )
                    ]),
                    tagsCount: Optional(1),
                    timestampOpt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    timestampSignup: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    uniqueEmailId: Optional("unique_email_id"),
                    vip: Optional(true)
                )
            ])
        )
        let response = try await client.lists.batchSubscribeOrUnsubscribe(
            listId: "list_id",
            request: .init(members: []),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func update1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "beamer_address": "beamer_address",
                  "campaign_defaults": {
                    "from_email": "from_email",
                    "from_name": "from_name",
                    "language": "language",
                    "subject": "subject"
                  },
                  "contact": {
                    "address1": "address1",
                    "address2": "address2",
                    "city": "city",
                    "company": "company",
                    "country": "country",
                    "phone": "phone",
                    "state": "state",
                    "zip": "zip"
                  },
                  "date_created": "2024-01-15T09:30:00Z",
                  "double_optin": true,
                  "email_type_option": true,
                  "has_welcome": false,
                  "id": "id",
                  "list_rating": 1,
                  "marketing_permissions": true,
                  "modules": [
                    "modules"
                  ],
                  "name": "name",
                  "notify_on_subscribe": "notify_on_subscribe",
                  "notify_on_unsubscribe": "notify_on_unsubscribe",
                  "permission_reminder": "permission_reminder",
                  "stats": {
                    "avg_sub_rate": 1.1,
                    "avg_unsub_rate": 1.1,
                    "campaign_count": 1,
                    "campaign_last_sent": "2024-01-15T09:30:00Z",
                    "cleaned_count": 1,
                    "cleaned_count_since_send": 1,
                    "click_rate": 1.1,
                    "last_sub_date": "2024-01-15T09:30:00Z",
                    "last_unsub_date": "2024-01-15T09:30:00Z",
                    "member_count": 1,
                    "member_count_since_send": 1,
                    "merge_field_count": 1,
                    "open_rate": 1.1,
                    "target_sub_rate": 1.1,
                    "total_contacts": 1,
                    "unsubscribe_count": 1,
                    "unsubscribe_count_since_send": 1
                  },
                  "subscribe_url_long": "subscribe_url_long",
                  "subscribe_url_short": "subscribe_url_short",
                  "use_archive_bar": true,
                  "visibility": "pub",
                  "web_id": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SubscriberList(
            links: Optional([
                SubscriberListLinksItem(
                    href: Optional("href"),
                    method: Optional(SubscriberListLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            beamerAddress: Optional("beamer_address"),
            campaignDefaults: Optional(SubscriberListCampaignDefaults(
                fromEmail: Optional("from_email"),
                fromName: Optional("from_name"),
                language: Optional("language"),
                subject: Optional("subject")
            )),
            contact: Optional(SubscriberListContact(
                address1: Optional("address1"),
                address2: Optional("address2"),
                city: Optional("city"),
                company: Optional("company"),
                country: Optional("country"),
                phone: Optional("phone"),
                state: Optional("state"),
                zip: Optional("zip")
            )),
            dateCreated: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            doubleOptin: Optional(true),
            emailTypeOption: Optional(true),
            hasWelcome: Optional(false),
            id: Optional("id"),
            listRating: Optional(1),
            marketingPermissions: Optional(true),
            modules: Optional([
                "modules"
            ]),
            name: Optional("name"),
            notifyOnSubscribe: Optional("notify_on_subscribe"),
            notifyOnUnsubscribe: Optional("notify_on_unsubscribe"),
            permissionReminder: Optional("permission_reminder"),
            stats: Optional(SubscriberListStats(
                avgSubRate: Optional(1.1),
                avgUnsubRate: Optional(1.1),
                campaignCount: Optional(1),
                campaignLastSent: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                cleanedCount: Optional(1),
                cleanedCountSinceSend: Optional(1),
                clickRate: Optional(1.1),
                lastSubDate: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                lastUnsubDate: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                memberCount: Optional(1),
                memberCountSinceSend: Optional(1),
                mergeFieldCount: Optional(1),
                openRate: Optional(1.1),
                targetSubRate: Optional(1.1),
                totalContacts: Optional(1),
                unsubscribeCount: Optional(1),
                unsubscribeCountSinceSend: Optional(1)
            )),
            subscribeUrlLong: Optional("subscribe_url_long"),
            subscribeUrlShort: Optional("subscribe_url_short"),
            useArchiveBar: Optional(true),
            visibility: Optional(SubscriberListVisibility.pub),
            webId: Optional(1)
        )
        let response = try await client.lists.update(
            listId: "list_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listAbuseReports1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "abuse_reports": [
                    {
                      "_links": [
                        {}
                      ],
                      "campaign_id": "campaign_id",
                      "date": "date",
                      "email_address": "email_address",
                      "email_id": "email_id",
                      "id": 1,
                      "list_id": "list_id",
                      "merge_fields": {
                        "key": {
                          "addr1": "addr1",
                          "city": "city",
                          "state": "state",
                          "zip": "zip"
                        }
                      },
                      "vip": true
                    }
                  ],
                  "list_id": "list_id",
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListAbuseReportsListsResponse(
            links: Optional([
                ListAbuseReportsListsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListAbuseReportsListsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            abuseReports: Optional([
                ListsAbuseReports(
                    links: Optional([
                        ListsAbuseReportsLinksItem(

                        )
                    ]),
                    campaignId: Optional("campaign_id"),
                    date: Optional("date"),
                    emailAddress: Optional("email_address"),
                    emailId: Optional("email_id"),
                    id: Optional(1),
                    listId: Optional("list_id"),
                    mergeFields: Optional([
                        "key": ListsAbuseReportsMergeFieldsValue.listsAbuseReportsMergeFieldsValueAddr1(
                            ListsAbuseReportsMergeFieldsValueAddr1(
                                addr1: "addr1",
                                city: "city",
                                state: "state",
                                zip: "zip"
                            )
                        )
                    ]),
                    vip: Optional(true)
                )
            ]),
            listId: Optional("list_id"),
            totalItems: Optional(1)
        )
        let response = try await client.lists.listAbuseReports(
            listId: "list_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getAbuseReport1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "campaign_id": "campaign_id",
                  "date": "date",
                  "email_address": "email_address",
                  "email_id": "email_id",
                  "id": 1,
                  "list_id": "list_id",
                  "merge_fields": {
                    "key": {
                      "addr1": "addr1",
                      "addr2": "addr2",
                      "city": "city",
                      "state": "state",
                      "zip": "zip",
                      "country": "country"
                    }
                  },
                  "vip": true
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListsAbuseReports(
            links: Optional([
                ListsAbuseReportsLinksItem(
                    href: Optional("href"),
                    method: Optional(ListsAbuseReportsLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            campaignId: Optional("campaign_id"),
            date: Optional("date"),
            emailAddress: Optional("email_address"),
            emailId: Optional("email_id"),
            id: Optional(1),
            listId: Optional("list_id"),
            mergeFields: Optional([
                "key": ListsAbuseReportsMergeFieldsValue.listsAbuseReportsMergeFieldsValueAddr1(
                    ListsAbuseReportsMergeFieldsValueAddr1(
                        addr1: "addr1",
                        addr2: Optional("addr2"),
                        city: "city",
                        state: "state",
                        zip: "zip",
                        country: Optional("country")
                    )
                )
            ]),
            vip: Optional(true)
        )
        let response = try await client.lists.getAbuseReport(
            listId: "list_id",
            reportId: "report_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listActivity1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "activity": [
                    {
                      "_links": [
                        {}
                      ],
                      "day": "day",
                      "emails_sent": 1,
                      "hard_bounce": 1,
                      "other_adds": 1,
                      "other_removes": 1,
                      "recipient_clicks": 1,
                      "soft_bounce": 1,
                      "subs": 1,
                      "unique_opens": 1,
                      "unsubs": 1
                    }
                  ],
                  "list_id": "list_id",
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListActivityListsResponse(
            links: Optional([
                ListActivityListsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListActivityListsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            activity: Optional([
                ListActivityListsResponseActivityItem(
                    links: Optional([
                        ListActivityListsResponseActivityItemLinksItem(

                        )
                    ]),
                    day: Optional("day"),
                    emailsSent: Optional(1),
                    hardBounce: Optional(1),
                    otherAdds: Optional(1),
                    otherRemoves: Optional(1),
                    recipientClicks: Optional(1),
                    softBounce: Optional(1),
                    subs: Optional(1),
                    uniqueOpens: Optional(1),
                    unsubs: Optional(1)
                )
            ]),
            listId: Optional("list_id"),
            totalItems: Optional(1)
        )
        let response = try await client.lists.listActivity(
            listId: "list_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listClients1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "clients": [
                    {
                      "client": "client",
                      "members": 1
                    }
                  ],
                  "list_id": "list_id",
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListClientsListsResponse(
            links: Optional([
                ListClientsListsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListClientsListsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            clients: Optional([
                ListClientsListsResponseClientsItem(
                    client: Optional("client"),
                    members: Optional(1)
                )
            ]),
            listId: Optional("list_id"),
            totalItems: Optional(1)
        )
        let response = try await client.lists.listClients(
            listId: "list_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listGrowthHistory1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "history": [
                    {
                      "_links": [
                        {}
                      ],
                      "cleaned": 1,
                      "deleted": 1,
                      "existing": 1,
                      "imports": 1,
                      "list_id": "list_id",
                      "month": "month",
                      "optins": 1,
                      "pending": 1,
                      "reconfirm": 1,
                      "subscribed": 1,
                      "transactional": 1,
                      "unsubscribed": 1
                    }
                  ],
                  "list_id": "list_id",
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListGrowthHistoryListsResponse(
            links: Optional([
                ListGrowthHistoryListsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListGrowthHistoryListsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            history: Optional([
                GrowthHistory(
                    links: Optional([
                        GrowthHistoryLinksItem(

                        )
                    ]),
                    cleaned: Optional(1),
                    deleted: Optional(1),
                    existing: Optional(1),
                    imports: Optional(1),
                    listId: Optional("list_id"),
                    month: Optional("month"),
                    optins: Optional(1),
                    pending: Optional(1),
                    reconfirm: Optional(1),
                    subscribed: Optional(1),
                    transactional: Optional(1),
                    unsubscribed: Optional(1)
                )
            ]),
            listId: Optional("list_id"),
            totalItems: Optional(1)
        )
        let response = try await client.lists.listGrowthHistory(
            listId: "list_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getGrowthHistory1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "cleaned": 1,
                  "deleted": 1,
                  "existing": 1,
                  "imports": 1,
                  "list_id": "list_id",
                  "month": "month",
                  "optins": 1,
                  "pending": 1,
                  "reconfirm": 1,
                  "subscribed": 1,
                  "transactional": 1,
                  "unsubscribed": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = GrowthHistory(
            links: Optional([
                GrowthHistoryLinksItem(
                    href: Optional("href"),
                    method: Optional(GrowthHistoryLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            cleaned: Optional(1),
            deleted: Optional(1),
            existing: Optional(1),
            imports: Optional(1),
            listId: Optional("list_id"),
            month: Optional("month"),
            optins: Optional(1),
            pending: Optional(1),
            reconfirm: Optional(1),
            subscribed: Optional(1),
            transactional: Optional(1),
            unsubscribed: Optional(1)
        )
        let response = try await client.lists.getGrowthHistory(
            listId: "list_id",
            month: "month",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listInterestCategories1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "categories": [
                    {
                      "_links": [
                        {}
                      ],
                      "display_order": 1,
                      "id": "id",
                      "list_id": "list_id",
                      "title": "title",
                      "type": "checkboxes"
                    }
                  ],
                  "list_id": "list_id",
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListInterestCategoriesListsResponse(
            links: Optional([
                ListInterestCategoriesListsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListInterestCategoriesListsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            categories: Optional([
                InterestCategory(
                    links: Optional([
                        InterestCategoryLinksItem(

                        )
                    ]),
                    displayOrder: Optional(1),
                    id: Optional("id"),
                    listId: Optional("list_id"),
                    title: Optional("title"),
                    type: Optional(InterestCategoryType.checkboxes)
                )
            ]),
            listId: Optional("list_id"),
            totalItems: Optional(1)
        )
        let response = try await client.lists.listInterestCategories(
            listId: "list_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createInterestCategory1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "display_order": 1,
                  "id": "id",
                  "list_id": "list_id",
                  "title": "title",
                  "type": "checkboxes"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = InterestCategory(
            links: Optional([
                InterestCategoryLinksItem(
                    href: Optional("href"),
                    method: Optional(InterestCategoryLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            displayOrder: Optional(1),
            id: Optional("id"),
            listId: Optional("list_id"),
            title: Optional("title"),
            type: Optional(InterestCategoryType.checkboxes)
        )
        let response = try await client.lists.createInterestCategory(
            listId: "list_id",
            request: .init(
                title: "title",
                type: .checkboxes
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getInterestCategory1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "display_order": 1,
                  "id": "id",
                  "list_id": "list_id",
                  "title": "title",
                  "type": "checkboxes"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = InterestCategory(
            links: Optional([
                InterestCategoryLinksItem(
                    href: Optional("href"),
                    method: Optional(InterestCategoryLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            displayOrder: Optional(1),
            id: Optional("id"),
            listId: Optional("list_id"),
            title: Optional("title"),
            type: Optional(InterestCategoryType.checkboxes)
        )
        let response = try await client.lists.getInterestCategory(
            listId: "list_id",
            interestCategoryId: "interest_category_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateInterestCategory1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "display_order": 1,
                  "id": "id",
                  "list_id": "list_id",
                  "title": "title",
                  "type": "checkboxes"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = InterestCategory(
            links: Optional([
                InterestCategoryLinksItem(
                    href: Optional("href"),
                    method: Optional(InterestCategoryLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            displayOrder: Optional(1),
            id: Optional("id"),
            listId: Optional("list_id"),
            title: Optional("title"),
            type: Optional(InterestCategoryType.checkboxes)
        )
        let response = try await client.lists.updateInterestCategory(
            listId: "list_id",
            interestCategoryId: "interest_category_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listInterestCategoryInterests1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "category_id": "category_id",
                  "interests": [
                    {
                      "_links": [
                        {}
                      ],
                      "category_id": "category_id",
                      "display_order": 1,
                      "id": "id",
                      "list_id": "list_id",
                      "name": "name",
                      "subscriber_count": "subscriber_count"
                    }
                  ],
                  "list_id": "list_id",
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListInterestCategoryInterestsListsResponse(
            links: Optional([
                ListInterestCategoryInterestsListsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListInterestCategoryInterestsListsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            categoryId: Optional("category_id"),
            interests: Optional([
                Interest(
                    links: Optional([
                        InterestLinksItem(

                        )
                    ]),
                    categoryId: Optional("category_id"),
                    displayOrder: Optional(1),
                    id: Optional("id"),
                    listId: Optional("list_id"),
                    name: Optional("name"),
                    subscriberCount: Optional("subscriber_count")
                )
            ]),
            listId: Optional("list_id"),
            totalItems: Optional(1)
        )
        let response = try await client.lists.listInterestCategoryInterests(
            listId: "list_id",
            interestCategoryId: "interest_category_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createInterestCategoryInterest1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "category_id": "category_id",
                  "display_order": 1,
                  "id": "id",
                  "list_id": "list_id",
                  "name": "name",
                  "subscriber_count": "subscriber_count"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Interest(
            links: Optional([
                InterestLinksItem(
                    href: Optional("href"),
                    method: Optional(InterestLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            categoryId: Optional("category_id"),
            displayOrder: Optional(1),
            id: Optional("id"),
            listId: Optional("list_id"),
            name: Optional("name"),
            subscriberCount: Optional("subscriber_count")
        )
        let response = try await client.lists.createInterestCategoryInterest(
            listId: "list_id",
            interestCategoryId: "interest_category_id",
            request: .init(name: "name"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getInterestCategoryInterest1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "category_id": "category_id",
                  "display_order": 1,
                  "id": "id",
                  "list_id": "list_id",
                  "name": "name",
                  "subscriber_count": "subscriber_count"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Interest(
            links: Optional([
                InterestLinksItem(
                    href: Optional("href"),
                    method: Optional(InterestLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            categoryId: Optional("category_id"),
            displayOrder: Optional(1),
            id: Optional("id"),
            listId: Optional("list_id"),
            name: Optional("name"),
            subscriberCount: Optional("subscriber_count")
        )
        let response = try await client.lists.getInterestCategoryInterest(
            listId: "list_id",
            interestCategoryId: "interest_category_id",
            interestId: "interest_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateInterestCategoryInterest1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "category_id": "category_id",
                  "display_order": 1,
                  "id": "id",
                  "list_id": "list_id",
                  "name": "name",
                  "subscriber_count": "subscriber_count"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Interest(
            links: Optional([
                InterestLinksItem(
                    href: Optional("href"),
                    method: Optional(InterestLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            categoryId: Optional("category_id"),
            displayOrder: Optional(1),
            id: Optional("id"),
            listId: Optional("list_id"),
            name: Optional("name"),
            subscriberCount: Optional("subscriber_count")
        )
        let response = try await client.lists.updateInterestCategoryInterest(
            listId: "list_id",
            interestCategoryId: "interest_category_id",
            interestId: "interest_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listLocations1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "list_id": "list_id",
                  "locations": [
                    {
                      "cc": "cc",
                      "country": "country",
                      "percent": 1.1,
                      "total": 1
                    }
                  ],
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListLocationsListsResponse(
            links: Optional([
                ListLocationsListsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListLocationsListsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            listId: Optional("list_id"),
            locations: Optional([
                ListLocationsListsResponseLocationsItem(
                    cc: Optional("cc"),
                    country: Optional("country"),
                    percent: Optional(1.1),
                    total: Optional(1)
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.lists.listLocations(
            listId: "list_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listMembers1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "list_id": "list_id",
                  "members": [
                    {
                      "_links": [
                        {}
                      ],
                      "consents_to_one_to_one_messaging": true,
                      "contact_id": "contact_id",
                      "email_address": "email_address",
                      "email_client": "email_client",
                      "email_type": {
                        "key": "value"
                      },
                      "id": "id",
                      "interests": {
                        "key": true
                      },
                      "ip_opt": "ip_opt",
                      "ip_signup": "ip_signup",
                      "language": "language",
                      "last_changed": "2024-01-15T09:30:00Z",
                      "list_id": "list_id",
                      "marketing_permissions": [
                        {}
                      ],
                      "member_rating": 1,
                      "merge_fields": {
                        "key": {
                          "addr1": "addr1",
                          "city": "city",
                          "state": "state",
                          "zip": "zip"
                        }
                      },
                      "sms_phone_number": "sms_phone_number",
                      "sms_subscription_last_updated": "sms_subscription_last_updated",
                      "sms_subscription_status": "subscribed",
                      "source": "source",
                      "stats": {
                        "ecommerce_data": {
                          "currency_code": "USD"
                        }
                      },
                      "status": "subscribed",
                      "tags": [
                        {}
                      ],
                      "tags_count": 1,
                      "timestamp_opt": "2024-01-15T09:30:00Z",
                      "timestamp_signup": "2024-01-15T09:30:00Z",
                      "unique_email_id": "unique_email_id",
                      "unsubscribe_reason": "unsubscribe_reason",
                      "vip": true,
                      "web_id": 1
                    }
                  ],
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListMembersListsResponse(
            links: Optional([
                ListMembersListsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListMembersListsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            listId: Optional("list_id"),
            members: Optional([
                ListMembers(
                    links: Optional([
                        ListMembersLinksItem(

                        )
                    ]),
                    consentsToOneToOneMessaging: Optional(true),
                    contactId: Optional("contact_id"),
                    emailAddress: Optional("email_address"),
                    emailClient: Optional("email_client"),
                    emailType: Optional(JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    )),
                    id: Optional("id"),
                    interests: Optional([
                        "key": true
                    ]),
                    ipOpt: Optional("ip_opt"),
                    ipSignup: Optional("ip_signup"),
                    language: Optional("language"),
                    lastChanged: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    listId: Optional("list_id"),
                    marketingPermissions: Optional([
                        ListMembersMarketingPermissionsItem(

                        )
                    ]),
                    memberRating: Optional(1),
                    mergeFields: Optional([
                        "key": ListMembersMergeFieldsValue.listMembersMergeFieldsValueAddr1(
                            ListMembersMergeFieldsValueAddr1(
                                addr1: "addr1",
                                city: "city",
                                state: "state",
                                zip: "zip"
                            )
                        )
                    ]),
                    smsPhoneNumber: Optional("sms_phone_number"),
                    smsSubscriptionLastUpdated: Optional("sms_subscription_last_updated"),
                    smsSubscriptionStatus: Optional(ListMembersSmsSubscriptionStatus.subscribed),
                    source: Optional("source"),
                    stats: Optional(ListMembersStats(
                        ecommerceData: Optional(ListMembersStatsEcommerceData(
                            currencyCode: Optional("USD")
                        ))
                    )),
                    status: Optional(ListMembersStatus.subscribed),
                    tags: Optional([
                        ListMembersTagsItem(

                        )
                    ]),
                    tagsCount: Optional(1),
                    timestampOpt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    timestampSignup: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    uniqueEmailId: Optional("unique_email_id"),
                    unsubscribeReason: Optional("unsubscribe_reason"),
                    vip: Optional(true),
                    webId: Optional(1)
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.lists.listMembers(
            listId: "list_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createMember1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "consents_to_one_to_one_messaging": true,
                  "contact_id": "contact_id",
                  "email_address": "email_address",
                  "email_client": "email_client",
                  "email_type": {
                    "key": "value"
                  },
                  "id": "id",
                  "interests": {
                    "key": true
                  },
                  "ip_opt": "ip_opt",
                  "ip_signup": "ip_signup",
                  "language": "language",
                  "last_changed": "2024-01-15T09:30:00Z",
                  "last_note": {
                    "created_at": "2024-01-15T09:30:00Z",
                    "created_by": "created_by",
                    "note": "note",
                    "note_id": 1
                  },
                  "list_id": "list_id",
                  "location": {
                    "country_code": "country_code",
                    "dstoff": 1,
                    "gmtoff": 1,
                    "latitude": 1.1,
                    "longitude": 1.1,
                    "region": "region",
                    "timezone": "timezone"
                  },
                  "marketing_permissions": [
                    {
                      "enabled": true,
                      "marketing_permission_id": "marketing_permission_id",
                      "text": "text"
                    }
                  ],
                  "member_rating": 1,
                  "merge_fields": {
                    "key": {
                      "addr1": "addr1",
                      "addr2": "addr2",
                      "city": "city",
                      "state": "state",
                      "zip": "zip",
                      "country": "country"
                    }
                  },
                  "sms_phone_number": "sms_phone_number",
                  "sms_subscription_last_updated": "sms_subscription_last_updated",
                  "sms_subscription_status": "subscribed",
                  "source": "source",
                  "stats": {
                    "avg_click_rate": 1.1,
                    "avg_open_rate": 1.1,
                    "ecommerce_data": {
                      "currency_code": "USD",
                      "number_of_orders": 1.1,
                      "total_revenue": 1.1
                    }
                  },
                  "status": "subscribed",
                  "tags": [
                    {
                      "id": 1,
                      "name": "name"
                    }
                  ],
                  "tags_count": 1,
                  "timestamp_opt": "2024-01-15T09:30:00Z",
                  "timestamp_signup": "2024-01-15T09:30:00Z",
                  "unique_email_id": "unique_email_id",
                  "unsubscribe_reason": "unsubscribe_reason",
                  "vip": true,
                  "web_id": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListMembers(
            links: Optional([
                ListMembersLinksItem(
                    href: Optional("href"),
                    method: Optional(ListMembersLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            consentsToOneToOneMessaging: Optional(true),
            contactId: Optional("contact_id"),
            emailAddress: Optional("email_address"),
            emailClient: Optional("email_client"),
            emailType: Optional(JSONValue.object(
                [
                    "key": JSONValue.string("value")
                ]
            )),
            id: Optional("id"),
            interests: Optional([
                "key": true
            ]),
            ipOpt: Optional("ip_opt"),
            ipSignup: Optional("ip_signup"),
            language: Optional("language"),
            lastChanged: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lastNote: Optional(ListMembersLastNote(
                createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                createdBy: Optional("created_by"),
                note: Optional("note"),
                noteId: Optional(1)
            )),
            listId: Optional("list_id"),
            location: Optional(ListMembersLocation(
                countryCode: Optional("country_code"),
                dstoff: Optional(1),
                gmtoff: Optional(1),
                latitude: Optional(1.1),
                longitude: Optional(1.1),
                region: Optional("region"),
                timezone: Optional("timezone")
            )),
            marketingPermissions: Optional([
                ListMembersMarketingPermissionsItem(
                    enabled: Optional(true),
                    marketingPermissionId: Optional("marketing_permission_id"),
                    text: Optional("text")
                )
            ]),
            memberRating: Optional(1),
            mergeFields: Optional([
                "key": ListMembersMergeFieldsValue.listMembersMergeFieldsValueAddr1(
                    ListMembersMergeFieldsValueAddr1(
                        addr1: "addr1",
                        addr2: Optional("addr2"),
                        city: "city",
                        state: "state",
                        zip: "zip",
                        country: Optional("country")
                    )
                )
            ]),
            smsPhoneNumber: Optional("sms_phone_number"),
            smsSubscriptionLastUpdated: Optional("sms_subscription_last_updated"),
            smsSubscriptionStatus: Optional(ListMembersSmsSubscriptionStatus.subscribed),
            source: Optional("source"),
            stats: Optional(ListMembersStats(
                avgClickRate: Optional(1.1),
                avgOpenRate: Optional(1.1),
                ecommerceData: Optional(ListMembersStatsEcommerceData(
                    currencyCode: Optional("USD"),
                    numberOfOrders: Optional(1.1),
                    totalRevenue: Optional(1.1)
                ))
            )),
            status: Optional(ListMembersStatus.subscribed),
            tags: Optional([
                ListMembersTagsItem(
                    id: Optional(1),
                    name: Optional("name")
                )
            ]),
            tagsCount: Optional(1),
            timestampOpt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            timestampSignup: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            uniqueEmailId: Optional("unique_email_id"),
            unsubscribeReason: Optional("unsubscribe_reason"),
            vip: Optional(true),
            webId: Optional(1)
        )
        let response = try await client.lists.createMember(
            listId: "list_id",
            request: .init(
                emailAddress: "email_address",
                status: .subscribed
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getMember1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "consents_to_one_to_one_messaging": true,
                  "contact_id": "contact_id",
                  "email_address": "email_address",
                  "email_client": "email_client",
                  "email_type": {
                    "key": "value"
                  },
                  "id": "id",
                  "interests": {
                    "key": true
                  },
                  "ip_opt": "ip_opt",
                  "ip_signup": "ip_signup",
                  "language": "language",
                  "last_changed": "2024-01-15T09:30:00Z",
                  "last_note": {
                    "created_at": "2024-01-15T09:30:00Z",
                    "created_by": "created_by",
                    "note": "note",
                    "note_id": 1
                  },
                  "list_id": "list_id",
                  "location": {
                    "country_code": "country_code",
                    "dstoff": 1,
                    "gmtoff": 1,
                    "latitude": 1.1,
                    "longitude": 1.1,
                    "region": "region",
                    "timezone": "timezone"
                  },
                  "marketing_permissions": [
                    {
                      "enabled": true,
                      "marketing_permission_id": "marketing_permission_id",
                      "text": "text"
                    }
                  ],
                  "member_rating": 1,
                  "merge_fields": {
                    "key": {
                      "addr1": "addr1",
                      "addr2": "addr2",
                      "city": "city",
                      "state": "state",
                      "zip": "zip",
                      "country": "country"
                    }
                  },
                  "sms_phone_number": "sms_phone_number",
                  "sms_subscription_last_updated": "sms_subscription_last_updated",
                  "sms_subscription_status": "subscribed",
                  "source": "source",
                  "stats": {
                    "avg_click_rate": 1.1,
                    "avg_open_rate": 1.1,
                    "ecommerce_data": {
                      "currency_code": "USD",
                      "number_of_orders": 1.1,
                      "total_revenue": 1.1
                    }
                  },
                  "status": "subscribed",
                  "tags": [
                    {
                      "id": 1,
                      "name": "name"
                    }
                  ],
                  "tags_count": 1,
                  "timestamp_opt": "2024-01-15T09:30:00Z",
                  "timestamp_signup": "2024-01-15T09:30:00Z",
                  "unique_email_id": "unique_email_id",
                  "unsubscribe_reason": "unsubscribe_reason",
                  "vip": true,
                  "web_id": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListMembers(
            links: Optional([
                ListMembersLinksItem(
                    href: Optional("href"),
                    method: Optional(ListMembersLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            consentsToOneToOneMessaging: Optional(true),
            contactId: Optional("contact_id"),
            emailAddress: Optional("email_address"),
            emailClient: Optional("email_client"),
            emailType: Optional(JSONValue.object(
                [
                    "key": JSONValue.string("value")
                ]
            )),
            id: Optional("id"),
            interests: Optional([
                "key": true
            ]),
            ipOpt: Optional("ip_opt"),
            ipSignup: Optional("ip_signup"),
            language: Optional("language"),
            lastChanged: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lastNote: Optional(ListMembersLastNote(
                createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                createdBy: Optional("created_by"),
                note: Optional("note"),
                noteId: Optional(1)
            )),
            listId: Optional("list_id"),
            location: Optional(ListMembersLocation(
                countryCode: Optional("country_code"),
                dstoff: Optional(1),
                gmtoff: Optional(1),
                latitude: Optional(1.1),
                longitude: Optional(1.1),
                region: Optional("region"),
                timezone: Optional("timezone")
            )),
            marketingPermissions: Optional([
                ListMembersMarketingPermissionsItem(
                    enabled: Optional(true),
                    marketingPermissionId: Optional("marketing_permission_id"),
                    text: Optional("text")
                )
            ]),
            memberRating: Optional(1),
            mergeFields: Optional([
                "key": ListMembersMergeFieldsValue.listMembersMergeFieldsValueAddr1(
                    ListMembersMergeFieldsValueAddr1(
                        addr1: "addr1",
                        addr2: Optional("addr2"),
                        city: "city",
                        state: "state",
                        zip: "zip",
                        country: Optional("country")
                    )
                )
            ]),
            smsPhoneNumber: Optional("sms_phone_number"),
            smsSubscriptionLastUpdated: Optional("sms_subscription_last_updated"),
            smsSubscriptionStatus: Optional(ListMembersSmsSubscriptionStatus.subscribed),
            source: Optional("source"),
            stats: Optional(ListMembersStats(
                avgClickRate: Optional(1.1),
                avgOpenRate: Optional(1.1),
                ecommerceData: Optional(ListMembersStatsEcommerceData(
                    currencyCode: Optional("USD"),
                    numberOfOrders: Optional(1.1),
                    totalRevenue: Optional(1.1)
                ))
            )),
            status: Optional(ListMembersStatus.subscribed),
            tags: Optional([
                ListMembersTagsItem(
                    id: Optional(1),
                    name: Optional("name")
                )
            ]),
            tagsCount: Optional(1),
            timestampOpt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            timestampSignup: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            uniqueEmailId: Optional("unique_email_id"),
            unsubscribeReason: Optional("unsubscribe_reason"),
            vip: Optional(true),
            webId: Optional(1)
        )
        let response = try await client.lists.getMember(
            listId: "list_id",
            subscriberHash: "subscriber_hash",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func upsertMember1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "consents_to_one_to_one_messaging": true,
                  "contact_id": "contact_id",
                  "email_address": "email_address",
                  "email_client": "email_client",
                  "email_type": {
                    "key": "value"
                  },
                  "id": "id",
                  "interests": {
                    "key": true
                  },
                  "ip_opt": "ip_opt",
                  "ip_signup": "ip_signup",
                  "language": "language",
                  "last_changed": "2024-01-15T09:30:00Z",
                  "last_note": {
                    "created_at": "2024-01-15T09:30:00Z",
                    "created_by": "created_by",
                    "note": "note",
                    "note_id": 1
                  },
                  "list_id": "list_id",
                  "location": {
                    "country_code": "country_code",
                    "dstoff": 1,
                    "gmtoff": 1,
                    "latitude": 1.1,
                    "longitude": 1.1,
                    "region": "region",
                    "timezone": "timezone"
                  },
                  "marketing_permissions": [
                    {
                      "enabled": true,
                      "marketing_permission_id": "marketing_permission_id",
                      "text": "text"
                    }
                  ],
                  "member_rating": 1,
                  "merge_fields": {
                    "key": {
                      "addr1": "addr1",
                      "addr2": "addr2",
                      "city": "city",
                      "state": "state",
                      "zip": "zip",
                      "country": "country"
                    }
                  },
                  "sms_phone_number": "sms_phone_number",
                  "sms_subscription_last_updated": "sms_subscription_last_updated",
                  "sms_subscription_status": "subscribed",
                  "source": "source",
                  "stats": {
                    "avg_click_rate": 1.1,
                    "avg_open_rate": 1.1,
                    "ecommerce_data": {
                      "currency_code": "USD",
                      "number_of_orders": 1.1,
                      "total_revenue": 1.1
                    }
                  },
                  "status": "subscribed",
                  "tags": [
                    {
                      "id": 1,
                      "name": "name"
                    }
                  ],
                  "tags_count": 1,
                  "timestamp_opt": "2024-01-15T09:30:00Z",
                  "timestamp_signup": "2024-01-15T09:30:00Z",
                  "unique_email_id": "unique_email_id",
                  "unsubscribe_reason": "unsubscribe_reason",
                  "vip": true,
                  "web_id": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListMembers(
            links: Optional([
                ListMembersLinksItem(
                    href: Optional("href"),
                    method: Optional(ListMembersLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            consentsToOneToOneMessaging: Optional(true),
            contactId: Optional("contact_id"),
            emailAddress: Optional("email_address"),
            emailClient: Optional("email_client"),
            emailType: Optional(JSONValue.object(
                [
                    "key": JSONValue.string("value")
                ]
            )),
            id: Optional("id"),
            interests: Optional([
                "key": true
            ]),
            ipOpt: Optional("ip_opt"),
            ipSignup: Optional("ip_signup"),
            language: Optional("language"),
            lastChanged: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lastNote: Optional(ListMembersLastNote(
                createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                createdBy: Optional("created_by"),
                note: Optional("note"),
                noteId: Optional(1)
            )),
            listId: Optional("list_id"),
            location: Optional(ListMembersLocation(
                countryCode: Optional("country_code"),
                dstoff: Optional(1),
                gmtoff: Optional(1),
                latitude: Optional(1.1),
                longitude: Optional(1.1),
                region: Optional("region"),
                timezone: Optional("timezone")
            )),
            marketingPermissions: Optional([
                ListMembersMarketingPermissionsItem(
                    enabled: Optional(true),
                    marketingPermissionId: Optional("marketing_permission_id"),
                    text: Optional("text")
                )
            ]),
            memberRating: Optional(1),
            mergeFields: Optional([
                "key": ListMembersMergeFieldsValue.listMembersMergeFieldsValueAddr1(
                    ListMembersMergeFieldsValueAddr1(
                        addr1: "addr1",
                        addr2: Optional("addr2"),
                        city: "city",
                        state: "state",
                        zip: "zip",
                        country: Optional("country")
                    )
                )
            ]),
            smsPhoneNumber: Optional("sms_phone_number"),
            smsSubscriptionLastUpdated: Optional("sms_subscription_last_updated"),
            smsSubscriptionStatus: Optional(ListMembersSmsSubscriptionStatus.subscribed),
            source: Optional("source"),
            stats: Optional(ListMembersStats(
                avgClickRate: Optional(1.1),
                avgOpenRate: Optional(1.1),
                ecommerceData: Optional(ListMembersStatsEcommerceData(
                    currencyCode: Optional("USD"),
                    numberOfOrders: Optional(1.1),
                    totalRevenue: Optional(1.1)
                ))
            )),
            status: Optional(ListMembersStatus.subscribed),
            tags: Optional([
                ListMembersTagsItem(
                    id: Optional(1),
                    name: Optional("name")
                )
            ]),
            tagsCount: Optional(1),
            timestampOpt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            timestampSignup: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            uniqueEmailId: Optional("unique_email_id"),
            unsubscribeReason: Optional("unsubscribe_reason"),
            vip: Optional(true),
            webId: Optional(1)
        )
        let response = try await client.lists.upsertMember(
            listId: "list_id",
            subscriberHash: "subscriber_hash",
            request: .init(emailAddress: "email_address"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateMember1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "consents_to_one_to_one_messaging": true,
                  "contact_id": "contact_id",
                  "email_address": "email_address",
                  "email_client": "email_client",
                  "email_type": {
                    "key": "value"
                  },
                  "id": "id",
                  "interests": {
                    "key": true
                  },
                  "ip_opt": "ip_opt",
                  "ip_signup": "ip_signup",
                  "language": "language",
                  "last_changed": "2024-01-15T09:30:00Z",
                  "last_note": {
                    "created_at": "2024-01-15T09:30:00Z",
                    "created_by": "created_by",
                    "note": "note",
                    "note_id": 1
                  },
                  "list_id": "list_id",
                  "location": {
                    "country_code": "country_code",
                    "dstoff": 1,
                    "gmtoff": 1,
                    "latitude": 1.1,
                    "longitude": 1.1,
                    "region": "region",
                    "timezone": "timezone"
                  },
                  "marketing_permissions": [
                    {
                      "enabled": true,
                      "marketing_permission_id": "marketing_permission_id",
                      "text": "text"
                    }
                  ],
                  "member_rating": 1,
                  "merge_fields": {
                    "key": {
                      "addr1": "addr1",
                      "addr2": "addr2",
                      "city": "city",
                      "state": "state",
                      "zip": "zip",
                      "country": "country"
                    }
                  },
                  "sms_phone_number": "sms_phone_number",
                  "sms_subscription_last_updated": "sms_subscription_last_updated",
                  "sms_subscription_status": "subscribed",
                  "source": "source",
                  "stats": {
                    "avg_click_rate": 1.1,
                    "avg_open_rate": 1.1,
                    "ecommerce_data": {
                      "currency_code": "USD",
                      "number_of_orders": 1.1,
                      "total_revenue": 1.1
                    }
                  },
                  "status": "subscribed",
                  "tags": [
                    {
                      "id": 1,
                      "name": "name"
                    }
                  ],
                  "tags_count": 1,
                  "timestamp_opt": "2024-01-15T09:30:00Z",
                  "timestamp_signup": "2024-01-15T09:30:00Z",
                  "unique_email_id": "unique_email_id",
                  "unsubscribe_reason": "unsubscribe_reason",
                  "vip": true,
                  "web_id": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListMembers(
            links: Optional([
                ListMembersLinksItem(
                    href: Optional("href"),
                    method: Optional(ListMembersLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            consentsToOneToOneMessaging: Optional(true),
            contactId: Optional("contact_id"),
            emailAddress: Optional("email_address"),
            emailClient: Optional("email_client"),
            emailType: Optional(JSONValue.object(
                [
                    "key": JSONValue.string("value")
                ]
            )),
            id: Optional("id"),
            interests: Optional([
                "key": true
            ]),
            ipOpt: Optional("ip_opt"),
            ipSignup: Optional("ip_signup"),
            language: Optional("language"),
            lastChanged: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lastNote: Optional(ListMembersLastNote(
                createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                createdBy: Optional("created_by"),
                note: Optional("note"),
                noteId: Optional(1)
            )),
            listId: Optional("list_id"),
            location: Optional(ListMembersLocation(
                countryCode: Optional("country_code"),
                dstoff: Optional(1),
                gmtoff: Optional(1),
                latitude: Optional(1.1),
                longitude: Optional(1.1),
                region: Optional("region"),
                timezone: Optional("timezone")
            )),
            marketingPermissions: Optional([
                ListMembersMarketingPermissionsItem(
                    enabled: Optional(true),
                    marketingPermissionId: Optional("marketing_permission_id"),
                    text: Optional("text")
                )
            ]),
            memberRating: Optional(1),
            mergeFields: Optional([
                "key": ListMembersMergeFieldsValue.listMembersMergeFieldsValueAddr1(
                    ListMembersMergeFieldsValueAddr1(
                        addr1: "addr1",
                        addr2: Optional("addr2"),
                        city: "city",
                        state: "state",
                        zip: "zip",
                        country: Optional("country")
                    )
                )
            ]),
            smsPhoneNumber: Optional("sms_phone_number"),
            smsSubscriptionLastUpdated: Optional("sms_subscription_last_updated"),
            smsSubscriptionStatus: Optional(ListMembersSmsSubscriptionStatus.subscribed),
            source: Optional("source"),
            stats: Optional(ListMembersStats(
                avgClickRate: Optional(1.1),
                avgOpenRate: Optional(1.1),
                ecommerceData: Optional(ListMembersStatsEcommerceData(
                    currencyCode: Optional("USD"),
                    numberOfOrders: Optional(1.1),
                    totalRevenue: Optional(1.1)
                ))
            )),
            status: Optional(ListMembersStatus.subscribed),
            tags: Optional([
                ListMembersTagsItem(
                    id: Optional(1),
                    name: Optional("name")
                )
            ]),
            tagsCount: Optional(1),
            timestampOpt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            timestampSignup: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            uniqueEmailId: Optional("unique_email_id"),
            unsubscribeReason: Optional("unsubscribe_reason"),
            vip: Optional(true),
            webId: Optional(1)
        )
        let response = try await client.lists.updateMember(
            listId: "list_id",
            subscriberHash: "subscriber_hash",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listMemberActivity1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "activity": [
                    {
                      "action": "action",
                      "campaign_id": "campaign_id",
                      "parent_campaign": "parent_campaign",
                      "timestamp": "2024-01-15T09:30:00Z",
                      "title": "title",
                      "type": "type",
                      "url": "url"
                    }
                  ],
                  "contact_id": "contact_id",
                  "email_id": "email_id",
                  "list_id": "list_id",
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListMemberActivityListsResponse(
            links: Optional([
                ListMemberActivityListsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListMemberActivityListsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            activity: Optional([
                ListMemberActivityListsResponseActivityItem(
                    action: Optional("action"),
                    campaignId: Optional("campaign_id"),
                    parentCampaign: Optional("parent_campaign"),
                    timestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    title: Optional("title"),
                    type: Optional("type"),
                    url: Optional("url")
                )
            ]),
            contactId: Optional("contact_id"),
            emailId: Optional("email_id"),
            listId: Optional("list_id"),
            totalItems: Optional(1)
        )
        let response = try await client.lists.listMemberActivity(
            listId: "list_id",
            subscriberHash: "subscriber_hash",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listMemberActivityFeed1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "activity": [
                    {
                      "key": "value"
                    }
                  ],
                  "email_id": "email_id",
                  "list_id": "list_id"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListMemberActivityFeedListsResponse(
            links: Optional([
                ListMemberActivityFeedListsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListMemberActivityFeedListsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            activity: Optional([
                JSONValue.object(
                    [
                        "key": JSONValue.string("value")
                    ]
                )
            ]),
            emailId: Optional("email_id"),
            listId: Optional("list_id")
        )
        let response = try await client.lists.listMemberActivityFeed(
            listId: "list_id",
            subscriberHash: "subscriber_hash",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listMemberEvents1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "events": [
                    {
                      "name": "name",
                      "occurred_at": "2024-01-15T09:30:00Z",
                      "properties": {
                        "key": "value"
                      }
                    }
                  ],
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListMemberEventsListsResponse(
            links: Optional([
                ListMemberEventsListsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListMemberEventsListsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            events: Optional([
                ListMemberEventsListsResponseEventsItem(
                    name: Optional("name"),
                    occurredAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    properties: Optional([
                        "key": "value"
                    ])
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.lists.listMemberEvents(
            listId: "list_id",
            subscriberHash: "subscriber_hash",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listMemberGoals1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "email_id": "email_id",
                  "goals": [
                    {
                      "data": "data",
                      "event": "event",
                      "goal_id": 1,
                      "last_visited_at": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "list_id": "list_id",
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListMemberGoalsListsResponse(
            links: Optional([
                ListMemberGoalsListsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListMemberGoalsListsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            emailId: Optional("email_id"),
            goals: Optional([
                ListMemberGoalsListsResponseGoalsItem(
                    data: Optional("data"),
                    event: Optional("event"),
                    goalId: Optional(1),
                    lastVisitedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ]),
            listId: Optional("list_id"),
            totalItems: Optional(1)
        )
        let response = try await client.lists.listMemberGoals(
            listId: "list_id",
            subscriberHash: "subscriber_hash",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listMemberNotes1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "email_id": "email_id",
                  "list_id": "list_id",
                  "notes": [
                    {
                      "_links": [
                        {}
                      ],
                      "contact_id": "contact_id",
                      "created_at": "2024-01-15T09:30:00Z",
                      "created_by": "created_by",
                      "email_id": "email_id",
                      "id": 1,
                      "list_id": "list_id",
                      "note": "note",
                      "updated_at": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListMemberNotesListsResponse(
            links: Optional([
                ListMemberNotesListsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListMemberNotesListsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            emailId: Optional("email_id"),
            listId: Optional("list_id"),
            notes: Optional([
                MemberNotes(
                    links: Optional([
                        MemberNotesLinksItem(

                        )
                    ]),
                    contactId: Optional("contact_id"),
                    createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    createdBy: Optional("created_by"),
                    emailId: Optional("email_id"),
                    id: Optional(1),
                    listId: Optional("list_id"),
                    note: Optional("note"),
                    updatedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.lists.listMemberNotes(
            listId: "list_id",
            subscriberHash: "subscriber_hash",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createMemberNote1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "contact_id": "contact_id",
                  "created_at": "2024-01-15T09:30:00Z",
                  "created_by": "created_by",
                  "email_id": "email_id",
                  "id": 1,
                  "list_id": "list_id",
                  "note": "note",
                  "updated_at": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = MemberNotes(
            links: Optional([
                MemberNotesLinksItem(
                    href: Optional("href"),
                    method: Optional(MemberNotesLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            contactId: Optional("contact_id"),
            createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdBy: Optional("created_by"),
            emailId: Optional("email_id"),
            id: Optional(1),
            listId: Optional("list_id"),
            note: Optional("note"),
            updatedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.lists.createMemberNote(
            listId: "list_id",
            subscriberHash: "subscriber_hash",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getMemberNote1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "contact_id": "contact_id",
                  "created_at": "2024-01-15T09:30:00Z",
                  "created_by": "created_by",
                  "email_id": "email_id",
                  "id": 1,
                  "list_id": "list_id",
                  "note": "note",
                  "updated_at": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = MemberNotes(
            links: Optional([
                MemberNotesLinksItem(
                    href: Optional("href"),
                    method: Optional(MemberNotesLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            contactId: Optional("contact_id"),
            createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdBy: Optional("created_by"),
            emailId: Optional("email_id"),
            id: Optional(1),
            listId: Optional("list_id"),
            note: Optional("note"),
            updatedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.lists.getMemberNote(
            listId: "list_id",
            subscriberHash: "subscriber_hash",
            noteId: "note_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateMemberNote1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "contact_id": "contact_id",
                  "created_at": "2024-01-15T09:30:00Z",
                  "created_by": "created_by",
                  "email_id": "email_id",
                  "id": 1,
                  "list_id": "list_id",
                  "note": "note",
                  "updated_at": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = MemberNotes(
            links: Optional([
                MemberNotesLinksItem(
                    href: Optional("href"),
                    method: Optional(MemberNotesLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            contactId: Optional("contact_id"),
            createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdBy: Optional("created_by"),
            emailId: Optional("email_id"),
            id: Optional(1),
            listId: Optional("list_id"),
            note: Optional("note"),
            updatedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.lists.updateMemberNote(
            listId: "list_id",
            subscriberHash: "subscriber_hash",
            noteId: "note_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listMemberTags1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "tags": [
                    {
                      "date_added": "2024-01-15T09:30:00Z",
                      "id": 1,
                      "name": "name"
                    }
                  ],
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListMemberTagsListsResponse(
            links: Optional([
                ListMemberTagsListsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListMemberTagsListsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            tags: Optional([
                ListMemberTagsListsResponseTagsItem(
                    dateAdded: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    id: Optional(1),
                    name: Optional("name")
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.lists.listMemberTags(
            listId: "list_id",
            subscriberHash: "subscriber_hash",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listMergeFields1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "list_id": "list_id",
                  "merge_field_limit": 30,
                  "merge_fields": [
                    {
                      "_links": [
                        {}
                      ],
                      "default_value": "default_value",
                      "display_order": 1,
                      "help_text": "help_text",
                      "list_id": "list_id",
                      "merge_field_limit": 30,
                      "merge_id": 1,
                      "name": "name",
                      "options": {
                        "choices": [
                          "First Choice",
                          "Second Choice",
                          "Third Choice"
                        ]
                      },
                      "public": true,
                      "required": true,
                      "tag": "tag",
                      "total_items": 28,
                      "type": "text"
                    }
                  ],
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListMergeFieldsListsResponse(
            links: Optional([
                ListMergeFieldsListsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListMergeFieldsListsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            listId: Optional("list_id"),
            mergeFieldLimit: Optional(30),
            mergeFields: Optional([
                MergeField(
                    links: Optional([
                        MergeFieldLinksItem(

                        )
                    ]),
                    defaultValue: Optional("default_value"),
                    displayOrder: Optional(1),
                    helpText: Optional("help_text"),
                    listId: Optional("list_id"),
                    mergeFieldLimit: Optional(30),
                    mergeId: Optional(1),
                    name: Optional("name"),
                    options: Optional(MergeFieldOptions(
                        choices: Optional([
                            "First Choice",
                            "Second Choice",
                            "Third Choice"
                        ])
                    )),
                    public: Optional(true),
                    required: Optional(true),
                    tag: Optional("tag"),
                    totalItems: Optional(28),
                    type: Optional(MergeFieldType.text)
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.lists.listMergeFields(
            listId: "list_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createMergeField1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "default_value": "default_value",
                  "display_order": 1,
                  "help_text": "help_text",
                  "list_id": "list_id",
                  "merge_field_limit": 30,
                  "merge_id": 1,
                  "name": "name",
                  "options": {
                    "choices": [
                      "First Choice",
                      "Second Choice",
                      "Third Choice"
                    ],
                    "date_format": "date_format",
                    "default_country": 1,
                    "phone_format": "phone_format",
                    "size": 1
                  },
                  "public": true,
                  "required": true,
                  "tag": "tag",
                  "total_items": 28,
                  "type": "text"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = MergeField(
            links: Optional([
                MergeFieldLinksItem(
                    href: Optional("href"),
                    method: Optional(MergeFieldLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            defaultValue: Optional("default_value"),
            displayOrder: Optional(1),
            helpText: Optional("help_text"),
            listId: Optional("list_id"),
            mergeFieldLimit: Optional(30),
            mergeId: Optional(1),
            name: Optional("name"),
            options: Optional(MergeFieldOptions(
                choices: Optional([
                    "First Choice",
                    "Second Choice",
                    "Third Choice"
                ]),
                dateFormat: Optional("date_format"),
                defaultCountry: Optional(1),
                phoneFormat: Optional("phone_format"),
                size: Optional(1)
            )),
            public: Optional(true),
            required: Optional(true),
            tag: Optional("tag"),
            totalItems: Optional(28),
            type: Optional(MergeFieldType.text)
        )
        let response = try await client.lists.createMergeField(
            listId: "list_id",
            request: .init(
                name: "name",
                type: .text
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getMergeField1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "default_value": "default_value",
                  "display_order": 1,
                  "help_text": "help_text",
                  "list_id": "list_id",
                  "merge_field_limit": 30,
                  "merge_id": 1,
                  "name": "name",
                  "options": {
                    "choices": [
                      "First Choice",
                      "Second Choice",
                      "Third Choice"
                    ],
                    "date_format": "date_format",
                    "default_country": 1,
                    "phone_format": "phone_format",
                    "size": 1
                  },
                  "public": true,
                  "required": true,
                  "tag": "tag",
                  "total_items": 28,
                  "type": "text"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = MergeField(
            links: Optional([
                MergeFieldLinksItem(
                    href: Optional("href"),
                    method: Optional(MergeFieldLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            defaultValue: Optional("default_value"),
            displayOrder: Optional(1),
            helpText: Optional("help_text"),
            listId: Optional("list_id"),
            mergeFieldLimit: Optional(30),
            mergeId: Optional(1),
            name: Optional("name"),
            options: Optional(MergeFieldOptions(
                choices: Optional([
                    "First Choice",
                    "Second Choice",
                    "Third Choice"
                ]),
                dateFormat: Optional("date_format"),
                defaultCountry: Optional(1),
                phoneFormat: Optional("phone_format"),
                size: Optional(1)
            )),
            public: Optional(true),
            required: Optional(true),
            tag: Optional("tag"),
            totalItems: Optional(28),
            type: Optional(MergeFieldType.text)
        )
        let response = try await client.lists.getMergeField(
            listId: "list_id",
            mergeId: "merge_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateMergeField1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "default_value": "default_value",
                  "display_order": 1,
                  "help_text": "help_text",
                  "list_id": "list_id",
                  "merge_field_limit": 30,
                  "merge_id": 1,
                  "name": "name",
                  "options": {
                    "choices": [
                      "First Choice",
                      "Second Choice",
                      "Third Choice"
                    ],
                    "date_format": "date_format",
                    "default_country": 1,
                    "phone_format": "phone_format",
                    "size": 1
                  },
                  "public": true,
                  "required": true,
                  "tag": "tag",
                  "total_items": 28,
                  "type": "text"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = MergeField(
            links: Optional([
                MergeFieldLinksItem(
                    href: Optional("href"),
                    method: Optional(MergeFieldLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            defaultValue: Optional("default_value"),
            displayOrder: Optional(1),
            helpText: Optional("help_text"),
            listId: Optional("list_id"),
            mergeFieldLimit: Optional(30),
            mergeId: Optional(1),
            name: Optional("name"),
            options: Optional(MergeFieldOptions(
                choices: Optional([
                    "First Choice",
                    "Second Choice",
                    "Third Choice"
                ]),
                dateFormat: Optional("date_format"),
                defaultCountry: Optional(1),
                phoneFormat: Optional("phone_format"),
                size: Optional(1)
            )),
            public: Optional(true),
            required: Optional(true),
            tag: Optional("tag"),
            totalItems: Optional(28),
            type: Optional(MergeFieldType.text)
        )
        let response = try await client.lists.updateMergeField(
            listId: "list_id",
            mergeId: "merge_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listSegments1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "list_id": "list_id",
                  "segments": [
                    {
                      "_links": [
                        {}
                      ],
                      "created_at": "2024-01-15T09:30:00Z",
                      "id": 1,
                      "list_id": "list_id",
                      "member_count": 1,
                      "name": "name",
                      "options": {
                        "conditions": [
                          {
                            "value": "any",
                            "condition_type": "Aim"
                          }
                        ]
                      },
                      "type": "saved",
                      "updated_at": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListSegmentsListsResponse(
            links: Optional([
                ListSegmentsListsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListSegmentsListsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            listId: Optional("list_id"),
            segments: Optional([
                List(
                    links: Optional([
                        ListLinksItem(

                        )
                    ]),
                    createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    id: Optional(1),
                    listId: Optional("list_id"),
                    memberCount: Optional(1),
                    name: Optional("name"),
                    options: Optional(ListOptions(
                        conditions: Optional([
                            SegmentTypeItem.aim(
                                .init(
                                    value: Optional("any"),
                                    additionalProperties: [
                                        "condition_type": JSONValue.string("Aim")
                                    ]
                                )
                            )
                        ])
                    )),
                    type: Optional(ListType.saved),
                    updatedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.lists.listSegments(
            listId: "list_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createSegment1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "created_at": "2024-01-15T09:30:00Z",
                  "id": 1,
                  "list_id": "list_id",
                  "member_count": 1,
                  "name": "name",
                  "options": {
                    "conditions": [
                      {
                        "value": "any",
                        "condition_type": "Aim"
                      }
                    ],
                    "match": "any"
                  },
                  "type": "saved",
                  "updated_at": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = List(
            links: Optional([
                ListLinksItem(
                    href: Optional("href"),
                    method: Optional(ListLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            id: Optional(1),
            listId: Optional("list_id"),
            memberCount: Optional(1),
            name: Optional("name"),
            options: Optional(ListOptions(
                conditions: Optional([
                    SegmentTypeItem.aim(
                        .init(
                            value: Optional("any"),
                            additionalProperties: [
                                "condition_type": JSONValue.string("Aim")
                            ]
                        )
                    )
                ]),
                match: Optional(ListOptionsMatch.any)
            )),
            type: Optional(ListType.saved),
            updatedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.lists.createSegment(
            listId: "list_id",
            request: .init(name: "name"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getSegment1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "created_at": "2024-01-15T09:30:00Z",
                  "id": 1,
                  "list_id": "list_id",
                  "member_count": 1,
                  "name": "name",
                  "options": {
                    "conditions": [
                      {
                        "value": "any",
                        "condition_type": "Aim"
                      }
                    ],
                    "match": "any"
                  },
                  "type": "saved",
                  "updated_at": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = List(
            links: Optional([
                ListLinksItem(
                    href: Optional("href"),
                    method: Optional(ListLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            id: Optional(1),
            listId: Optional("list_id"),
            memberCount: Optional(1),
            name: Optional("name"),
            options: Optional(ListOptions(
                conditions: Optional([
                    SegmentTypeItem.aim(
                        .init(
                            value: Optional("any"),
                            additionalProperties: [
                                "condition_type": JSONValue.string("Aim")
                            ]
                        )
                    )
                ]),
                match: Optional(ListOptionsMatch.any)
            )),
            type: Optional(ListType.saved),
            updatedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.lists.getSegment(
            listId: "list_id",
            segmentId: "segment_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func batchAddOrRemoveMembers1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "error_count": 42,
                  "errors": [
                    {
                      "email_addresses": [
                        "email_addresses"
                      ],
                      "error": "error"
                    }
                  ],
                  "members_added": [
                    {
                      "_links": [
                        {}
                      ],
                      "contact_id": "contact_id",
                      "email_address": "email_address",
                      "email_client": "email_client",
                      "email_type": "email_type",
                      "id": "id",
                      "interests": {
                        "key": true
                      },
                      "ip_opt": "ip_opt",
                      "ip_signup": "ip_signup",
                      "language": "language",
                      "last_changed": "2024-01-15T09:30:00Z",
                      "list_id": "list_id",
                      "member_rating": 1,
                      "merge_fields": {
                        "key": "value"
                      },
                      "status": "subscribed",
                      "tags": [
                        {}
                      ],
                      "tags_count": 1,
                      "timestamp_opt": "2024-01-15T09:30:00Z",
                      "timestamp_signup": "2024-01-15T09:30:00Z",
                      "unique_email_id": "unique_email_id",
                      "vip": true
                    }
                  ],
                  "members_removed": [
                    {
                      "_links": [
                        {}
                      ],
                      "contact_id": "contact_id",
                      "email_address": "email_address",
                      "email_client": "email_client",
                      "email_type": "email_type",
                      "id": "id",
                      "interests": {
                        "key": true
                      },
                      "ip_opt": "ip_opt",
                      "ip_signup": "ip_signup",
                      "language": "language",
                      "last_changed": "2024-01-15T09:30:00Z",
                      "list_id": "list_id",
                      "member_rating": 1,
                      "merge_fields": {
                        "key": "value"
                      },
                      "status": "subscribed",
                      "tags": [
                        {}
                      ],
                      "tags_count": 1,
                      "timestamp_opt": "2024-01-15T09:30:00Z",
                      "timestamp_signup": "2024-01-15T09:30:00Z",
                      "unique_email_id": "unique_email_id",
                      "vip": true
                    }
                  ],
                  "total_added": 42,
                  "total_removed": 42
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = BatchAddOrRemoveMembersListsResponse(
            links: Optional([
                BatchAddOrRemoveMembersListsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(BatchAddOrRemoveMembersListsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            errorCount: Optional(42),
            errors: Optional([
                BatchAddOrRemoveMembersListsResponseErrorsItem(
                    emailAddresses: Optional([
                        "email_addresses"
                    ]),
                    error: Optional("error")
                )
            ]),
            membersAdded: Optional([
                ListsPost(
                    links: Optional([
                        ListsPostLinksItem(

                        )
                    ]),
                    contactId: Optional("contact_id"),
                    emailAddress: Optional("email_address"),
                    emailClient: Optional("email_client"),
                    emailType: Optional("email_type"),
                    id: Optional("id"),
                    interests: Optional([
                        "key": true
                    ]),
                    ipOpt: Optional("ip_opt"),
                    ipSignup: Optional("ip_signup"),
                    language: Optional("language"),
                    lastChanged: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    listId: Optional("list_id"),
                    memberRating: Optional(1),
                    mergeFields: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    status: Optional(ListsPostStatus.subscribed),
                    tags: Optional([
                        ListsPostTagsItem(

                        )
                    ]),
                    tagsCount: Optional(1),
                    timestampOpt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    timestampSignup: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    uniqueEmailId: Optional("unique_email_id"),
                    vip: Optional(true)
                )
            ]),
            membersRemoved: Optional([
                ListsPost(
                    links: Optional([
                        ListsPostLinksItem(

                        )
                    ]),
                    contactId: Optional("contact_id"),
                    emailAddress: Optional("email_address"),
                    emailClient: Optional("email_client"),
                    emailType: Optional("email_type"),
                    id: Optional("id"),
                    interests: Optional([
                        "key": true
                    ]),
                    ipOpt: Optional("ip_opt"),
                    ipSignup: Optional("ip_signup"),
                    language: Optional("language"),
                    lastChanged: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    listId: Optional("list_id"),
                    memberRating: Optional(1),
                    mergeFields: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    status: Optional(ListsPostStatus.subscribed),
                    tags: Optional([
                        ListsPostTagsItem(

                        )
                    ]),
                    tagsCount: Optional(1),
                    timestampOpt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    timestampSignup: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    uniqueEmailId: Optional("unique_email_id"),
                    vip: Optional(true)
                )
            ]),
            totalAdded: Optional(42),
            totalRemoved: Optional(42)
        )
        let response = try await client.lists.batchAddOrRemoveMembers(
            listId: "list_id",
            segmentId: "segment_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateSegment1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "created_at": "2024-01-15T09:30:00Z",
                  "id": 1,
                  "list_id": "list_id",
                  "member_count": 1,
                  "name": "name",
                  "options": {
                    "conditions": [
                      {
                        "value": "any",
                        "condition_type": "Aim"
                      }
                    ],
                    "match": "any"
                  },
                  "type": "saved",
                  "updated_at": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = List(
            links: Optional([
                ListLinksItem(
                    href: Optional("href"),
                    method: Optional(ListLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            id: Optional(1),
            listId: Optional("list_id"),
            memberCount: Optional(1),
            name: Optional("name"),
            options: Optional(ListOptions(
                conditions: Optional([
                    SegmentTypeItem.aim(
                        .init(
                            value: Optional("any"),
                            additionalProperties: [
                                "condition_type": JSONValue.string("Aim")
                            ]
                        )
                    )
                ]),
                match: Optional(ListOptionsMatch.any)
            )),
            type: Optional(ListType.saved),
            updatedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.lists.updateSegment(
            listId: "list_id",
            segmentId: "segment_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listSegmentMembers1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "members": [
                    {
                      "_links": [
                        {}
                      ],
                      "email_address": "email_address",
                      "email_client": "email_client",
                      "email_type": "email_type",
                      "full_name": "full_name",
                      "id": "id",
                      "interests": {
                        "key": true
                      },
                      "ip_opt": "ip_opt",
                      "ip_signup": "ip_signup",
                      "language": "language",
                      "last_changed": "2024-01-15T09:30:00Z",
                      "list_id": "list_id",
                      "member_rating": 1,
                      "merge_fields": {
                        "key": {
                          "addr1": "addr1",
                          "city": "city",
                          "state": "state",
                          "zip": "zip"
                        }
                      },
                      "status": "subscribed",
                      "timestamp_opt": "2024-01-15T09:30:00Z",
                      "timestamp_signup": "2024-01-15T09:30:00Z",
                      "unique_email_id": "unique_email_id",
                      "vip": true
                    }
                  ],
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListSegmentMembersListsResponse(
            links: Optional([
                ListSegmentMembersListsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListSegmentMembersListsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            members: Optional([
                ListsSegmentsMembers(
                    links: Optional([
                        ListsSegmentsMembersLinksItem(

                        )
                    ]),
                    emailAddress: Optional("email_address"),
                    emailClient: Optional("email_client"),
                    emailType: Optional("email_type"),
                    fullName: Optional("full_name"),
                    id: Optional("id"),
                    interests: Optional([
                        "key": true
                    ]),
                    ipOpt: Optional("ip_opt"),
                    ipSignup: Optional("ip_signup"),
                    language: Optional("language"),
                    lastChanged: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    listId: Optional("list_id"),
                    memberRating: Optional(1),
                    mergeFields: Optional([
                        "key": ListsSegmentsMembersMergeFieldsValue.listsSegmentsMembersMergeFieldsValueAddr1(
                            ListsSegmentsMembersMergeFieldsValueAddr1(
                                addr1: "addr1",
                                city: "city",
                                state: "state",
                                zip: "zip"
                            )
                        )
                    ]),
                    status: Optional(ListsSegmentsMembersStatus.subscribed),
                    timestampOpt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    timestampSignup: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    uniqueEmailId: Optional("unique_email_id"),
                    vip: Optional(true)
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.lists.listSegmentMembers(
            listId: "list_id",
            segmentId: "segment_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createSegmentMember1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "email_address": "email_address",
                  "email_client": "email_client",
                  "email_type": "email_type",
                  "full_name": "full_name",
                  "id": "id",
                  "interests": {
                    "key": true
                  },
                  "ip_opt": "ip_opt",
                  "ip_signup": "ip_signup",
                  "language": "language",
                  "last_changed": "2024-01-15T09:30:00Z",
                  "last_note": {
                    "created_at": "2024-01-15T09:30:00Z",
                    "created_by": "created_by",
                    "note": "note",
                    "note_id": 1
                  },
                  "list_id": "list_id",
                  "location": {
                    "country_code": "country_code",
                    "dstoff": 1,
                    "gmtoff": 1,
                    "latitude": 1.1,
                    "longitude": 1.1,
                    "timezone": "timezone"
                  },
                  "member_rating": 1,
                  "merge_fields": {
                    "key": {
                      "addr1": "addr1",
                      "addr2": "addr2",
                      "city": "city",
                      "state": "state",
                      "zip": "zip",
                      "country": "country"
                    }
                  },
                  "stats": {
                    "avg_click_rate": 1.1,
                    "avg_open_rate": 1.1
                  },
                  "status": "subscribed",
                  "timestamp_opt": "2024-01-15T09:30:00Z",
                  "timestamp_signup": "2024-01-15T09:30:00Z",
                  "unique_email_id": "unique_email_id",
                  "vip": true
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListsSegmentsMembers(
            links: Optional([
                ListsSegmentsMembersLinksItem(
                    href: Optional("href"),
                    method: Optional(ListsSegmentsMembersLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            emailAddress: Optional("email_address"),
            emailClient: Optional("email_client"),
            emailType: Optional("email_type"),
            fullName: Optional("full_name"),
            id: Optional("id"),
            interests: Optional([
                "key": true
            ]),
            ipOpt: Optional("ip_opt"),
            ipSignup: Optional("ip_signup"),
            language: Optional("language"),
            lastChanged: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lastNote: Optional(ListsSegmentsMembersLastNote(
                createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                createdBy: Optional("created_by"),
                note: Optional("note"),
                noteId: Optional(1)
            )),
            listId: Optional("list_id"),
            location: Optional(ListsSegmentsMembersLocation(
                countryCode: Optional("country_code"),
                dstoff: Optional(1),
                gmtoff: Optional(1),
                latitude: Optional(1.1),
                longitude: Optional(1.1),
                timezone: Optional("timezone")
            )),
            memberRating: Optional(1),
            mergeFields: Optional([
                "key": ListsSegmentsMembersMergeFieldsValue.listsSegmentsMembersMergeFieldsValueAddr1(
                    ListsSegmentsMembersMergeFieldsValueAddr1(
                        addr1: "addr1",
                        addr2: Optional("addr2"),
                        city: "city",
                        state: "state",
                        zip: "zip",
                        country: Optional("country")
                    )
                )
            ]),
            stats: Optional(ListsSegmentsMembersStats(
                avgClickRate: Optional(1.1),
                avgOpenRate: Optional(1.1)
            )),
            status: Optional(ListsSegmentsMembersStatus.subscribed),
            timestampOpt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            timestampSignup: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            uniqueEmailId: Optional("unique_email_id"),
            vip: Optional(true)
        )
        let response = try await client.lists.createSegmentMember(
            listId: "list_id",
            segmentId: "segment_id",
            request: .init(emailAddress: "email_address"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listSignupForms1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "list_id": "list_id",
                  "signup_forms": [
                    {
                      "_links": [
                        {}
                      ],
                      "contents": [
                        {
                          "value": "Signup message goes here"
                        }
                      ],
                      "header": {
                        "image_alt": "This is an image",
                        "image_border_color": "#896d6d",
                        "image_border_width": "2",
                        "image_height": "200",
                        "image_link": "gotothisimage.com",
                        "image_url": "http://gallery.mailchimp.com/332310cb9a420a9e7fea2858a/images/2491208c-9458-4834-a708-fef4ee736472.png",
                        "image_width": "800",
                        "text": "Header Text goes here"
                      },
                      "list_id": "4ca5becb8d",
                      "signup_form_url": "signup_form_url",
                      "styles": [
                        {
                          "options": [
                            {
                              "property": "background-color",
                              "value": "#111111"
                            }
                          ]
                        }
                      ]
                    }
                  ],
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListSignupFormsListsResponse(
            links: Optional([
                ListSignupFormsListsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListSignupFormsListsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            listId: Optional("list_id"),
            signupForms: Optional([
                SignupForm(
                    links: Optional([
                        SignupFormLinksItem(

                        )
                    ]),
                    contents: Optional([
                        SignupFormContentsItem(
                            value: Optional("Signup message goes here")
                        )
                    ]),
                    header: Optional(SignupFormHeader(
                        imageAlt: Optional("This is an image"),
                        imageBorderColor: Optional("#896d6d"),
                        imageBorderWidth: Optional("2"),
                        imageHeight: Optional("200"),
                        imageLink: Optional("gotothisimage.com"),
                        imageUrl: Optional("http://gallery.mailchimp.com/332310cb9a420a9e7fea2858a/images/2491208c-9458-4834-a708-fef4ee736472.png"),
                        imageWidth: Optional("800"),
                        text: Optional("Header Text goes here")
                    )),
                    listId: Optional("4ca5becb8d"),
                    signupFormUrl: Optional("signup_form_url"),
                    styles: Optional([
                        SignupFormStylesItem(
                            options: Optional([
                                SignupFormStylesItemOptionsItem(
                                    property: Optional("background-color"),
                                    value: Optional("#111111")
                                )
                            ])
                        )
                    ])
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.lists.listSignupForms(
            listId: "list_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createSignupForm1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "contents": [
                    {
                      "section": "signup_message",
                      "value": "Signup message goes here"
                    }
                  ],
                  "header": {
                    "image_align": "none",
                    "image_alt": "This is an image",
                    "image_border_color": "#896d6d",
                    "image_border_style": "none",
                    "image_border_width": "2",
                    "image_height": "200",
                    "image_link": "gotothisimage.com",
                    "image_target": "_blank",
                    "image_url": "http://gallery.mailchimp.com/332310cb9a420a9e7fea2858a/images/2491208c-9458-4834-a708-fef4ee736472.png",
                    "image_width": "800",
                    "text": "Header Text goes here"
                  },
                  "list_id": "4ca5becb8d",
                  "signup_form_url": "signup_form_url",
                  "styles": [
                    {
                      "options": [
                        {
                          "property": "background-color",
                          "value": "#111111"
                        }
                      ],
                      "selector": "page_background"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SignupForm(
            links: Optional([
                SignupFormLinksItem(
                    href: Optional("href"),
                    method: Optional(SignupFormLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            contents: Optional([
                SignupFormContentsItem(
                    section: Optional(SignupFormContentsItemSection.signupMessage),
                    value: Optional("Signup message goes here")
                )
            ]),
            header: Optional(SignupFormHeader(
                imageAlign: Optional(SignupFormHeaderImageAlign.none),
                imageAlt: Optional("This is an image"),
                imageBorderColor: Optional("#896d6d"),
                imageBorderStyle: Optional(SignupFormHeaderImageBorderStyle.none),
                imageBorderWidth: Optional("2"),
                imageHeight: Optional("200"),
                imageLink: Optional("gotothisimage.com"),
                imageTarget: Optional(SignupFormHeaderImageTarget.blank),
                imageUrl: Optional("http://gallery.mailchimp.com/332310cb9a420a9e7fea2858a/images/2491208c-9458-4834-a708-fef4ee736472.png"),
                imageWidth: Optional("800"),
                text: Optional("Header Text goes here")
            )),
            listId: Optional("4ca5becb8d"),
            signupFormUrl: Optional("signup_form_url"),
            styles: Optional([
                SignupFormStylesItem(
                    options: Optional([
                        SignupFormStylesItemOptionsItem(
                            property: Optional("background-color"),
                            value: Optional("#111111")
                        )
                    ]),
                    selector: Optional(SignupFormStylesItemSelector.pageBackground)
                )
            ])
        )
        let response = try await client.lists.createSignupForm(
            listId: "list_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listSurveys1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "key": "value"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = JSONValue.object(
            [
                "key": JSONValue.string("value")
            ]
        )
        let response = try await client.lists.listSurveys(
            listId: "list_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createSurvey1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "key": "value"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = JSONValue.object(
            [
                "key": JSONValue.string("value")
            ]
        )
        let response = try await client.lists.createSurvey(
            listId: "list_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getSurvey1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "key": "value"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = JSONValue.object(
            [
                "key": JSONValue.string("value")
            ]
        )
        let response = try await client.lists.getSurvey(
            listId: "list_id",
            surveyId: "survey_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateSurvey1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "key": "value"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = JSONValue.object(
            [
                "key": JSONValue.string("value")
            ]
        )
        let response = try await client.lists.updateSurvey(
            listId: "list_id",
            surveyId: "survey_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createListSurveyActionReplicate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "key": "value"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = JSONValue.object(
            [
                "key": JSONValue.string("value")
            ]
        )
        let response = try await client.lists.createListSurveyActionReplicate(
            listIdPathParam: "list_id",
            surveyId: "survey_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listTagSearch1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "tags": [
                    {
                      "id": 1,
                      "name": "name"
                    }
                  ],
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListTagSearchListsResponse(
            tags: Optional([
                ListTagSearchListsResponseTagsItem(
                    id: Optional(1),
                    name: Optional("name")
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.lists.listTagSearch(
            listId: "list_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listWebhooks1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "list_id": "list_id",
                  "total_items": 1,
                  "webhooks": [
                    {
                      "_links": [
                        {}
                      ],
                      "events": {
                        "campaign": true,
                        "cleaned": true,
                        "profile": true,
                        "subscribe": true,
                        "unsubscribe": true,
                        "upemail": true,
                        "sms_subscribe": true,
                        "sms_unsubscribe": true,
                        "upsms": true,
                        "sms_campaign": true
                      },
                      "id": "5d9a5e3f7b",
                      "list_id": "4ca5becb8d",
                      "signing_enabled": true,
                      "signing_secret": "zI3tsLziqBWhlz6V4PRlGg41u0gdhu7LhYXX4wa0ARM",
                      "sources": {
                        "admin": true,
                        "api": true,
                        "user": true
                      },
                      "url": "http://yourdomain.com/webhook"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListWebhooksListsResponse(
            links: Optional([
                ListWebhooksListsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListWebhooksListsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            listId: Optional("list_id"),
            totalItems: Optional(1),
            webhooks: Optional([
                ListWebhooks(
                    links: Optional([
                        ListWebhooksLinksItem(

                        )
                    ]),
                    events: Optional(ListWebhooksEvents(
                        campaign: Optional(true),
                        cleaned: Optional(true),
                        profile: Optional(true),
                        subscribe: Optional(true),
                        unsubscribe: Optional(true),
                        upemail: Optional(true),
                        smsSubscribe: Optional(true),
                        smsUnsubscribe: Optional(true),
                        upsms: Optional(true),
                        smsCampaign: Optional(true)
                    )),
                    id: Optional("5d9a5e3f7b"),
                    listId: Optional("4ca5becb8d"),
                    signingEnabled: Optional(true),
                    signingSecret: Optional("zI3tsLziqBWhlz6V4PRlGg41u0gdhu7LhYXX4wa0ARM"),
                    sources: Optional(ListWebhooksSources(
                        admin: Optional(true),
                        api: Optional(true),
                        user: Optional(true)
                    )),
                    url: Optional("http://yourdomain.com/webhook")
                )
            ])
        )
        let response = try await client.lists.listWebhooks(
            listId: "list_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createWebhook1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "events": {
                    "campaign": true,
                    "cleaned": true,
                    "profile": true,
                    "subscribe": true,
                    "unsubscribe": true,
                    "upemail": true,
                    "sms_subscribe": true,
                    "sms_unsubscribe": true,
                    "upsms": true,
                    "sms_campaign": true
                  },
                  "id": "5d9a5e3f7b",
                  "list_id": "4ca5becb8d",
                  "signing_enabled": true,
                  "signing_secret": "zI3tsLziqBWhlz6V4PRlGg41u0gdhu7LhYXX4wa0ARM",
                  "sources": {
                    "admin": true,
                    "api": true,
                    "user": true
                  },
                  "url": "http://yourdomain.com/webhook"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListWebhooks(
            links: Optional([
                ListWebhooksLinksItem(
                    href: Optional("href"),
                    method: Optional(ListWebhooksLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            events: Optional(ListWebhooksEvents(
                campaign: Optional(true),
                cleaned: Optional(true),
                profile: Optional(true),
                subscribe: Optional(true),
                unsubscribe: Optional(true),
                upemail: Optional(true),
                smsSubscribe: Optional(true),
                smsUnsubscribe: Optional(true),
                upsms: Optional(true),
                smsCampaign: Optional(true)
            )),
            id: Optional("5d9a5e3f7b"),
            listId: Optional("4ca5becb8d"),
            signingEnabled: Optional(true),
            signingSecret: Optional("zI3tsLziqBWhlz6V4PRlGg41u0gdhu7LhYXX4wa0ARM"),
            sources: Optional(ListWebhooksSources(
                admin: Optional(true),
                api: Optional(true),
                user: Optional(true)
            )),
            url: Optional("http://yourdomain.com/webhook")
        )
        let response = try await client.lists.createWebhook(
            listId: "list_id",
            request: AddWebhook(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getWebhook1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "events": {
                    "campaign": true,
                    "cleaned": true,
                    "profile": true,
                    "subscribe": true,
                    "unsubscribe": true,
                    "upemail": true,
                    "sms_subscribe": true,
                    "sms_unsubscribe": true,
                    "upsms": true,
                    "sms_campaign": true
                  },
                  "id": "5d9a5e3f7b",
                  "list_id": "4ca5becb8d",
                  "signing_enabled": true,
                  "signing_secret": "zI3tsLziqBWhlz6V4PRlGg41u0gdhu7LhYXX4wa0ARM",
                  "sources": {
                    "admin": true,
                    "api": true,
                    "user": true
                  },
                  "url": "http://yourdomain.com/webhook"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListWebhooks(
            links: Optional([
                ListWebhooksLinksItem(
                    href: Optional("href"),
                    method: Optional(ListWebhooksLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            events: Optional(ListWebhooksEvents(
                campaign: Optional(true),
                cleaned: Optional(true),
                profile: Optional(true),
                subscribe: Optional(true),
                unsubscribe: Optional(true),
                upemail: Optional(true),
                smsSubscribe: Optional(true),
                smsUnsubscribe: Optional(true),
                upsms: Optional(true),
                smsCampaign: Optional(true)
            )),
            id: Optional("5d9a5e3f7b"),
            listId: Optional("4ca5becb8d"),
            signingEnabled: Optional(true),
            signingSecret: Optional("zI3tsLziqBWhlz6V4PRlGg41u0gdhu7LhYXX4wa0ARM"),
            sources: Optional(ListWebhooksSources(
                admin: Optional(true),
                api: Optional(true),
                user: Optional(true)
            )),
            url: Optional("http://yourdomain.com/webhook")
        )
        let response = try await client.lists.getWebhook(
            listId: "list_id",
            webhookId: "webhook_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateWebhook1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "events": {
                    "campaign": true,
                    "cleaned": true,
                    "profile": true,
                    "subscribe": true,
                    "unsubscribe": true,
                    "upemail": true,
                    "sms_subscribe": true,
                    "sms_unsubscribe": true,
                    "upsms": true,
                    "sms_campaign": true
                  },
                  "id": "5d9a5e3f7b",
                  "list_id": "4ca5becb8d",
                  "signing_enabled": true,
                  "signing_secret": "zI3tsLziqBWhlz6V4PRlGg41u0gdhu7LhYXX4wa0ARM",
                  "sources": {
                    "admin": true,
                    "api": true,
                    "user": true
                  },
                  "url": "http://yourdomain.com/webhook"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListWebhooks(
            links: Optional([
                ListWebhooksLinksItem(
                    href: Optional("href"),
                    method: Optional(ListWebhooksLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            events: Optional(ListWebhooksEvents(
                campaign: Optional(true),
                cleaned: Optional(true),
                profile: Optional(true),
                subscribe: Optional(true),
                unsubscribe: Optional(true),
                upemail: Optional(true),
                smsSubscribe: Optional(true),
                smsUnsubscribe: Optional(true),
                upsms: Optional(true),
                smsCampaign: Optional(true)
            )),
            id: Optional("5d9a5e3f7b"),
            listId: Optional("4ca5becb8d"),
            signingEnabled: Optional(true),
            signingSecret: Optional("zI3tsLziqBWhlz6V4PRlGg41u0gdhu7LhYXX4wa0ARM"),
            sources: Optional(ListWebhooksSources(
                admin: Optional(true),
                api: Optional(true),
                user: Optional(true)
            )),
            url: Optional("http://yourdomain.com/webhook")
        )
        let response = try await client.lists.updateWebhook(
            listId: "list_id",
            webhookId: "webhook_id",
            request: AddWebhook(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}