# [v0.60.0]

## BREAKING CHANGE

Following changes in AccelByte Gaming Services OpenAPI specification:

- `ams`: Model `ApiDSHistoryEvent` had its `game_session` property removed.
- `ams`: Operation `artifact_get` had its response changed from `List[ApiArtifactResponse]` into `ApiArtifactListResponse`.

- `cloudsave`: Operation `admin_get_game_binary_record_v1` had its response renamed from `ModelsGameBinaryRecordResponse` into `ModelsGameBinaryRecordAdminResponse`.
- `cloudsave`: Operation `admin_list_game_binary_records_v1` had its response renamed from `ModelsListGameBinaryRecordsResponse` into `ModelsListGameBinaryRecordsAdminResponse`.
- `cloudsave`: Operation `admin_put_game_binary_recor_metadata_v1` had its response renamed from `ModelsGameBinaryRecordResponse` into `ModelsGameBinaryRecordAdminResponse`.
- `cloudsave`: Operation `admin_put_game_binary_record_v1` had its response renamed from `ModelsGameBinaryRecordResponse` into `ModelsGameBinaryRecordAdminResponse`.
- `cloudsave`: Operation `admin_get_game_record_handler_v1` had its response renamed from `ModelsGameRecordResponse` into `ModelsGameRecordAdminResponse`.
- `cloudsave`: Operation `admin_post_game_record_handler_v1` had its response renamed from `ModelsGameRecordResponse` into `ModelsGameRecordAdminResponse`.
- `cloudsave`: Operation `admin_put_game_record_handler_v1` had its response renamed from `ModelsGameRecordResponse` into `ModelsGameRecordAdminResponse`.

- `iam`: Operation `create_user_from_invitation_v3` had its response renamed from `ModelUserCreateFromInvitationRequestV3` into `ModelUserCreateRequestV3`.
- `iam`: Operation `create_user_from_invitation_v4` had its response renamed from `ModelUserCreateFromInvitationRequestV4` into `AccountCreateUserRequestV4`.

[v0.60.0]: https://github.com/AccelByte/accelbyte-python-sdk/compare/v0.59.0..v0.60.0
