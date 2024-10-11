# [v0.70.0]

## BREAKING CHANGE

Following changes in AccelByte Gaming Services OpenAPI specification:

- `ams`: Model `ApiInstanceTypeDescriptionResponse` renamed into `ApiAvailableInstanceType`.
- `ams`: Model `ApiFleetParameters` field `ds_host_configuration` type has changed from `ApiDSHostConfiguration` into `ApiDSHostConfigurationParameters`.
- `ams`: Operation `FleetServers` field `count` type has changed from `str` into `int`.

- `challenge`: Enum `ModelUserReward.StatusEnum.CLAIM` changed into `ModelUserReward.StatusEnum.CLAIMED`.

- `legal`: Model `RetrieveUserEligibilitiesResponse` field `hidden_public` has been removed.

- `platform`: Operation `QueryEntitlements1` is now `QueryEntitlements`.
- `platform`: Operation `QueryFulfillments` response change from `FulfillmentHistoryPagingSlicedResult` into `FulfillmentPagingSlicedResult`.
- `platform`: Operation `PublicGetQRCode` response change from `FulfillmentHistoryPagingSlicedResult` into `FulfillmentPagingSlicedResult`.
- `platform`: Operation `PublicGetQRCode` response change from `Any` into `BinarySchema`.

- `sesion`: Operations `accelbyte_py_sdk.api.session.operations.operations` is now removed.

- `sessionhistory`: Operations field `party_id` is now removed.

[v0.70.0]: https://github.com/AccelByte/accelbyte-python-sdk/compare/v0.69.0..v0.70.0
