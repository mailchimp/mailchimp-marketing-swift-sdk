import Foundation
import Testing
import Mailchimp

@Suite("SurveysClient Wire Tests") struct SurveysClientWireTests {
    @Test func createListSurveyActionCreateEmail1() async throws -> Void {
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
                  "ab_split_opts": {
                    "from_name_a": "from_name_a",
                    "from_name_b": "from_name_b",
                    "pick_winner": "opens",
                    "reply_email_a": "reply_email_a",
                    "reply_email_b": "reply_email_b",
                    "send_time_a": "2024-01-15T09:30:00Z",
                    "send_time_b": "2024-01-15T09:30:00Z",
                    "send_time_winner": "send_time_winner",
                    "split_size": 1,
                    "split_test": "subject",
                    "subject_a": "subject_a",
                    "subject_b": "subject_b",
                    "wait_time": 1,
                    "wait_units": "hours"
                  },
                  "archive_url": "archive_url",
                  "content_type": "content_type",
                  "create_time": "2024-01-15T09:30:00Z",
                  "delivery_status": {
                    "can_cancel": true,
                    "emails_canceled": 1,
                    "emails_sent": 1,
                    "enabled": true,
                    "status": "delivering"
                  },
                  "emails_sent": 1,
                  "id": "id",
                  "long_archive_url": "long_archive_url",
                  "needs_block_refresh": true,
                  "parent_campaign_id": "parent_campaign_id",
                  "recipients": {
                    "list_id": "list_id",
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
                    "ecommerce": {
                      "total_orders": 1,
                      "total_revenue": 1.1,
                      "total_spent": 1.1
                    },
                    "open_rate": 1.1,
                    "opens": 1,
                    "subscriber_clicks": 1,
                    "unique_opens": 1
                  },
                  "resendable": true,
                  "rss_opts": {
                    "constrain_rss_img": true,
                    "feed_url": "feed_url",
                    "frequency": "daily",
                    "last_sent": "2024-01-15T09:30:00Z",
                    "schedule": {
                      "hour": 1,
                      "monthly_send_date": 1.1,
                      "weekly_send_day": "sunday"
                    }
                  },
                  "send_time": "2024-01-15T09:30:00Z",
                  "settings": {
                    "authenticate": true,
                    "auto_fb_post": [
                      "auto_fb_post"
                    ],
                    "auto_footer": true,
                    "auto_tweet": true,
                    "drag_and_drop": true,
                    "fb_comments": true,
                    "folder_id": "folder_id",
                    "from_name": "from_name",
                    "inline_css": true,
                    "preview_text": "preview_text",
                    "reply_to": "reply_to",
                    "subject_line": "subject_line",
                    "template_id": 1,
                    "timewarp": true,
                    "title": "title",
                    "to_name": "to_name",
                    "use_conversation": true
                  },
                  "social_card": {
                    "description": "description",
                    "image_url": "image_url",
                    "title": "title"
                  },
                  "status": "save",
                  "tracking": {
                    "capsule": {
                      "notes": true
                    },
                    "clicktale": "clicktale",
                    "ecomm360": true,
                    "goal_tracking": true,
                    "google_analytics": "google_analytics",
                    "html_clicks": true,
                    "opens": true,
                    "salesforce": {
                      "campaign": true,
                      "notes": true
                    },
                    "text_clicks": true
                  },
                  "type": "regular",
                  "variate_settings": {
                    "combinations": [
                      {}
                    ],
                    "contents": [
                      "contents"
                    ],
                    "from_names": [
                      "from_names"
                    ],
                    "reply_to_addresses": [
                      "reply_to_addresses"
                    ],
                    "send_times": [
                      "2024-01-15T09:30:00Z"
                    ],
                    "subject_lines": [
                      "subject_lines"
                    ],
                    "test_size": 1,
                    "wait_time": 1,
                    "winner_criteria": "opens",
                    "winning_campaign_id": "winning_campaign_id",
                    "winning_combination_id": "winning_combination_id"
                  },
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
        let expectedResponse = Campaign(
            links: Optional([
                CampaignLinksItem(
                    href: Optional("href"),
                    method: Optional(CampaignLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            abSplitOpts: Optional(AbTestingOptions(
                fromNameA: Optional("from_name_a"),
                fromNameB: Optional("from_name_b"),
                pickWinner: Optional(AbTestingOptionsPickWinner.opens),
                replyEmailA: Optional("reply_email_a"),
                replyEmailB: Optional("reply_email_b"),
                sendTimeA: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                sendTimeB: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                sendTimeWinner: Optional("send_time_winner"),
                splitSize: Optional(1),
                splitTest: Optional(AbTestingOptionsSplitTest.subject),
                subjectA: Optional("subject_a"),
                subjectB: Optional("subject_b"),
                waitTime: Optional(1),
                waitUnits: Optional(AbTestingOptionsWaitUnits.hours)
            )),
            archiveUrl: Optional("archive_url"),
            contentType: Optional("content_type"),
            createTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            deliveryStatus: Optional(CampaignDeliveryStatus(
                canCancel: Optional(true),
                emailsCanceled: Optional(1),
                emailsSent: Optional(1),
                enabled: Optional(true),
                status: Optional(CampaignDeliveryStatusStatus.delivering)
            )),
            emailsSent: Optional(1),
            id: Optional("id"),
            longArchiveUrl: Optional("long_archive_url"),
            needsBlockRefresh: Optional(true),
            parentCampaignId: Optional("parent_campaign_id"),
            recipients: Optional(CampaignRecipients(
                listId: "list_id",
                listName: Optional("list_name"),
                recipientCount: Optional(1),
                segmentOpts: Optional(CampaignRecipientsSegmentOpts(
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
                    match: Optional(CampaignRecipientsSegmentOptsMatch.any),
                    prebuiltSegmentId: Optional("subscribers-female"),
                    savedSegmentId: Optional(CampaignRecipientsSegmentOptsSavedSegmentId.int(
                        1
                    ))
                )),
                segmentText: Optional("segment_text")
            )),
            reportSummary: Optional(CampaignReportSummary(
                clickRate: Optional(1.1),
                clicks: Optional(1),
                ecommerce: Optional(CampaignReportSummaryEcommerce(
                    totalOrders: Optional(1),
                    totalRevenue: Optional(1.1),
                    totalSpent: Optional(1.1)
                )),
                openRate: Optional(1.1),
                opens: Optional(1),
                subscriberClicks: Optional(1),
                uniqueOpens: Optional(1)
            )),
            resendable: Optional(true),
            rssOpts: Optional(CampaignRssOpts(
                constrainRssImg: Optional(true),
                feedUrl: "feed_url",
                frequency: CampaignRssOptsFrequency.daily,
                lastSent: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                schedule: Optional(CampaignRssOptsSchedule(
                    hour: Optional(1),
                    monthlySendDate: Optional(1.1),
                    weeklySendDay: Optional(CampaignRssOptsScheduleWeeklySendDay.sunday)
                ))
            )),
            sendTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            settings: Optional(CampaignSettings(
                authenticate: Optional(true),
                autoFbPost: Optional([
                    "auto_fb_post"
                ]),
                autoFooter: Optional(true),
                autoTweet: Optional(true),
                dragAndDrop: Optional(true),
                fbComments: Optional(true),
                folderId: Optional("folder_id"),
                fromName: Optional("from_name"),
                inlineCss: Optional(true),
                previewText: Optional("preview_text"),
                replyTo: Optional("reply_to"),
                subjectLine: Optional("subject_line"),
                templateId: Optional(1),
                timewarp: Optional(true),
                title: Optional("title"),
                toName: Optional("to_name"),
                useConversation: Optional(true)
            )),
            socialCard: Optional(CampaignSocialCard(
                description: Optional("description"),
                imageUrl: Optional("image_url"),
                title: Optional("title")
            )),
            status: Optional(CampaignStatus.save),
            tracking: Optional(CampaignTrackingOptions(
                capsule: Optional(CampaignTrackingOptionsCapsule(
                    notes: Optional(true)
                )),
                clicktale: Optional("clicktale"),
                ecomm360: Optional(true),
                goalTracking: Optional(true),
                googleAnalytics: Optional("google_analytics"),
                htmlClicks: Optional(true),
                opens: Optional(true),
                salesforce: Optional(CampaignTrackingOptionsSalesforce(
                    campaign: Optional(true),
                    notes: Optional(true)
                )),
                textClicks: Optional(true)
            )),
            type: CampaignType.regular,
            variateSettings: Optional(CampaignVariateSettings(
                combinations: Optional([
                    CampaignVariateSettingsCombinationsItem(

                    )
                ]),
                contents: Optional([
                    "contents"
                ]),
                fromNames: Optional([
                    "from_names"
                ]),
                replyToAddresses: Optional([
                    "reply_to_addresses"
                ]),
                sendTimes: Optional([
                    try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ]),
                subjectLines: Optional([
                    "subject_lines"
                ]),
                testSize: Optional(1),
                waitTime: Optional(1),
                winnerCriteria: CampaignVariateSettingsWinnerCriteria.opens,
                winningCampaignId: Optional("winning_campaign_id"),
                winningCombinationId: Optional("winning_combination_id")
            )),
            webId: Optional(1)
        )
        let response = try await client.surveys.createListSurveyActionCreateEmail(
            listId: "list_id",
            surveyId: "survey_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createListSurveyActionPublish1() async throws -> Void {
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
        let response = try await client.surveys.createListSurveyActionPublish(
            listId: "list_id",
            surveyId: "survey_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createListSurveyActionUnpublish1() async throws -> Void {
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
        let response = try await client.surveys.createListSurveyActionUnpublish(
            listId: "list_id",
            surveyId: "survey_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}