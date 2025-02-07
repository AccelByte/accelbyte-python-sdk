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
    """Check if event payload match reward condition (checkEventCondition)

    [TEST FACILITY ONLY] Forbidden in live environment. Other detail info:

      * Returns : match result

    Properties:
        url: /platform/admin/namespaces/{namespace}/rewards/{rewardId}/match

        method: PUT

        tags: ["Reward"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL EventPayload in body

        namespace: (namespace) REQUIRED str in path

        reward_id: (rewardId) REQUIRED str in path

    Responses:
        200: OK - ConditionMatchResult (successful operation)

        404: Not Found - ErrorEntity (34041: Reward [{rewardId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Check if event payload match reward condition (checkEventCondition)

    [TEST FACILITY ONLY] Forbidden in live environment. Other detail info:

      * Returns : match result

    Properties:
        url: /platform/admin/namespaces/{namespace}/rewards/{rewardId}/match

        method: PUT

        tags: ["Reward"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL EventPayload in body

        namespace: (namespace) REQUIRED str in path

        reward_id: (rewardId) REQUIRED str in path

    Responses:
        200: OK - ConditionMatchResult (successful operation)

        404: Not Found - ErrorEntity (34041: Reward [{rewardId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    body: RewardCreate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a reward (createReward)

    This API is used to create a reward.
    Other detail info:

      * Returns : created reward data
      *  Acceptable values for rewardItem's identityType are : ITEM_ID or ITEM_SKU

    Properties:
        url: /platform/admin/namespaces/{namespace}/rewards

        method: POST

        tags: ["Reward"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RewardCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - RewardInfo (successful operation)

        400: Bad Request - ErrorEntity (34023: Reward Item [{itemId}] with item type [{itemType}] is not supported for duration or endDate | 34027: Reward Item [{sku}] with item type [{itemType}] is not supported for duration or endDate)

        404: Not Found - ErrorEntity (34042: Reward item [{itemId}] does not exist in namespace [{namespace}] | 34044: Reward item [{sku}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (34071: Reward with code [{rewardCode}] already exists in namespace [{namespace}] | 34072: Duplicate reward condition [{rewardConditionName}] found in reward [{rewardCode}] | 34074: Reward Item [{itemId}] duration and end date can’t be set at the same time | 34076: Reward Item [{sku}] duration and end date can’t be set at the same time)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateReward.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateReward)
async def create_reward_async(
    body: RewardCreate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a reward (createReward)

    This API is used to create a reward.
    Other detail info:

      * Returns : created reward data
      *  Acceptable values for rewardItem's identityType are : ITEM_ID or ITEM_SKU

    Properties:
        url: /platform/admin/namespaces/{namespace}/rewards

        method: POST

        tags: ["Reward"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RewardCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - RewardInfo (successful operation)

        400: Bad Request - ErrorEntity (34023: Reward Item [{itemId}] with item type [{itemType}] is not supported for duration or endDate | 34027: Reward Item [{sku}] with item type [{itemType}] is not supported for duration or endDate)

        404: Not Found - ErrorEntity (34042: Reward item [{itemId}] does not exist in namespace [{namespace}] | 34044: Reward item [{sku}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (34071: Reward with code [{rewardCode}] already exists in namespace [{namespace}] | 34072: Duplicate reward condition [{rewardConditionName}] found in reward [{rewardCode}] | 34074: Reward Item [{itemId}] duration and end date can’t be set at the same time | 34076: Reward Item [{sku}] duration and end date can’t be set at the same time)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Delete a reward (deleteReward)

    This API is used to delete a reward by reward Id.

    Other detail info:

      * Returns : the deleted reward data

    Properties:
        url: /platform/admin/namespaces/{namespace}/rewards/{rewardId}

        method: DELETE

        tags: ["Reward"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        reward_id: (rewardId) REQUIRED str in path

    Responses:
        200: OK - RewardInfo (successful operation)

        404: Not Found - ErrorEntity (34041: Reward [{rewardId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Delete a reward (deleteReward)

    This API is used to delete a reward by reward Id.

    Other detail info:

      * Returns : the deleted reward data

    Properties:
        url: /platform/admin/namespaces/{namespace}/rewards/{rewardId}

        method: DELETE

        tags: ["Reward"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        reward_id: (rewardId) REQUIRED str in path

    Responses:
        200: OK - RewardInfo (successful operation)

        404: Not Found - ErrorEntity (34041: Reward [{rewardId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    body: DeleteRewardConditionRequest,
    reward_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a reward condition record (deleteRewardConditionRecord)

    [TEST FACILITY ONLY] Forbidden in live environment. This API is used to delete a reward condition record by reward Id and condition Name (optional).

    Other detail info:

      * Returns : 204 No Content

    Properties:
        url: /platform/admin/namespaces/{namespace}/rewards/{rewardId}/record

        method: DELETE

        tags: ["Reward"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED DeleteRewardConditionRequest in body

        namespace: (namespace) REQUIRED str in path

        reward_id: (rewardId) REQUIRED str in path

    Responses:
        204: No Content - (Delete reward success)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteRewardConditionRecord.create(
        body=body,
        reward_id=reward_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteRewardConditionRecord)
async def delete_reward_condition_record_async(
    body: DeleteRewardConditionRequest,
    reward_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a reward condition record (deleteRewardConditionRecord)

    [TEST FACILITY ONLY] Forbidden in live environment. This API is used to delete a reward condition record by reward Id and condition Name (optional).

    Other detail info:

      * Returns : 204 No Content

    Properties:
        url: /platform/admin/namespaces/{namespace}/rewards/{rewardId}/record

        method: DELETE

        tags: ["Reward"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED DeleteRewardConditionRequest in body

        namespace: (namespace) REQUIRED str in path

        reward_id: (rewardId) REQUIRED str in path

    Responses:
        204: No Content - (Delete reward success)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteRewardConditionRecord.create(
        body=body,
        reward_id=reward_id,
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
    """Export all reward configurations (exportRewards)

    Export reward configurations for a given namespace into file. At current, only JSON file is supported.

    Properties:
        url: /platform/admin/namespaces/{namespace}/rewards/export

        method: GET

        tags: ["Reward"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - Any (successful export of reward configs)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Export all reward configurations (exportRewards)

    Export reward configurations for a given namespace into file. At current, only JSON file is supported.

    Properties:
        url: /platform/admin/namespaces/{namespace}/rewards/export

        method: GET

        tags: ["Reward"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - Any (successful export of reward configs)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get a reward (getReward)

    This API is used to get reward by reward Id.
    Other detail info:

      * Returns : reward instance

    Properties:
        url: /platform/admin/namespaces/{namespace}/rewards/{rewardId}

        method: GET

        tags: ["Reward"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        reward_id: (rewardId) REQUIRED str in path

    Responses:
        200: OK - RewardInfo (successful operation)

        404: Not Found - ErrorEntity (34041: Reward [{rewardId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get a reward (getReward)

    This API is used to get reward by reward Id.
    Other detail info:

      * Returns : reward instance

    Properties:
        url: /platform/admin/namespaces/{namespace}/rewards/{rewardId}

        method: GET

        tags: ["Reward"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        reward_id: (rewardId) REQUIRED str in path

    Responses:
        200: OK - RewardInfo (successful operation)

        404: Not Found - ErrorEntity (34041: Reward [{rewardId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get a reward (getReward_1)

    This API is used to get reward by reward Id.
    Other detail info:

      * Returns : reward instance

    Properties:
        url: /platform/public/namespaces/{namespace}/rewards/{rewardId}

        method: GET

        tags: ["Reward"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        reward_id: (rewardId) REQUIRED str in path

    Responses:
        200: OK - RewardInfo (successful operation)

        404: Not Found - ErrorEntity (34041: Reward [{rewardId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get a reward (getReward_1)

    This API is used to get reward by reward Id.
    Other detail info:

      * Returns : reward instance

    Properties:
        url: /platform/public/namespaces/{namespace}/rewards/{rewardId}

        method: GET

        tags: ["Reward"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        reward_id: (rewardId) REQUIRED str in path

    Responses:
        200: OK - RewardInfo (successful operation)

        404: Not Found - ErrorEntity (34041: Reward [{rewardId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get a reward by code (getRewardByCode)

    This API is used to get reward by reward code.
    Other detail info:

      * Returns : reward instance

    Properties:
        url: /platform/public/namespaces/{namespace}/rewards/byCode

        method: GET

        tags: ["Reward"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        reward_code: (rewardCode) REQUIRED str in query

    Responses:
        200: OK - RewardInfo (successful operation)

        404: Not Found - ErrorEntity (34043: Reward with code [{rewardCode}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get a reward by code (getRewardByCode)

    This API is used to get reward by reward code.
    Other detail info:

      * Returns : reward instance

    Properties:
        url: /platform/public/namespaces/{namespace}/rewards/byCode

        method: GET

        tags: ["Reward"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        reward_code: (rewardCode) REQUIRED str in query

    Responses:
        200: OK - RewardInfo (successful operation)

        404: Not Found - ErrorEntity (34043: Reward with code [{rewardCode}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Import reward configurations (importRewards)

    Import reward configurations for a given namespace from file. At current, only JSON file is supported.

    Properties:
        url: /platform/admin/namespaces/{namespace}/rewards/import

        method: POST

        tags: ["Reward"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

        replace_existing: (replaceExisting) REQUIRED bool in query

    Responses:
        200: OK - (successful import of reward configs)

        400: Bad Request - ErrorEntity (34021: Reward data for namespace [{namespace}] is invalid | 34023: Reward Item [{itemId}] with item type [{itemType}] is not supported for duration or endDate | 34027: Reward Item [{sku}] with item type [{itemType}] is not supported for duration or endDate)

        409: Conflict - ErrorEntity (34074: Reward Item [{itemId}] duration and end date can’t be set at the same time | 34076: Reward Item [{sku}] duration and end date can’t be set at the same time)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Import reward configurations (importRewards)

    Import reward configurations for a given namespace from file. At current, only JSON file is supported.

    Properties:
        url: /platform/admin/namespaces/{namespace}/rewards/import

        method: POST

        tags: ["Reward"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

        replace_existing: (replaceExisting) REQUIRED bool in query

    Responses:
        200: OK - (successful import of reward configs)

        400: Bad Request - ErrorEntity (34021: Reward data for namespace [{namespace}] is invalid | 34023: Reward Item [{itemId}] with item type [{itemType}] is not supported for duration or endDate | 34027: Reward Item [{sku}] with item type [{itemType}] is not supported for duration or endDate)

        409: Conflict - ErrorEntity (34074: Reward Item [{itemId}] duration and end date can’t be set at the same time | 34076: Reward Item [{sku}] duration and end date can’t be set at the same time)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Query rewards by criteria (queryRewards)

    This API is used to query rewards by criteria.

    Other detail info:

      * Returns : the list of rewards

    Properties:
        url: /platform/admin/namespaces/{namespace}/rewards/byCriteria

        method: GET

        tags: ["Reward"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        event_topic: (eventTopic) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL List[Union[str, SortByEnum]] in query

    Responses:
        200: OK - RewardPagingSlicedResult (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Query rewards by criteria (queryRewards)

    This API is used to query rewards by criteria.

    Other detail info:

      * Returns : the list of rewards

    Properties:
        url: /platform/admin/namespaces/{namespace}/rewards/byCriteria

        method: GET

        tags: ["Reward"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        event_topic: (eventTopic) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL List[Union[str, SortByEnum]] in query

    Responses:
        200: OK - RewardPagingSlicedResult (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Query rewards by criteria (queryRewards_1)

    This API is used to query rewards by criteria.

    Other detail info:

      * Returns : the list of rewards

    Properties:
        url: /platform/public/namespaces/{namespace}/rewards/byCriteria

        method: GET

        tags: ["Reward"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        event_topic: (eventTopic) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL List[Union[str, SortByEnum]] in query

    Responses:
        200: OK - RewardPagingSlicedResult (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Query rewards by criteria (queryRewards_1)

    This API is used to query rewards by criteria.

    Other detail info:

      * Returns : the list of rewards

    Properties:
        url: /platform/public/namespaces/{namespace}/rewards/byCriteria

        method: GET

        tags: ["Reward"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        event_topic: (eventTopic) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL List[Union[str, SortByEnum]] in query

    Responses:
        200: OK - RewardPagingSlicedResult (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    body: RewardUpdate,
    reward_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a reward (updateReward)

    This API is used to update a reward.
    Other detail info:

      * Returns : reward instance
      *  Acceptable values for rewardItem's identityType are : ITEM_ID or ITEM_SKU

    Properties:
        url: /platform/admin/namespaces/{namespace}/rewards/{rewardId}

        method: PUT

        tags: ["Reward"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RewardUpdate in body

        namespace: (namespace) REQUIRED str in path

        reward_id: (rewardId) REQUIRED str in path

    Responses:
        200: OK - RewardInfo (successful operation)

        400: Bad Request - ErrorEntity (34023: Reward Item [{itemId}] with item type [{itemType}] is not supported for duration or endDate | 34027: Reward Item [{sku}] with item type [{itemType}] is not supported for duration or endDate)

        404: Not Found - ErrorEntity (34041: Reward [{rewardId}] does not exist in namespace [{namespace}] | 34042: Reward item [{itemId}] does not exist in namespace [{namespace}] | 34044: Reward item [{sku}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (34072: Duplicate reward condition [{rewardConditionName}] found in reward [{rewardCode}] | 34074: Reward Item [{itemId}] duration and end date can’t be set at the same time | 34076: Reward Item [{sku}] duration and end date can’t be set at the same time)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateReward.create(
        body=body,
        reward_id=reward_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateReward)
async def update_reward_async(
    body: RewardUpdate,
    reward_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a reward (updateReward)

    This API is used to update a reward.
    Other detail info:

      * Returns : reward instance
      *  Acceptable values for rewardItem's identityType are : ITEM_ID or ITEM_SKU

    Properties:
        url: /platform/admin/namespaces/{namespace}/rewards/{rewardId}

        method: PUT

        tags: ["Reward"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RewardUpdate in body

        namespace: (namespace) REQUIRED str in path

        reward_id: (rewardId) REQUIRED str in path

    Responses:
        200: OK - RewardInfo (successful operation)

        400: Bad Request - ErrorEntity (34023: Reward Item [{itemId}] with item type [{itemType}] is not supported for duration or endDate | 34027: Reward Item [{sku}] with item type [{itemType}] is not supported for duration or endDate)

        404: Not Found - ErrorEntity (34041: Reward [{rewardId}] does not exist in namespace [{namespace}] | 34042: Reward item [{itemId}] does not exist in namespace [{namespace}] | 34044: Reward item [{sku}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (34072: Duplicate reward condition [{rewardConditionName}] found in reward [{rewardCode}] | 34074: Reward Item [{itemId}] duration and end date can’t be set at the same time | 34076: Reward Item [{sku}] duration and end date can’t be set at the same time)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateReward.create(
        body=body,
        reward_id=reward_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
