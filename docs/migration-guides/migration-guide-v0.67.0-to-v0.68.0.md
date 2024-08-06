# [v0.68.0]

## BREAKING CHANGE

Following changes in AccelByte Gaming Services OpenAPI specification:

- `dslogmanager`: Model `ModelsNotifPayloadServerStatusChange` has been renamed into `ModelsNotifPayloadServerStatusChangeResponse`.
- `dslogmanager`: Model `ModelsNotifPayloadServerStatusChange` field `server` type has changed from `ModelsServer` into `ModelsServerResponse`.
- `dslogmanager`: Model `ModelsListTerminatedServersResponse` field `data` type has changed from `ModelsNotifPayloadServerStatusChange[]` into `ModelsNotifPayloadServerStatusChangeResponse[]`.

- `dsmc`: Model `ModelsImageRecord` has been renamed into `ModelsImageRecordResponse`.
- `dsmc`: Model `ModelsListImagePatchesResponse` field `images` type has changed from `ModelsPatchImageRecord[]` into `ModelsPatchImageRecordResponse[]`.
- `dsmc`: Model `ModelsListImageResponse` field `images` type has changed from `ModelsServer[]` into `ModelsServerDetailsResponse[]`.
- `dsmc`: Operation `import_images` has been removed.
- `dsmc`: Operation `export_images` has been removed.
- `dsmc`: Operation `get_server` response type has changed from `ModelsServer`into `ModelsServerDetailsResponse`.

- `sessionhistory`: Model `ModelsMatch` field `tickets` type has changed from `ModelsTicket[]` into `ModelsMatchTicket[]`.

[v0.68.0]: https://github.com/AccelByte/accelbyte-python-sdk/compare/v0.67.0..v0.68.0
