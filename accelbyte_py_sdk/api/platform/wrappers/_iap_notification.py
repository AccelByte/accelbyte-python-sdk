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
from ....core import same_doc_as

from ..models import NotificationPagingSlicedResult

from ..operations.iap_notification import QueryThirdPartyNotifications
from ..operations.iap_notification import (
    QueryThirdPartyNotificationsSourceEnum,
    QueryThirdPartyNotificationsStatusEnum,
)


@same_doc_as(QueryThirdPartyNotifications)
def query_third_party_notifications(
    end_date: Optional[str] = None,
    external_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    source: Optional[Union[str, QueryThirdPartyNotificationsSourceEnum]] = None,
    start_date: Optional[str] = None,
    status: Optional[Union[str, QueryThirdPartyNotificationsStatusEnum]] = None,
    type_: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query third party notifications (queryThirdPartyNotifications)

    Query third party notifications.
    Other detail info:

      * Returns : Third Party Platform notifications

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/notifications

        method: GET

        tags: ["IAP(Notification)"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end_date: (endDate) OPTIONAL str in query

        external_id: (externalId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        source: (source) OPTIONAL Union[str, SourceEnum] in query

        start_date: (startDate) OPTIONAL str in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        type_: (type) OPTIONAL str in query

    Responses:
        200: OK - NotificationPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryThirdPartyNotifications.create(
        end_date=end_date,
        external_id=external_id,
        limit=limit,
        offset=offset,
        source=source,
        start_date=start_date,
        status=status,
        type_=type_,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryThirdPartyNotifications)
async def query_third_party_notifications_async(
    end_date: Optional[str] = None,
    external_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    source: Optional[Union[str, QueryThirdPartyNotificationsSourceEnum]] = None,
    start_date: Optional[str] = None,
    status: Optional[Union[str, QueryThirdPartyNotificationsStatusEnum]] = None,
    type_: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query third party notifications (queryThirdPartyNotifications)

    Query third party notifications.
    Other detail info:

      * Returns : Third Party Platform notifications

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/notifications

        method: GET

        tags: ["IAP(Notification)"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end_date: (endDate) OPTIONAL str in query

        external_id: (externalId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        source: (source) OPTIONAL Union[str, SourceEnum] in query

        start_date: (startDate) OPTIONAL str in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        type_: (type) OPTIONAL str in query

    Responses:
        200: OK - NotificationPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryThirdPartyNotifications.create(
        end_date=end_date,
        external_id=external_id,
        limit=limit,
        offset=offset,
        source=source,
        start_date=start_date,
        status=status,
        type_=type_,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
