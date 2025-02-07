# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
# pylint: disable=missing-function-docstring
# pylint: disable=missing-module-docstring
# pylint: disable=too-many-arguments
# pylint: disable=too-many-branches
# pylint: disable=too-many-instance-attributes
# pylint: disable=too-many-lines
# pylint: disable=too-many-locals
# pylint: disable=too-many-public-methods
# pylint: disable=too-many-return-statements
# pylint: disable=too-many-statements
# pylint: disable=unused-import

from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import HeaderStr
from ....core import get_namespace as get_services_namespace
from ....core import run_request
from ....core import run_request_async
from ....core import deprecated
from ....core import same_doc_as

from ..models import ModelDeviceBanRequestV4
from ..models import ModelDeviceBanResponseV4
from ..models import ModelDeviceBanUpdateRequestV4
from ..models import ModelDeviceBannedResponseV4
from ..models import ModelDeviceBansResponseV4
from ..models import ModelDeviceIDDecryptResponseV4
from ..models import ModelDeviceTypesResponseV4
from ..models import ModelDeviceUsersResponseV4
from ..models import ModelDevicesResponseV4
from ..models import RestErrorResponse

from ..operations.devices_v4 import AdminBanDeviceV4
from ..operations.devices_v4 import AdminDecryptDeviceV4
from ..operations.devices_v4 import AdminGenerateReportV4
from ..operations.devices_v4 import AdminGetBannedDevicesV4
from ..operations.devices_v4 import AdminGetDeviceBanV4
from ..operations.devices_v4 import AdminGetDeviceBansV4
from ..operations.devices_v4 import AdminGetDeviceTypesV4
from ..operations.devices_v4 import AdminGetDevicesByUserV4
from ..operations.devices_v4 import AdminGetUserDeviceBansV4
from ..operations.devices_v4 import AdminGetUsersByDeviceV4
from ..operations.devices_v4 import AdminUnbanDeviceV4
from ..operations.devices_v4 import AdminUpdateDeviceBanV4


