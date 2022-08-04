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
from ....core import deprecated
from ....core import same_doc_as

from ..models import ModelsEvent
from ..models import ModelsEventResponse

from ..operations.event import GetEventByEventIDHandler
from ..operations.event import GetEventByEventTypeAndEventIDHandler
from ..operations.event import GetEventByEventTypeHandler
from ..operations.event import GetEventByNamespaceHandler
from ..operations.event import GetEventByUserEventIDAndEventTypeHandler
from ..operations.event import GetEventByUserIDAndEventIDHandler
from ..operations.event import GetEventByUserIDAndEventTypeHandler
from ..operations.event import GetEventByUserIDHandler
from ..operations.event import PostEventHandler


@deprecated
@same_doc_as(GetEventByEventIDHandler)
def get_event_by_event_id_handler(
    end_date: str,
    event_id: float,
    page_size: int,
    start_date: str,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetEventByEventIDHandler.create(
        end_date=end_date,
        event_id=event_id,
        page_size=page_size,
        start_date=start_date,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetEventByEventIDHandler)
async def get_event_by_event_id_handler_async(
    end_date: str,
    event_id: float,
    page_size: int,
    start_date: str,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetEventByEventIDHandler.create(
        end_date=end_date,
        event_id=event_id,
        page_size=page_size,
        start_date=start_date,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetEventByEventTypeAndEventIDHandler)
def get_event_by_event_type_and_event_id_handler(
    end_date: str,
    event_id: float,
    event_type: float,
    page_size: int,
    start_date: str,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetEventByEventTypeAndEventIDHandler.create(
        end_date=end_date,
        event_id=event_id,
        event_type=event_type,
        page_size=page_size,
        start_date=start_date,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetEventByEventTypeAndEventIDHandler)
async def get_event_by_event_type_and_event_id_handler_async(
    end_date: str,
    event_id: float,
    event_type: float,
    page_size: int,
    start_date: str,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetEventByEventTypeAndEventIDHandler.create(
        end_date=end_date,
        event_id=event_id,
        event_type=event_type,
        page_size=page_size,
        start_date=start_date,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetEventByEventTypeHandler)
def get_event_by_event_type_handler(
    end_date: str,
    event_type: float,
    page_size: int,
    start_date: str,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetEventByEventTypeHandler.create(
        end_date=end_date,
        event_type=event_type,
        page_size=page_size,
        start_date=start_date,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetEventByEventTypeHandler)
async def get_event_by_event_type_handler_async(
    end_date: str,
    event_type: float,
    page_size: int,
    start_date: str,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetEventByEventTypeHandler.create(
        end_date=end_date,
        event_type=event_type,
        page_size=page_size,
        start_date=start_date,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetEventByNamespaceHandler)
def get_event_by_namespace_handler(
    end_date: str,
    page_size: int,
    start_date: str,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetEventByNamespaceHandler.create(
        end_date=end_date,
        page_size=page_size,
        start_date=start_date,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetEventByNamespaceHandler)
async def get_event_by_namespace_handler_async(
    end_date: str,
    page_size: int,
    start_date: str,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetEventByNamespaceHandler.create(
        end_date=end_date,
        page_size=page_size,
        start_date=start_date,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetEventByUserEventIDAndEventTypeHandler)
def get_event_by_user_event_id_and_event_type_handler(
    end_date: str,
    event_id: float,
    event_type: float,
    page_size: int,
    start_date: str,
    user_id: str,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetEventByUserEventIDAndEventTypeHandler.create(
        end_date=end_date,
        event_id=event_id,
        event_type=event_type,
        page_size=page_size,
        start_date=start_date,
        user_id=user_id,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetEventByUserEventIDAndEventTypeHandler)
async def get_event_by_user_event_id_and_event_type_handler_async(
    end_date: str,
    event_id: float,
    event_type: float,
    page_size: int,
    start_date: str,
    user_id: str,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetEventByUserEventIDAndEventTypeHandler.create(
        end_date=end_date,
        event_id=event_id,
        event_type=event_type,
        page_size=page_size,
        start_date=start_date,
        user_id=user_id,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetEventByUserIDAndEventIDHandler)
def get_event_by_user_id_and_event_id_handler(
    end_date: str,
    event_id: float,
    page_size: int,
    start_date: str,
    user_id: str,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetEventByUserIDAndEventIDHandler.create(
        end_date=end_date,
        event_id=event_id,
        page_size=page_size,
        start_date=start_date,
        user_id=user_id,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetEventByUserIDAndEventIDHandler)
async def get_event_by_user_id_and_event_id_handler_async(
    end_date: str,
    event_id: float,
    page_size: int,
    start_date: str,
    user_id: str,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetEventByUserIDAndEventIDHandler.create(
        end_date=end_date,
        event_id=event_id,
        page_size=page_size,
        start_date=start_date,
        user_id=user_id,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetEventByUserIDAndEventTypeHandler)
def get_event_by_user_id_and_event_type_handler(
    end_date: str,
    event_type: float,
    page_size: int,
    start_date: str,
    user_id: str,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetEventByUserIDAndEventTypeHandler.create(
        end_date=end_date,
        event_type=event_type,
        page_size=page_size,
        start_date=start_date,
        user_id=user_id,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetEventByUserIDAndEventTypeHandler)
async def get_event_by_user_id_and_event_type_handler_async(
    end_date: str,
    event_type: float,
    page_size: int,
    start_date: str,
    user_id: str,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetEventByUserIDAndEventTypeHandler.create(
        end_date=end_date,
        event_type=event_type,
        page_size=page_size,
        start_date=start_date,
        user_id=user_id,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetEventByUserIDHandler)
def get_event_by_user_id_handler(
    end_date: str,
    page_size: int,
    start_date: str,
    user_id: str,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetEventByUserIDHandler.create(
        end_date=end_date,
        page_size=page_size,
        start_date=start_date,
        user_id=user_id,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetEventByUserIDHandler)
async def get_event_by_user_id_handler_async(
    end_date: str,
    page_size: int,
    start_date: str,
    user_id: str,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetEventByUserIDHandler.create(
        end_date=end_date,
        page_size=page_size,
        start_date=start_date,
        user_id=user_id,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PostEventHandler)
def post_event_handler(
    body: ModelsEvent,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PostEventHandler.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PostEventHandler)
async def post_event_handler_async(
    body: ModelsEvent,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PostEventHandler.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
