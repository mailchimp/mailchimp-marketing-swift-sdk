import Foundation
import Testing
import Mailchimp

@Suite("FacebookAdsClient Wire Tests") struct FacebookAdsClientWireTests {
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
                  "facebook_ads": [
                    {
                      "canceled_at": "2024-01-15T09:30:00Z",
                      "create_time": "2024-01-15T09:30:00Z",
                      "has_segment": true,
                      "id": "id",
                      "name": "name",
                      "published_time": "2024-01-15T09:30:00Z",
                      "recipients": {
                        "segment_opts": {
                          "conditions": [
                            {
                              "value": "any",
                              "condition_type": "Aim"
                            }
                          ],
                          "prebuilt_segment_id": "subscribers-female"
                        }
                      },
                      "show_report": true,
                      "start_time": "2024-01-15T09:30:00Z",
                      "status": "save",
                      "type": "regular",
                      "updated_at": "2024-01-15T09:30:00Z",
                      "web_id": 1,
                      "email_source_name": "email_source_name",
                      "end_time": "2024-01-15T09:30:00Z",
                      "needs_attention": true,
                      "paused_at": "2024-01-15T09:30:00Z",
                      "thumbnail": "thumbnail",
                      "was_canceled_by_facebook": true,
                      "budget": {
                        "currency_code": "USD",
                        "duration": 86400,
                        "total_amount": 500
                      },
                      "channel": {
                        "fb_placement_audience": false,
                        "fb_placement_feed": true,
                        "ig_placement_feed": false
                      },
                      "has_audience": true,
                      "has_content": true,
                      "is_connected": true,
                      "site": {
                        "id": 43,
                        "name": "My Connected Site",
                        "url": "www.example.com"
                      },
                      "_links": [
                        {}
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
        let expectedResponse = ListFacebookAdsResponse(
            links: Optional([
                ListFacebookAdsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListFacebookAdsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            facebookAds: Optional([
                FacebookAds(
                    canceledAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    createTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    hasSegment: Optional(true),
                    id: Optional("id"),
                    name: Optional("name"),
                    publishedTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    recipients: Optional(FacebookAdRecipients(
                        segmentOpts: Optional(FacebookAdRecipientsSegmentOpts(
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
                            prebuiltSegmentId: Optional("subscribers-female")
                        ))
                    )),
                    showReport: Optional(true),
                    startTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    status: Optional(FacebookAdStatus.save),
                    type: Optional(FacebookAdType.regular),
                    updatedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    webId: Optional(1),
                    emailSourceName: Optional("email_source_name"),
                    endTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    needsAttention: Optional(true),
                    pausedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    thumbnail: Optional("thumbnail"),
                    wasCanceledByFacebook: Optional(true),
                    budget: Optional(FacebookAdsBudget(
                        currencyCode: Optional("USD"),
                        duration: Optional(86400),
                        totalAmount: Optional(500)
                    )),
                    channel: Optional(FacebookAdsChannel(
                        fbPlacementAudience: Optional(false),
                        fbPlacementFeed: Optional(true),
                        igPlacementFeed: Optional(false)
                    )),
                    hasAudience: Optional(true),
                    hasContent: Optional(true),
                    isConnected: Optional(true),
                    site: Optional(FacebookAdsSite(
                        id: Optional(43),
                        name: Optional("My Connected Site"),
                        url: Optional("www.example.com")
                    )),
                    links: Optional([
                        FacebookAdsLinksItem(

                        )
                    ])
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.facebookAds.list(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func get1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "canceled_at": "2024-01-15T09:30:00Z",
                  "create_time": "2024-01-15T09:30:00Z",
                  "has_segment": true,
                  "id": "id",
                  "name": "name",
                  "published_time": "2024-01-15T09:30:00Z",
                  "recipients": {
                    "list_id": "list_id",
                    "list_is_active": true,
                    "list_name": "list_name",
                    "recipient_count": 1,
                    "segment_opts": {
                      "conditions": [
                        {
                          "value": "any",
                          "condition_type": "Aim"
                        }
                      ],
                      "match": "any",
                      "prebuilt_segment_id": "subscribers-female",
                      "saved_segment_id": 1
                    },
                    "segment_text": "segment_text"
                  },
                  "report_summary": {
                    "click_rate": 1.1,
                    "clicks": 1,
                    "conversion_rate": 1.1,
                    "ecommerce": {
                      "average_order_revenue": 1.1,
                      "currency_code": "currency_code",
                      "total_revenue": 1.1
                    },
                    "engagements": 1,
                    "impressions": 1.1,
                    "open_rate": 1.1,
                    "opens": 1,
                    "proxy_excluded_open_rate": 1.1,
                    "proxy_excluded_opens": 1,
                    "proxy_excluded_unique_opens": 1,
                    "reach": 1,
                    "subscriber_clicks": 1,
                    "subscribes": 1,
                    "total_sent": 1,
                    "unique_opens": 1,
                    "unique_visits": 1,
                    "visits": 1
                  },
                  "show_report": true,
                  "start_time": "2024-01-15T09:30:00Z",
                  "status": "save",
                  "type": "regular",
                  "updated_at": "2024-01-15T09:30:00Z",
                  "web_id": 1,
                  "email_source_name": "email_source_name",
                  "end_time": "2024-01-15T09:30:00Z",
                  "needs_attention": true,
                  "paused_at": "2024-01-15T09:30:00Z",
                  "thumbnail": "thumbnail",
                  "was_canceled_by_facebook": true,
                  "audience": {
                    "email_source": {
                      "is_segment": true,
                      "list_name": "list_name",
                      "name": "name",
                      "segment_type": "segment_type",
                      "type": "type"
                    },
                    "include_source_in_target": true,
                    "lookalike_country_code": "lookalike_country_code",
                    "source_type": "facebook",
                    "targeting_specs": {
                      "gender": 1,
                      "interests": [
                        {}
                      ],
                      "max_age": 1,
                      "min_age": 1
                    },
                    "type": "Custom Audience"
                  },
                  "budget": {
                    "currency_code": "USD",
                    "duration": 86400,
                    "total_amount": 500
                  },
                  "channel": {
                    "fb_placement_audience": false,
                    "fb_placement_feed": true,
                    "ig_placement_feed": false
                  },
                  "content": {
                    "attachments": [
                      {}
                    ],
                    "call_to_action": "call_to_action",
                    "description": "description",
                    "image_url": "image_url",
                    "link_url": "link_url",
                    "message": "message",
                    "title": "title"
                  },
                  "feedback": {
                    "audience": "audience",
                    "budget": "budget",
                    "compliance": "compliance",
                    "content": "content"
                  },
                  "has_audience": true,
                  "has_content": true,
                  "is_connected": true,
                  "site": {
                    "id": 43,
                    "name": "My Connected Site",
                    "url": "www.example.com"
                  },
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
        let expectedResponse = FacebookAds(
            canceledAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            hasSegment: Optional(true),
            id: Optional("id"),
            name: Optional("name"),
            publishedTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            recipients: Optional(FacebookAdRecipients(
                listId: Optional("list_id"),
                listIsActive: Optional(true),
                listName: Optional("list_name"),
                recipientCount: Optional(1),
                segmentOpts: Optional(FacebookAdRecipientsSegmentOpts(
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
                    match: Optional(FacebookAdRecipientsSegmentOptsMatch.any),
                    prebuiltSegmentId: Optional("subscribers-female"),
                    savedSegmentId: Optional(FacebookAdRecipientsSegmentOptsSavedSegmentId.int(
                        1
                    ))
                )),
                segmentText: Optional("segment_text")
            )),
            reportSummary: Optional(FacebookAdReportSummary(
                clickRate: Optional(1.1),
                clicks: Optional(1),
                conversionRate: Optional(1.1),
                ecommerce: Optional(FacebookAdReportSummaryEcommerce(
                    averageOrderRevenue: Optional(1.1),
                    currencyCode: Optional("currency_code"),
                    totalRevenue: Optional(1.1)
                )),
                engagements: Optional(1),
                impressions: Optional(1.1),
                openRate: Optional(1.1),
                opens: Optional(1),
                proxyExcludedOpenRate: Optional(1.1),
                proxyExcludedOpens: Optional(1),
                proxyExcludedUniqueOpens: Optional(1),
                reach: Optional(1),
                subscriberClicks: Optional(1),
                subscribes: Optional(1),
                totalSent: Optional(1),
                uniqueOpens: Optional(1),
                uniqueVisits: Optional(1),
                visits: Optional(1)
            )),
            showReport: Optional(true),
            startTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            status: Optional(FacebookAdStatus.save),
            type: Optional(FacebookAdType.regular),
            updatedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            webId: Optional(1),
            emailSourceName: Optional("email_source_name"),
            endTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            needsAttention: Optional(true),
            pausedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            thumbnail: Optional("thumbnail"),
            wasCanceledByFacebook: Optional(true),
            audience: Optional(FacebookAdsAudience(
                emailSource: Optional(FacebookAdsAudienceEmailSource(
                    isSegment: Optional(true),
                    listName: Optional("list_name"),
                    name: Optional("name"),
                    segmentType: Optional("segment_type"),
                    type: Optional("type")
                )),
                includeSourceInTarget: Optional(true),
                lookalikeCountryCode: Optional("lookalike_country_code"),
                sourceType: Optional(FacebookAdsAudienceSourceType.facebook),
                targetingSpecs: Optional(FacebookAdsAudienceTargetingSpecs(
                    gender: Optional(1),
                    interests: Optional([
                        FacebookAdsAudienceTargetingSpecsInterestsItem(

                        )
                    ]),
                    maxAge: Optional(1),
                    minAge: Optional(1)
                )),
                type: Optional(FacebookAdsAudienceType.customAudience)
            )),
            budget: Optional(FacebookAdsBudget(
                currencyCode: Optional("USD"),
                duration: Optional(86400),
                totalAmount: Optional(500)
            )),
            channel: Optional(FacebookAdsChannel(
                fbPlacementAudience: Optional(false),
                fbPlacementFeed: Optional(true),
                igPlacementFeed: Optional(false)
            )),
            content: Optional(FacebookAdsContent(
                attachments: Optional([
                    FacebookAdsContentAttachmentsItem(

                    )
                ]),
                callToAction: Optional("call_to_action"),
                description: Optional("description"),
                imageUrl: Optional("image_url"),
                linkUrl: Optional("link_url"),
                message: Optional("message"),
                title: Optional("title")
            )),
            feedback: Optional(FacebookAdsFeedback(
                audience: Optional("audience"),
                budget: Optional("budget"),
                compliance: Optional("compliance"),
                content: Optional("content")
            )),
            hasAudience: Optional(true),
            hasContent: Optional(true),
            isConnected: Optional(true),
            site: Optional(FacebookAdsSite(
                id: Optional(43),
                name: Optional("My Connected Site"),
                url: Optional("www.example.com")
            )),
            links: Optional([
                FacebookAdsLinksItem(
                    href: Optional("href"),
                    method: Optional(FacebookAdsLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ])
        )
        let response = try await client.facebookAds.get(
            outreachId: "outreach_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}