@same_doc_as(AdminBanDeviceV4)
def admin_ban_device_v4(
    body: ModelDeviceBanRequestV4,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Ban a device (AdminBanDeviceV4)

    This is the endpoint for an admin to ban a device

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/devices/bans

        method: POST

        tags: ["Devices V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelDeviceBanRequestV4 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error | 10204: device can not be banned)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        409: Conflict - RestErrorResponse (10202: active device ban config already exists)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBanDeviceV4.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminBanDeviceV4)
async def admin_ban_device_v4_async(
    body: ModelDeviceBanRequestV4,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Ban a device (AdminBanDeviceV4)

    This is the endpoint for an admin to ban a device

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/devices/bans

        method: POST

        tags: ["Devices V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelDeviceBanRequestV4 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error | 10204: device can not be banned)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        409: Conflict - RestErrorResponse (10202: active device ban config already exists)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBanDeviceV4.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminDecryptDeviceV4)
def admin_decrypt_device_v4(
    device_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin decrypt device id (AdminDecryptDeviceV4)

    This is the endpoint for an admin to decrypt device id

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/devices/{deviceId}/decrypt

        method: GET

        tags: ["Devices V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        device_id: (deviceId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelDeviceIDDecryptResponseV4 (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDecryptDeviceV4.create(
        device_id=device_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminDecryptDeviceV4)
async def admin_decrypt_device_v4_async(
    device_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin decrypt device id (AdminDecryptDeviceV4)

    This is the endpoint for an admin to decrypt device id

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/devices/{deviceId}/decrypt

        method: GET

        tags: ["Devices V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        device_id: (deviceId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelDeviceIDDecryptResponseV4 (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDecryptDeviceV4.create(
        device_id=device_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGenerateReportV4)
def admin_generate_report_v4(
    device_type: str,
    end_date: Optional[str] = None,
    start_date: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin generate device report (AdminGenerateReportV4)

    This is the endpoint for an admin to generate device report

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/devices/report

        method: GET

        tags: ["Devices V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end_date: (endDate) OPTIONAL str in query

        start_date: (startDate) OPTIONAL str in query

        device_type: (deviceType) REQUIRED str in query

    Responses:
        200: OK - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found | 10158: ban not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGenerateReportV4.create(
        device_type=device_type,
        end_date=end_date,
        start_date=start_date,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGenerateReportV4)
async def admin_generate_report_v4_async(
    device_type: str,
    end_date: Optional[str] = None,
    start_date: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin generate device report (AdminGenerateReportV4)

    This is the endpoint for an admin to generate device report

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/devices/report

        method: GET

        tags: ["Devices V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end_date: (endDate) OPTIONAL str in query

        start_date: (startDate) OPTIONAL str in query

        device_type: (deviceType) REQUIRED str in query

    Responses:
        200: OK - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found | 10158: ban not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGenerateReportV4.create(
        device_type=device_type,
        end_date=end_date,
        start_date=start_date,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetBannedDevicesV4)
def admin_get_banned_devices_v4(
    device_type: Optional[str] = None,
    end_date: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    start_date: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get banned devices (AdminGetBannedDevicesV4)

    This is the endpoint for an admin to get banned devices

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/devices/banned

        method: GET

        tags: ["Devices V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        device_type: (deviceType) OPTIONAL str in query

        end_date: (endDate) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        start_date: (startDate) OPTIONAL str in query

    Responses:
        200: OK - ModelDeviceBannedResponseV4 (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetBannedDevicesV4.create(
        device_type=device_type,
        end_date=end_date,
        limit=limit,
        offset=offset,
        start_date=start_date,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetBannedDevicesV4)
async def admin_get_banned_devices_v4_async(
    device_type: Optional[str] = None,
    end_date: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    start_date: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get banned devices (AdminGetBannedDevicesV4)

    This is the endpoint for an admin to get banned devices

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/devices/banned

        method: GET

        tags: ["Devices V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        device_type: (deviceType) OPTIONAL str in query

        end_date: (endDate) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        start_date: (startDate) OPTIONAL str in query

    Responses:
        200: OK - ModelDeviceBannedResponseV4 (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetBannedDevicesV4.create(
        device_type=device_type,
        end_date=end_date,
        limit=limit,
        offset=offset,
        start_date=start_date,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetDeviceBanV4)
def admin_get_device_ban_v4(
    ban_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get device ban config (AdminGetDeviceBanV4)

    This is the endpoint for an admin to get device ban config

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/devices/bans/{banId}

        method: GET

        tags: ["Devices V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        ban_id: (banId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelDeviceBanResponseV4 (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10158: ban not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetDeviceBanV4.create(
        ban_id=ban_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetDeviceBanV4)
async def admin_get_device_ban_v4_async(
    ban_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get device ban config (AdminGetDeviceBanV4)

    This is the endpoint for an admin to get device ban config

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/devices/bans/{banId}

        method: GET

        tags: ["Devices V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        ban_id: (banId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelDeviceBanResponseV4 (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10158: ban not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetDeviceBanV4.create(
        ban_id=ban_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetDeviceBansV4)
def admin_get_device_bans_v4(
    device_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get device ban list (AdminGetDeviceBansV4)

    This is the endpoint for an admin to get device ban list

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/devices/{deviceId}/bans

        method: GET

        tags: ["Devices V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        device_id: (deviceId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelDeviceBansResponseV4 (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetDeviceBansV4.create(
        device_id=device_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetDeviceBansV4)
async def admin_get_device_bans_v4_async(
    device_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get device ban list (AdminGetDeviceBansV4)

    This is the endpoint for an admin to get device ban list

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/devices/{deviceId}/bans

        method: GET

        tags: ["Devices V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        device_id: (deviceId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelDeviceBansResponseV4 (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetDeviceBansV4.create(
        device_id=device_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetDeviceTypesV4)
def admin_get_device_types_v4(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get device types (AdminGetDeviceTypesV4)

    This is the endpoint for an admin to get device types

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/devices/types

        method: GET

        tags: ["Devices V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelDeviceTypesResponseV4 (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetDeviceTypesV4.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetDeviceTypesV4)
async def admin_get_device_types_v4_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get device types (AdminGetDeviceTypesV4)

    This is the endpoint for an admin to get device types

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/devices/types

        method: GET

        tags: ["Devices V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelDeviceTypesResponseV4 (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetDeviceTypesV4.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetDevicesByUserV4)
def admin_get_devices_by_user_v4(
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get devices by user id (AdminGetDevicesByUserV4)

    This is the endpoint for an admin to get devices a user ever used to login

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/devices

        method: GET

        tags: ["Devices V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - ModelDevicesResponseV4 (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20021: invalid pagination parameter)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetDevicesByUserV4.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetDevicesByUserV4)
async def admin_get_devices_by_user_v4_async(
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get devices by user id (AdminGetDevicesByUserV4)

    This is the endpoint for an admin to get devices a user ever used to login

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/devices

        method: GET

        tags: ["Devices V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - ModelDevicesResponseV4 (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20021: invalid pagination parameter)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetDevicesByUserV4.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetUserDeviceBansV4)
def admin_get_user_device_bans_v4(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get device bans of user (AdminGetUserDeviceBansV4)

    This is the endpoint for an admin to get device bans of user

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/devices/bans

        method: GET

        tags: ["Devices V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in query

    Responses:
        200: OK - ModelDeviceBansResponseV4 (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserDeviceBansV4.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetUserDeviceBansV4)
async def admin_get_user_device_bans_v4_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get device bans of user (AdminGetUserDeviceBansV4)

    This is the endpoint for an admin to get device bans of user

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/devices/bans

        method: GET

        tags: ["Devices V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in query

    Responses:
        200: OK - ModelDeviceBansResponseV4 (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserDeviceBansV4.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetUsersByDeviceV4)
def admin_get_users_by_device_v4(
    device_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get users by device id (AdminGetUsersByDeviceV4)

    This is the endpoint for an admin to get users that ever login on the device

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/devices/{deviceId}/users

        method: GET

        tags: ["Devices V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        device_id: (deviceId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelDeviceUsersResponseV4 (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUsersByDeviceV4.create(
        device_id=device_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetUsersByDeviceV4)
async def admin_get_users_by_device_v4_async(
    device_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get users by device id (AdminGetUsersByDeviceV4)

    This is the endpoint for an admin to get users that ever login on the device

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/devices/{deviceId}/users

        method: GET

        tags: ["Devices V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        device_id: (deviceId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelDeviceUsersResponseV4 (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUsersByDeviceV4.create(
        device_id=device_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUnbanDeviceV4)
def admin_unban_device_v4(
    device_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin unban device (AdminUnbanDeviceV4)

    This is the endpoint for an admin to unban device

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/devices/{deviceId}/unban

        method: PUT

        tags: ["Devices V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        device_id: (deviceId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUnbanDeviceV4.create(
        device_id=device_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUnbanDeviceV4)
async def admin_unban_device_v4_async(
    device_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin unban device (AdminUnbanDeviceV4)

    This is the endpoint for an admin to unban device

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/devices/{deviceId}/unban

        method: PUT

        tags: ["Devices V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        device_id: (deviceId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUnbanDeviceV4.create(
        device_id=device_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateDeviceBanV4)
def admin_update_device_ban_v4(
    ban_id: str,
    body: ModelDeviceBanUpdateRequestV4,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin update device ban config (AdminUpdateDeviceBanV4)

    This is the endpoint for an admin to update a device ban config

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/devices/bans/{banId}

        method: PUT

        tags: ["Devices V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelDeviceBanUpdateRequestV4 in body

        ban_id: (banId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10158: ban not found)

        409: Conflict - RestErrorResponse (10202: active device ban config already exists)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateDeviceBanV4.create(
        ban_id=ban_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateDeviceBanV4)
async def admin_update_device_ban_v4_async(
    ban_id: str,
    body: ModelDeviceBanUpdateRequestV4,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin update device ban config (AdminUpdateDeviceBanV4)

    This is the endpoint for an admin to update a device ban config

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/devices/bans/{banId}

        method: PUT

        tags: ["Devices V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelDeviceBanUpdateRequestV4 in body

        ban_id: (banId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10158: ban not found)

        409: Conflict - RestErrorResponse (10202: active device ban config already exists)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateDeviceBanV4.create(
        ban_id=ban_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
