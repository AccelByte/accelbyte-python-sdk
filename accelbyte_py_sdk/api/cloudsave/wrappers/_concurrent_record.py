# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
# 
# Code generated. DO NOT EDIT!

# template file: justice_py_sdk_codegen/__main__.py

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

from ..models import ModelsConcurrentRecordRequest
from ..models import ModelsResponseError

from ..operations.concurrent_record import PutGameRecordConcurrentHandlerV1
from ..operations.concurrent_record import PutPlayerPublicRecordConcurrentHandlerV1


@same_doc_as(PutGameRecordConcurrentHandlerV1)
def put_game_record_concurrent_handler_v1(body: ModelsConcurrentRecordRequest, key: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PutGameRecordConcurrentHandlerV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PutGameRecordConcurrentHandlerV1)
async def put_game_record_concurrent_handler_v1_async(body: ModelsConcurrentRecordRequest, key: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PutGameRecordConcurrentHandlerV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(PutPlayerPublicRecordConcurrentHandlerV1)
def put_player_public_record_concurrent_handler_v1(body: ModelsConcurrentRecordRequest, key: str, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PutPlayerPublicRecordConcurrentHandlerV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PutPlayerPublicRecordConcurrentHandlerV1)
async def put_player_public_record_concurrent_handler_v1_async(body: ModelsConcurrentRecordRequest, key: str, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PutPlayerPublicRecordConcurrentHandlerV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)
