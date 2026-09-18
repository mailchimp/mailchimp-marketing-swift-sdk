import Foundation
import Testing
import Mailchimp

@Suite("AudiencesClient Wire Tests") struct AudiencesClientWireTests {
    @Test func getAudienceContactList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "contacts": [
                    {
                      "audience_id": "773280e405",
                      "created_at": "2024-01-15T09:30:00Z",
                      "email_channel": {
                        "email": "example@freddiemail.com",
                        "hashed_email": "9115d71ba28088047d342e3bcedacd0f",
                        "marketing_consent": {
                          "captured_at": "2024-01-15T10:30:00Z"
                        }
                      },
                      "id": "7CCF816ADF6CE1B11AE09BB024A02B9B",
                      "language": "",
                      "last_updated_at": "2024-01-15T09:30:00Z",
                      "merge_fields": {
                        "key": {
                          "addr1": "addr1",
                          "city": "city",
                          "state": "state",
                          "zip": "zip"
                        }
                      },
                      "sms_channel": {
                        "marketing_consent": {
                          "captured_at": "2024-01-15T10:30:00Z"
                        },
                        "sms_phone": "+14045550102",
                        "hashed_sms_phone": "0572084e1f8288816f02cdb7bd930c62400bc8aef510adfaa9eec2b995fa7609"
                      },
                      "status": "active",
                      "tags": [
                        "tags"
                      ]
                    }
                  ],
                  "next_cursor": "next_cursor",
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
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
        let expectedResponse = GetAudienceContactListResponse(
            contacts: Optional([
                AudiencesContact(
                    audienceId: Optional("773280e405"),
                    createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    emailChannel: Optional(AudiencesContactEmailChannel(
                        email: Optional("example@freddiemail.com"),
                        hashedEmail: Optional("9115d71ba28088047d342e3bcedacd0f"),
                        marketingConsent: Optional(AudiencesContactEmailChannelMarketingConsent(
                            capturedAt: Optional(try! Date("2024-01-15T10:30:00Z", strategy: .iso8601))
                        ))
                    )),
                    id: Optional("7CCF816ADF6CE1B11AE09BB024A02B9B"),
                    language: Optional(AudiencesContactLanguage.empty),
                    lastUpdatedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    mergeFields: Optional([
                        "key": AudiencesContactMergeFieldsValue.audiencesContactMergeFieldsValueAddr1(
                            AudiencesContactMergeFieldsValueAddr1(
                                addr1: "addr1",
                                city: "city",
                                state: "state",
                                zip: "zip"
                            )
                        )
                    ]),
                    smsChannel: Optional(AudiencesContactSmsChannel(
                        marketingConsent: Optional(AudiencesContactSmsChannelMarketingConsent(
                            capturedAt: Optional(try! Date("2024-01-15T10:30:00Z", strategy: .iso8601))
                        )),
                        smsPhone: Optional("+14045550102"),
                        hashedSmsPhone: Optional("0572084e1f8288816f02cdb7bd930c62400bc8aef510adfaa9eec2b995fa7609")
                    )),
                    status: Optional(AudiencesContactStatus.active),
                    tags: Optional([
                        "tags"
                    ])
                )
            ]),
            nextCursor: Optional("next_cursor"),
            links: Optional([
                GetAudienceContactListResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(GetAudienceContactListResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ])
        )
        let response = try await client.audiences.getAudienceContactList(
            audienceId: "audience_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createAudienceContact1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "audience_id": "773280e405",
                  "created_at": "2024-01-15T09:30:00Z",
                  "email_channel": {
                    "effective_subscription_status": {
                      "value": "subscribed"
                    },
                    "email": "example@freddiemail.com",
                    "hashed_email": "9115d71ba28088047d342e3bcedacd0f",
                    "marketing_consent": {
                      "status": "consented",
                      "captured_at": "2024-01-15T10:30:00Z"
                    },
                    "source": {
                      "name": "name"
                    }
                  },
                  "id": "7CCF816ADF6CE1B11AE09BB024A02B9B",
                  "language": "",
                  "last_updated_at": "2024-01-15T09:30:00Z",
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
                  "sms_channel": {
                    "effective_subscription_status": {
                      "value": "subscribed"
                    },
                    "marketing_consent": {
                      "status": "consented",
                      "captured_at": "2024-01-15T10:30:00Z"
                    },
                    "sms_phone": "+14045550102",
                    "source": {
                      "name": "name"
                    },
                    "hashed_sms_phone": "0572084e1f8288816f02cdb7bd930c62400bc8aef510adfaa9eec2b995fa7609"
                  },
                  "source": {
                    "name": "name"
                  },
                  "status": "active",
                  "tags": [
                    "tags"
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
        let expectedResponse = AudiencesContact(
            audienceId: Optional("773280e405"),
            createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            emailChannel: Optional(AudiencesContactEmailChannel(
                effectiveSubscriptionStatus: Optional(AudiencesContactEmailChannelEffectiveSubscriptionStatus(
                    value: Optional(AudiencesContactEmailChannelEffectiveSubscriptionStatusValue.subscribed)
                )),
                email: Optional("example@freddiemail.com"),
                hashedEmail: Optional("9115d71ba28088047d342e3bcedacd0f"),
                marketingConsent: Optional(AudiencesContactEmailChannelMarketingConsent(
                    status: Optional(AudiencesContactEmailChannelMarketingConsentStatus.consented),
                    capturedAt: Optional(try! Date("2024-01-15T10:30:00Z", strategy: .iso8601))
                )),
                source: Optional(AudiencesContactEmailChannelSource(
                    name: Optional("name")
                ))
            )),
            id: Optional("7CCF816ADF6CE1B11AE09BB024A02B9B"),
            language: Optional(AudiencesContactLanguage.empty),
            lastUpdatedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            mergeFields: Optional([
                "key": AudiencesContactMergeFieldsValue.audiencesContactMergeFieldsValueAddr1(
                    AudiencesContactMergeFieldsValueAddr1(
                        addr1: "addr1",
                        addr2: Optional("addr2"),
                        city: "city",
                        state: "state",
                        zip: "zip",
                        country: Optional("country")
                    )
                )
            ]),
            smsChannel: Optional(AudiencesContactSmsChannel(
                effectiveSubscriptionStatus: Optional(AudiencesContactSmsChannelEffectiveSubscriptionStatus(
                    value: Optional(AudiencesContactSmsChannelEffectiveSubscriptionStatusValue.subscribed)
                )),
                marketingConsent: Optional(AudiencesContactSmsChannelMarketingConsent(
                    status: Optional(AudiencesContactSmsChannelMarketingConsentStatus.consented),
                    capturedAt: Optional(try! Date("2024-01-15T10:30:00Z", strategy: .iso8601))
                )),
                smsPhone: Optional("+14045550102"),
                source: Optional(AudiencesContactSmsChannelSource(
                    name: Optional("name")
                )),
                hashedSmsPhone: Optional("0572084e1f8288816f02cdb7bd930c62400bc8aef510adfaa9eec2b995fa7609")
            )),
            source: Optional(AudiencesContactSource(
                name: Optional("name")
            )),
            status: Optional(AudiencesContactStatus.active),
            tags: Optional([
                "tags"
            ])
        )
        let response = try await client.audiences.createAudienceContact(
            audienceId: "audience_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getAudienceContact1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "audience_id": "773280e405",
                  "created_at": "2024-01-15T09:30:00Z",
                  "email_channel": {
                    "effective_subscription_status": {
                      "value": "subscribed"
                    },
                    "email": "example@freddiemail.com",
                    "hashed_email": "9115d71ba28088047d342e3bcedacd0f",
                    "marketing_consent": {
                      "status": "consented",
                      "captured_at": "2024-01-15T10:30:00Z"
                    },
                    "source": {
                      "name": "name"
                    }
                  },
                  "id": "7CCF816ADF6CE1B11AE09BB024A02B9B",
                  "language": "",
                  "last_updated_at": "2024-01-15T09:30:00Z",
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
                  "sms_channel": {
                    "effective_subscription_status": {
                      "value": "subscribed"
                    },
                    "marketing_consent": {
                      "status": "consented",
                      "captured_at": "2024-01-15T10:30:00Z"
                    },
                    "sms_phone": "+14045550102",
                    "source": {
                      "name": "name"
                    },
                    "hashed_sms_phone": "0572084e1f8288816f02cdb7bd930c62400bc8aef510adfaa9eec2b995fa7609"
                  },
                  "source": {
                    "name": "name"
                  },
                  "status": "active",
                  "tags": [
                    "tags"
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
        let expectedResponse = AudiencesContact(
            audienceId: Optional("773280e405"),
            createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            emailChannel: Optional(AudiencesContactEmailChannel(
                effectiveSubscriptionStatus: Optional(AudiencesContactEmailChannelEffectiveSubscriptionStatus(
                    value: Optional(AudiencesContactEmailChannelEffectiveSubscriptionStatusValue.subscribed)
                )),
                email: Optional("example@freddiemail.com"),
                hashedEmail: Optional("9115d71ba28088047d342e3bcedacd0f"),
                marketingConsent: Optional(AudiencesContactEmailChannelMarketingConsent(
                    status: Optional(AudiencesContactEmailChannelMarketingConsentStatus.consented),
                    capturedAt: Optional(try! Date("2024-01-15T10:30:00Z", strategy: .iso8601))
                )),
                source: Optional(AudiencesContactEmailChannelSource(
                    name: Optional("name")
                ))
            )),
            id: Optional("7CCF816ADF6CE1B11AE09BB024A02B9B"),
            language: Optional(AudiencesContactLanguage.empty),
            lastUpdatedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            mergeFields: Optional([
                "key": AudiencesContactMergeFieldsValue.audiencesContactMergeFieldsValueAddr1(
                    AudiencesContactMergeFieldsValueAddr1(
                        addr1: "addr1",
                        addr2: Optional("addr2"),
                        city: "city",
                        state: "state",
                        zip: "zip",
                        country: Optional("country")
                    )
                )
            ]),
            smsChannel: Optional(AudiencesContactSmsChannel(
                effectiveSubscriptionStatus: Optional(AudiencesContactSmsChannelEffectiveSubscriptionStatus(
                    value: Optional(AudiencesContactSmsChannelEffectiveSubscriptionStatusValue.subscribed)
                )),
                marketingConsent: Optional(AudiencesContactSmsChannelMarketingConsent(
                    status: Optional(AudiencesContactSmsChannelMarketingConsentStatus.consented),
                    capturedAt: Optional(try! Date("2024-01-15T10:30:00Z", strategy: .iso8601))
                )),
                smsPhone: Optional("+14045550102"),
                source: Optional(AudiencesContactSmsChannelSource(
                    name: Optional("name")
                )),
                hashedSmsPhone: Optional("0572084e1f8288816f02cdb7bd930c62400bc8aef510adfaa9eec2b995fa7609")
            )),
            source: Optional(AudiencesContactSource(
                name: Optional("name")
            )),
            status: Optional(AudiencesContactStatus.active),
            tags: Optional([
                "tags"
            ])
        )
        let response = try await client.audiences.getAudienceContact(
            audienceId: "audience_id",
            contactId: "contact_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func patchAudienceContact1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "audience_id": "773280e405",
                  "created_at": "2024-01-15T09:30:00Z",
                  "email_channel": {
                    "effective_subscription_status": {
                      "value": "subscribed"
                    },
                    "email": "example@freddiemail.com",
                    "hashed_email": "9115d71ba28088047d342e3bcedacd0f",
                    "marketing_consent": {
                      "status": "consented",
                      "captured_at": "2024-01-15T10:30:00Z"
                    },
                    "source": {
                      "name": "name"
                    }
                  },
                  "id": "7CCF816ADF6CE1B11AE09BB024A02B9B",
                  "language": "",
                  "last_updated_at": "2024-01-15T09:30:00Z",
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
                  "sms_channel": {
                    "effective_subscription_status": {
                      "value": "subscribed"
                    },
                    "marketing_consent": {
                      "status": "consented",
                      "captured_at": "2024-01-15T10:30:00Z"
                    },
                    "sms_phone": "+14045550102",
                    "source": {
                      "name": "name"
                    },
                    "hashed_sms_phone": "0572084e1f8288816f02cdb7bd930c62400bc8aef510adfaa9eec2b995fa7609"
                  },
                  "source": {
                    "name": "name"
                  },
                  "status": "active",
                  "tags": [
                    "tags"
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
        let expectedResponse = AudiencesContact(
            audienceId: Optional("773280e405"),
            createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            emailChannel: Optional(AudiencesContactEmailChannel(
                effectiveSubscriptionStatus: Optional(AudiencesContactEmailChannelEffectiveSubscriptionStatus(
                    value: Optional(AudiencesContactEmailChannelEffectiveSubscriptionStatusValue.subscribed)
                )),
                email: Optional("example@freddiemail.com"),
                hashedEmail: Optional("9115d71ba28088047d342e3bcedacd0f"),
                marketingConsent: Optional(AudiencesContactEmailChannelMarketingConsent(
                    status: Optional(AudiencesContactEmailChannelMarketingConsentStatus.consented),
                    capturedAt: Optional(try! Date("2024-01-15T10:30:00Z", strategy: .iso8601))
                )),
                source: Optional(AudiencesContactEmailChannelSource(
                    name: Optional("name")
                ))
            )),
            id: Optional("7CCF816ADF6CE1B11AE09BB024A02B9B"),
            language: Optional(AudiencesContactLanguage.empty),
            lastUpdatedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            mergeFields: Optional([
                "key": AudiencesContactMergeFieldsValue.audiencesContactMergeFieldsValueAddr1(
                    AudiencesContactMergeFieldsValueAddr1(
                        addr1: "addr1",
                        addr2: Optional("addr2"),
                        city: "city",
                        state: "state",
                        zip: "zip",
                        country: Optional("country")
                    )
                )
            ]),
            smsChannel: Optional(AudiencesContactSmsChannel(
                effectiveSubscriptionStatus: Optional(AudiencesContactSmsChannelEffectiveSubscriptionStatus(
                    value: Optional(AudiencesContactSmsChannelEffectiveSubscriptionStatusValue.subscribed)
                )),
                marketingConsent: Optional(AudiencesContactSmsChannelMarketingConsent(
                    status: Optional(AudiencesContactSmsChannelMarketingConsentStatus.consented),
                    capturedAt: Optional(try! Date("2024-01-15T10:30:00Z", strategy: .iso8601))
                )),
                smsPhone: Optional("+14045550102"),
                source: Optional(AudiencesContactSmsChannelSource(
                    name: Optional("name")
                )),
                hashedSmsPhone: Optional("0572084e1f8288816f02cdb7bd930c62400bc8aef510adfaa9eec2b995fa7609")
            )),
            source: Optional(AudiencesContactSource(
                name: Optional("name")
            )),
            status: Optional(AudiencesContactStatus.active),
            tags: Optional([
                "tags"
            ])
        )
        let response = try await client.audiences.patchAudienceContact(
            audienceId: "audience_id",
            contactId: "contact_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}