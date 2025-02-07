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

from ..models import ResponseError

from ..operations.anonymization import AdminDeleteAllUserChannels
from ..operations.anonymization import AdminDeleteAllUserContents
from ..operations.anonymization import AdminDeleteAllUserGroup
from ..operations.anonymization import AdminDeleteAllUserStates
from ..operations.anonymization import DeleteAllUserChannel
from ..operations.anonymization import DeleteAllUserContents
from ..operations.anonymization import DeleteAllUserGroup
from ..operations.anonymization import DeleteAllUserStates


@same_doc_as(AdminDeleteAllUserChannels)
def admin_delete_all_user_channels(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete all user channel (AdminDeleteAllUserChannels)

    Delete all user channel

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Channel deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773502: Channel not found)

        500: Internal Server Error - ResponseError (773501: Unable to delete channel)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteAllUserChannels.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteAllUserChannels)
async def admin_delete_all_user_channels_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete all user channel (AdminDeleteAllUserChannels)

    Delete all user channel

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Channel deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773502: Channel not found)

        500: Internal Server Error - ResponseError (773501: Unable to delete channel)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteAllUserChannels.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteAllUserContents)
def admin_delete_all_user_contents(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete all user content (AdminDeleteAllUserContents)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/contents

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Users content's deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773402: Content not found)

        500: Internal Server Error - ResponseError (773401: Unable to get all user content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteAllUserContents.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteAllUserContents)
async def admin_delete_all_user_contents_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete all user content (AdminDeleteAllUserContents)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/contents

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Users content's deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773402: Content not found)

        500: Internal Server Error - ResponseError (773401: Unable to get all user content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteAllUserContents.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteAllUserGroup)
def admin_delete_all_user_group(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete all user group (AdminDeleteAllUserGroup)

    Delete all user group

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Groups deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773302: Groups not found)

        500: Internal Server Error - ResponseError (773301: Unable to find all user group)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteAllUserGroup.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteAllUserGroup)
async def admin_delete_all_user_group_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete all user group (AdminDeleteAllUserGroup)

    Delete all user group

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Groups deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773302: Groups not found)

        500: Internal Server Error - ResponseError (773301: Unable to find all user group)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteAllUserGroup.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteAllUserStates)
def admin_delete_all_user_states(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Remove all user related state: likes, downloads, followers, following (AdminDeleteAllUserStates)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId} [DELETE]

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/states

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (User stats deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773602: user states are not found: content not found)

        500: Internal Server Error - ResponseError (773601: Unable to get all user contents/Unable to delete user states)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteAllUserStates.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteAllUserStates)
async def admin_delete_all_user_states_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Remove all user related state: likes, downloads, followers, following (AdminDeleteAllUserStates)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId} [DELETE]

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/states

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (User stats deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773602: user states are not found: content not found)

        500: Internal Server Error - ResponseError (773601: Unable to get all user contents/Unable to delete user states)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteAllUserStates.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteAllUserChannel)
def delete_all_user_channel(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete all user channel (DeleteAllUserChannel)

    Delete all user channel

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Content deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773502: Channel not found)

        500: Internal Server Error - ResponseError (773501: Unable to delete channel)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteAllUserChannel.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteAllUserChannel)
async def delete_all_user_channel_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete all user channel (DeleteAllUserChannel)

    Delete all user channel

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Content deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773502: Channel not found)

        500: Internal Server Error - ResponseError (773501: Unable to delete channel)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteAllUserChannel.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteAllUserContents)
def delete_all_user_contents(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete all user content (DeleteAllUserContents)

    Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (User content's deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773402: Content not found | 771601: Creator not found)

        500: Internal Server Error - ResponseError (773401: Unable to get all user content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteAllUserContents.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteAllUserContents)
async def delete_all_user_contents_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete all user content (DeleteAllUserContents)

    Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (User content's deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773402: Content not found | 771601: Creator not found)

        500: Internal Server Error - ResponseError (773401: Unable to get all user content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteAllUserContents.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteAllUserGroup)
def delete_all_user_group(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete all user group (DeleteAllUserGroup)

    Delete all user group

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (groups deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773302: Groups not found)

        500: Internal Server Error - ResponseError (773301: Unable to find all user group)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteAllUserGroup.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteAllUserGroup)
async def delete_all_user_group_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete all user group (DeleteAllUserGroup)

    Delete all user group

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (groups deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773302: Groups not found)

        500: Internal Server Error - ResponseError (773301: Unable to find all user group)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteAllUserGroup.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteAllUserStates)
def delete_all_user_states(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Remove all user related state: likes, downloads, followers, following (DeleteAllUserStates)

    Required permission NAMESPACE:{namespace}:USER:{userId}" [DELETE]

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/states

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (User stats deleted)

        400: Bad Request - ResponseError (773602: user states are not found: content not found)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (773601: Unable to get all user contents/Unable to delete user states)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteAllUserStates.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteAllUserStates)
async def delete_all_user_states_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Remove all user related state: likes, downloads, followers, following (DeleteAllUserStates)

    Required permission NAMESPACE:{namespace}:USER:{userId}" [DELETE]

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/states

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (User stats deleted)

        400: Bad Request - ResponseError (773602: user states are not found: content not found)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (773601: Unable to get all user contents/Unable to delete user states)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteAllUserStates.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
