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

from ..models import ModelsEventResponseV2
from ..models import ModelsGenericQueryPayload

from ..operations.event_v2 import GetEventSpecificUserV2Handler
from ..operations.event_v2 import GetPublicEditHistory
from ..operations.event_v2 import GetUserEventsV2Public
from ..operations.event_v2 import QueryEventStreamHandler


@same_doc_as(GetEventSpecificUserV2Handler)
def get_event_specific_user_v2_handler(
    user_id: str,
    end_date: Optional[str] = None,
    event_name: Optional[str] = None,
    offset: Optional[int] = None,
    page_size: Optional[int] = None,
    start_date: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetEventSpecificUserV2Handler.create(
        user_id=user_id,
        end_date=end_date,
        event_name=event_name,
        offset=offset,
        page_size=page_size,
        start_date=start_date,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetEventSpecificUserV2Handler)
async def get_event_specific_user_v2_handler_async(
    user_id: str,
    end_date: Optional[str] = None,
    event_name: Optional[str] = None,
    offset: Optional[int] = None,
    page_size: Optional[int] = None,
    start_date: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetEventSpecificUserV2Handler.create(
        user_id=user_id,
        end_date=end_date,
        event_name=event_name,
        offset=offset,
        page_size=page_size,
        start_date=start_date,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPublicEditHistory)
def get_public_edit_history(
    user_id: str,
    end_date: Optional[str] = None,
    offset: Optional[int] = None,
    page_size: Optional[int] = None,
    start_date: Optional[str] = None,
    type_: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPublicEditHistory.create(
        user_id=user_id,
        end_date=end_date,
        offset=offset,
        page_size=page_size,
        start_date=start_date,
        type_=type_,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPublicEditHistory)
async def get_public_edit_history_async(
    user_id: str,
    end_date: Optional[str] = None,
    offset: Optional[int] = None,
    page_size: Optional[int] = None,
    start_date: Optional[str] = None,
    type_: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPublicEditHistory.create(
        user_id=user_id,
        end_date=end_date,
        offset=offset,
        page_size=page_size,
        start_date=start_date,
        type_=type_,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserEventsV2Public)
def get_user_events_v2_public(
    user_id: str,
    end_date: Optional[str] = None,
    event_name: Optional[str] = None,
    offset: Optional[int] = None,
    page_size: Optional[int] = None,
    start_date: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserEventsV2Public.create(
        user_id=user_id,
        end_date=end_date,
        event_name=event_name,
        offset=offset,
        page_size=page_size,
        start_date=start_date,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserEventsV2Public)
async def get_user_events_v2_public_async(
    user_id: str,
    end_date: Optional[str] = None,
    event_name: Optional[str] = None,
    offset: Optional[int] = None,
    page_size: Optional[int] = None,
    start_date: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserEventsV2Public.create(
        user_id=user_id,
        end_date=end_date,
        event_name=event_name,
        offset=offset,
        page_size=page_size,
        start_date=start_date,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryEventStreamHandler)
def query_event_stream_handler(
    body: ModelsGenericQueryPayload,
    end_date: Optional[str] = None,
    offset: Optional[int] = None,
    page_size: Optional[int] = None,
    start_date: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryEventStreamHandler.create(
        body=body,
        end_date=end_date,
        offset=offset,
        page_size=page_size,
        start_date=start_date,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryEventStreamHandler)
async def query_event_stream_handler_async(
    body: ModelsGenericQueryPayload,
    end_date: Optional[str] = None,
    offset: Optional[int] = None,
    page_size: Optional[int] = None,
    start_date: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryEventStreamHandler.create(
        body=body,
        end_date=end_date,
        offset=offset,
        page_size=page_size,
        start_date=start_date,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
