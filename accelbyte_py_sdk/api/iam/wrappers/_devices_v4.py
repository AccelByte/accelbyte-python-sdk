# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminBanDeviceV4.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDecryptDeviceV4)
def admin_decrypt_device_v4(
    device_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDecryptDeviceV4.create(
        device_id=device_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDecryptDeviceV4)
async def admin_decrypt_device_v4_async(
    device_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
