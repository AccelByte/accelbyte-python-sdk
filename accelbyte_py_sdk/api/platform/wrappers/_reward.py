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

from ..models import ConditionMatchResult
from ..models import DeleteRewardConditionRequest
from ..models import ErrorEntity
from ..models import EventPayload
from ..models import RewardCreate
from ..models import RewardInfo
from ..models import RewardPagingSlicedResult
from ..models import RewardUpdate
from ..models import ValidationErrorEntity

from ..operations.reward import CheckEventCondition
from ..operations.reward import CreateReward
from ..operations.reward import DeleteReward
from ..operations.reward import DeleteRewardConditionRecord
from ..operations.reward import ExportRewards
from ..operations.reward import GetReward
from ..operations.reward import GetReward1
from ..operations.reward import GetRewardByCode
from ..operations.reward import ImportRewards
from ..operations.reward import QueryRewards
from ..operations.reward import QueryRewardsSortByEnum
from ..operations.reward import QueryRewards1
from ..operations.reward import QueryRewards1SortByEnum
from ..operations.reward import UpdateReward


@same_doc_as(CheckEventCondition)
def check_event_condition(
    reward_id: str,
    body: Optional[EventPayload] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CheckEventCondition.create(
        reward_id=reward_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CheckEventCondition)
async def check_event_condition_async(
    reward_id: str,
    body: Optional[EventPayload] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CheckEventCondition.create(
        reward_id=reward_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateReward)
def create_reward(
    body: Optional[RewardCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateReward.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateReward)
async def create_reward_async(
    body: Optional[RewardCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateReward.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteReward)
def delete_reward(
    reward_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteReward.create(
        reward_id=reward_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteReward)
async def delete_reward_async(
    reward_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteReward.create(
        reward_id=reward_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteRewardConditionRecord)
def delete_reward_condition_record(
    reward_id: str,
    body: Optional[DeleteRewardConditionRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteRewardConditionRecord.create(
        reward_id=reward_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteRewardConditionRecord)
async def delete_reward_condition_record_async(
    reward_id: str,
    body: Optional[DeleteRewardConditionRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteRewardConditionRecord.create(
        reward_id=reward_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ExportRewards)
def export_rewards(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ExportRewards.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ExportRewards)
async def export_rewards_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ExportRewards.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetReward)
def get_reward(
    reward_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetReward.create(
        reward_id=reward_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetReward)
async def get_reward_async(
    reward_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetReward.create(
        reward_id=reward_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetReward1)
def get_reward_1(
    reward_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetReward1.create(
        reward_id=reward_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetReward1)
async def get_reward_1_async(
    reward_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetReward1.create(
        reward_id=reward_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetRewardByCode)
def get_reward_by_code(
    reward_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetRewardByCode.create(
        reward_code=reward_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetRewardByCode)
async def get_reward_by_code_async(
    reward_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetRewardByCode.create(
        reward_code=reward_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ImportRewards)
def import_rewards(
    replace_existing: bool,
    file: Optional[Any] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ImportRewards.create(
        replace_existing=replace_existing,
        file=file,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ImportRewards)
async def import_rewards_async(
    replace_existing: bool,
    file: Optional[Any] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ImportRewards.create(
        replace_existing=replace_existing,
        file=file,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryRewards)
def query_rewards(
    event_topic: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[List[Union[str, QueryRewardsSortByEnum]]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryRewards.create(
        event_topic=event_topic,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryRewards)
async def query_rewards_async(
    event_topic: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[List[Union[str, QueryRewardsSortByEnum]]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryRewards.create(
        event_topic=event_topic,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryRewards1)
def query_rewards_1(
    event_topic: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[List[Union[str, QueryRewards1SortByEnum]]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryRewards1.create(
        event_topic=event_topic,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryRewards1)
async def query_rewards_1_async(
    event_topic: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[List[Union[str, QueryRewards1SortByEnum]]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryRewards1.create(
        event_topic=event_topic,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateReward)
def update_reward(
    reward_id: str,
    body: Optional[RewardUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateReward.create(
        reward_id=reward_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateReward)
async def update_reward_async(
    reward_id: str,
    body: Optional[RewardUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateReward.create(
        reward_id=reward_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
