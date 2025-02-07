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

from ..models import NamespaceSlotConfigInfo
from ..models import SlotConfigUpdate
from ..models import UserSlotConfigInfo

from ..operations.slot_config import DeleteNamespaceSlotConfig
from ..operations.slot_config import DeleteUserSlotConfig
from ..operations.slot_config import GetNamespaceSlotConfig
from ..operations.slot_config import GetUserSlotConfig
from ..operations.slot_config import UpdateNamespaceSlotConfig
from ..operations.slot_config import UpdateUserSlotConfig


@deprecated
@same_doc_as(DeleteNamespaceSlotConfig)
def delete_namespace_slot_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Deletes a namespace slot configuration (deleteNamespaceSlotConfig)

    ## The endpoint is going to be deprecated


    Deletes a namespace slot configuration, the configuration will be default after delete.
    Other detail info:

    Properties:
        url: /social/admin/namespaces/{namespace}/config

        method: DELETE

        tags: ["SlotConfig"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Successful delete of namespace slot config)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteNamespaceSlotConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DeleteNamespaceSlotConfig)
async def delete_namespace_slot_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Deletes a namespace slot configuration (deleteNamespaceSlotConfig)

    ## The endpoint is going to be deprecated


    Deletes a namespace slot configuration, the configuration will be default after delete.
    Other detail info:

    Properties:
        url: /social/admin/namespaces/{namespace}/config

        method: DELETE

        tags: ["SlotConfig"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Successful delete of namespace slot config)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteNamespaceSlotConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(DeleteUserSlotConfig)
def delete_user_slot_config(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Deletes a user slot configuration (deleteUserSlotConfig)

    ## The endpoint is going to be deprecated


    Deletes a user slot configuration in given namespace, the namespace slot configuration will be returned after delete.
    Other detail info:

    Properties:
        url: /social/admin/namespaces/{namespace}/users/{userId}/config

        method: DELETE

        tags: ["SlotConfig"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Successful delete of user/namespace slot config)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserSlotConfig.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DeleteUserSlotConfig)
async def delete_user_slot_config_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Deletes a user slot configuration (deleteUserSlotConfig)

    ## The endpoint is going to be deprecated


    Deletes a user slot configuration in given namespace, the namespace slot configuration will be returned after delete.
    Other detail info:

    Properties:
        url: /social/admin/namespaces/{namespace}/users/{userId}/config

        method: DELETE

        tags: ["SlotConfig"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Successful delete of user/namespace slot config)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserSlotConfig.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetNamespaceSlotConfig)
def get_namespace_slot_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Returns a namespace slot configuration (getNamespaceSlotConfig)

    ## The endpoint is going to be deprecated


    Get slot configuration for a given namespace. In case slot configuration is not set, the default will be returned.
    Other detail info:

      *  Returns : namespace slot config info

    Properties:
        url: /social/admin/namespaces/{namespace}/config

        method: GET

        tags: ["SlotConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - NamespaceSlotConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetNamespaceSlotConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetNamespaceSlotConfig)
async def get_namespace_slot_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Returns a namespace slot configuration (getNamespaceSlotConfig)

    ## The endpoint is going to be deprecated


    Get slot configuration for a given namespace. In case slot configuration is not set, the default will be returned.
    Other detail info:

      *  Returns : namespace slot config info

    Properties:
        url: /social/admin/namespaces/{namespace}/config

        method: GET

        tags: ["SlotConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - NamespaceSlotConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetNamespaceSlotConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetUserSlotConfig)
def get_user_slot_config(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Returns a user slot configuration (getUserSlotConfig)

    ## The endpoint is going to be deprecated


    Get a user slot configuration in given namespace. In case the user slot configuration is not set, the namespace configuration will be returned.
    Other detail info:

      * Returns: slot config info

    Properties:
        url: /social/admin/namespaces/{namespace}/users/{userId}/config

        method: GET

        tags: ["SlotConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - UserSlotConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserSlotConfig.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetUserSlotConfig)
async def get_user_slot_config_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Returns a user slot configuration (getUserSlotConfig)

    ## The endpoint is going to be deprecated


    Get a user slot configuration in given namespace. In case the user slot configuration is not set, the namespace configuration will be returned.
    Other detail info:

      * Returns: slot config info

    Properties:
        url: /social/admin/namespaces/{namespace}/users/{userId}/config

        method: GET

        tags: ["SlotConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - UserSlotConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserSlotConfig.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(UpdateNamespaceSlotConfig)
def update_namespace_slot_config(
    body: Optional[SlotConfigUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a namespace slot configuration (updateNamespaceSlotConfig)

    ## The endpoint is going to be deprecated


    Update a slot namespace configuration.
    Other detail info:

      *  Returns : updated namespace slot config

    Properties:
        url: /social/admin/namespaces/{namespace}/config

        method: PUT

        tags: ["SlotConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL SlotConfigUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - NamespaceSlotConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateNamespaceSlotConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(UpdateNamespaceSlotConfig)
async def update_namespace_slot_config_async(
    body: Optional[SlotConfigUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a namespace slot configuration (updateNamespaceSlotConfig)

    ## The endpoint is going to be deprecated


    Update a slot namespace configuration.
    Other detail info:

      *  Returns : updated namespace slot config

    Properties:
        url: /social/admin/namespaces/{namespace}/config

        method: PUT

        tags: ["SlotConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL SlotConfigUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - NamespaceSlotConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateNamespaceSlotConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(UpdateUserSlotConfig)
def update_user_slot_config(
    user_id: str,
    body: Optional[SlotConfigUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a user slot configuration (updateUserSlotConfig)

    ## The endpoint is going to be deprecated


    Update a user slot configuration in given namespace.
    Other detail info:

      *  Returns : updated slot config

    Properties:
        url: /social/admin/namespaces/{namespace}/users/{userId}/config

        method: PUT

        tags: ["SlotConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL SlotConfigUpdate in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - UserSlotConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateUserSlotConfig.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(UpdateUserSlotConfig)
async def update_user_slot_config_async(
    user_id: str,
    body: Optional[SlotConfigUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a user slot configuration (updateUserSlotConfig)

    ## The endpoint is going to be deprecated


    Update a user slot configuration in given namespace.
    Other detail info:

      *  Returns : updated slot config

    Properties:
        url: /social/admin/namespaces/{namespace}/users/{userId}/config

        method: PUT

        tags: ["SlotConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL SlotConfigUpdate in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - UserSlotConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateUserSlotConfig.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
