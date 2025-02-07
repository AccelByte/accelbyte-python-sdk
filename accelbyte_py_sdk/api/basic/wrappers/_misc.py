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

from ..models import AddCountryGroupRequest
from ..models import AddCountryGroupResponse
from ..models import CountryGroupObject
from ..models import CountryObject
from ..models import ErrorEntity
from ..models import RetrieveCountryGroupResponse
from ..models import RetrieveTimeResponse
from ..models import UpdateCountryGroupRequest
from ..models import ValidationErrorEntity

from ..operations.misc import AddCountryGroup
from ..operations.misc import DeleteCountryGroup
from ..operations.misc import GetCountries
from ..operations.misc import GetCountryGroups
from ..operations.misc import GetLanguages
from ..operations.misc import GetTimeZones
from ..operations.misc import PublicGetCountries
from ..operations.misc import PublicGetLanguages
from ..operations.misc import PublicGetTime
from ..operations.misc import PublicGetTimeZones
from ..operations.misc import UpdateCountryGroup


@same_doc_as(AddCountryGroup)
def add_country_group(
    body: Optional[AddCountryGroupRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add a country group (addCountryGroup)

    Add a country groups
    Country code must follow ISO3166-1 alpha-2.
    Other detail info:

      * Action code : 11201
      *  Returns : newly created country group

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/misc/countrygroups

        method: POST

        tags: ["Misc"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL AddCountryGroupRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - AddCountryGroupResponse (successful operation)

        400: Bad Request - ErrorEntity (20002: validation error | 20019: unable to parse request body | 11234: Unable to {action}: A country can't be assigned to more than one country group)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        409: Conflict - ErrorEntity (11235: Unable to {action}: Country group with specified code is already exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AddCountryGroup.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AddCountryGroup)
async def add_country_group_async(
    body: Optional[AddCountryGroupRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add a country group (addCountryGroup)

    Add a country groups
    Country code must follow ISO3166-1 alpha-2.
    Other detail info:

      * Action code : 11201
      *  Returns : newly created country group

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/misc/countrygroups

        method: POST

        tags: ["Misc"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL AddCountryGroupRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - AddCountryGroupResponse (successful operation)

        400: Bad Request - ErrorEntity (20002: validation error | 20019: unable to parse request body | 11234: Unable to {action}: A country can't be assigned to more than one country group)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        409: Conflict - ErrorEntity (11235: Unable to {action}: Country group with specified code is already exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AddCountryGroup.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteCountryGroup)
def delete_country_group(
    country_group_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a country group (deleteCountryGroup)

    Delete a country groups by its country group code. This endpoint usually used for testing purpose to cleanup test data.

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/misc/countrygroups/{countryGroupCode}

        method: DELETE

        tags: ["Misc"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        country_group_code: (countryGroupCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11233: Unable to {action}: Country group with code [{countryGroupCode}] is not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteCountryGroup.create(
        country_group_code=country_group_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteCountryGroup)
async def delete_country_group_async(
    country_group_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a country group (deleteCountryGroup)

    Delete a country groups by its country group code. This endpoint usually used for testing purpose to cleanup test data.

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/misc/countrygroups/{countryGroupCode}

        method: DELETE

        tags: ["Misc"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        country_group_code: (countryGroupCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11233: Unable to {action}: Country group with code [{countryGroupCode}] is not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteCountryGroup.create(
        country_group_code=country_group_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetCountries)
def get_countries(
    lang: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List countries (getCountries)

    List countries.
    Other detail info:

      * Action code : 11204
      *  Returns : country code list

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/misc/countries

        method: GET

        tags: ["Misc"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        lang: (lang) OPTIONAL str in query

    Responses:
        200: OK - List[CountryObject] (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCountries.create(
        lang=lang,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetCountries)
async def get_countries_async(
    lang: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List countries (getCountries)

    List countries.
    Other detail info:

      * Action code : 11204
      *  Returns : country code list

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/misc/countries

        method: GET

        tags: ["Misc"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        lang: (lang) OPTIONAL str in query

    Responses:
        200: OK - List[CountryObject] (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCountries.create(
        lang=lang,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetCountryGroups)
def get_country_groups(
    group_code: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List country groups (getCountryGroups)

    List country groups. Will return all available country groups if the query param is not specified
    Other detail info:

      * Action code : 11203
      *  Returns : list of country groups

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/misc/countrygroups

        method: GET

        tags: ["Misc"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        group_code: (groupCode) OPTIONAL str in query

    Responses:
        200: OK - List[RetrieveCountryGroupResponse] (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11233: Unable to {action}: Country group with code [{countryGroupCode}] is not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCountryGroups.create(
        group_code=group_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetCountryGroups)
async def get_country_groups_async(
    group_code: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List country groups (getCountryGroups)

    List country groups. Will return all available country groups if the query param is not specified
    Other detail info:

      * Action code : 11203
      *  Returns : list of country groups

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/misc/countrygroups

        method: GET

        tags: ["Misc"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        group_code: (groupCode) OPTIONAL str in query

    Responses:
        200: OK - List[RetrieveCountryGroupResponse] (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11233: Unable to {action}: Country group with code [{countryGroupCode}] is not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCountryGroups.create(
        group_code=group_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetLanguages)
def get_languages(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List languages. (getLanguages)

    List languages.
    Other detail info:

      * Action code : 11206
      *  Returns : language list

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/misc/languages

        method: GET

        tags: ["Misc"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - Dict[str, str] (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetLanguages.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetLanguages)
async def get_languages_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List languages. (getLanguages)

    List languages.
    Other detail info:

      * Action code : 11206
      *  Returns : language list

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/misc/languages

        method: GET

        tags: ["Misc"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - Dict[str, str] (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetLanguages.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetTimeZones)
def get_time_zones(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List time zones (getTimeZones)

    List time zones.
    Other detail info:

      * Action code : 11205
      *  Returns : time zones

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/misc/timezones

        method: GET

        tags: ["Misc"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[str] (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetTimeZones.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetTimeZones)
async def get_time_zones_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List time zones (getTimeZones)

    List time zones.
    Other detail info:

      * Action code : 11205
      *  Returns : time zones

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/misc/timezones

        method: GET

        tags: ["Misc"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[str] (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetTimeZones.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicGetCountries)
def public_get_countries(
    lang: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List countries (publicGetCountries)

    List countries.
    Other detail info:

      * Returns : country code list

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/misc/countries

        method: GET

        tags: ["Misc"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        lang: (lang) OPTIONAL str in query

    Responses:
        200: OK - List[CountryObject] (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetCountries.create(
        lang=lang,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicGetCountries)
async def public_get_countries_async(
    lang: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List countries (publicGetCountries)

    List countries.
    Other detail info:

      * Returns : country code list

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/misc/countries

        method: GET

        tags: ["Misc"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        lang: (lang) OPTIONAL str in query

    Responses:
        200: OK - List[CountryObject] (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetCountries.create(
        lang=lang,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetLanguages)
def public_get_languages(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List languages. (publicGetLanguages)

    List languages.
    Other detail info:

      * Returns : language list

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/misc/languages

        method: GET

        tags: ["Misc"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetLanguages.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetLanguages)
async def public_get_languages_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List languages. (publicGetLanguages)

    List languages.
    Other detail info:

      * Returns : language list

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/misc/languages

        method: GET

        tags: ["Misc"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetLanguages.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetTime)
def public_get_time(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """Get server time (publicGetTime)

    Get server time

    Properties:
        url: /basic/v1/public/misc/time

        method: GET

        tags: ["Misc"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - RetrieveTimeResponse (Success retrieve server time)
    """
    request = PublicGetTime.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetTime)
async def public_get_time_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get server time (publicGetTime)

    Get server time

    Properties:
        url: /basic/v1/public/misc/time

        method: GET

        tags: ["Misc"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - RetrieveTimeResponse (Success retrieve server time)
    """
    request = PublicGetTime.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetTimeZones)
def public_get_time_zones(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List time zones (publicGetTimeZones)

    List time zones.
    Other detail info:

      * Returns : time zones

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/misc/timezones

        method: GET

        tags: ["Misc"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[str] (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetTimeZones.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetTimeZones)
async def public_get_time_zones_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List time zones (publicGetTimeZones)

    List time zones.
    Other detail info:

      * Returns : time zones

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/misc/timezones

        method: GET

        tags: ["Misc"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[str] (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetTimeZones.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateCountryGroup)
def update_country_group(
    country_group_code: str,
    body: Optional[UpdateCountryGroupRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a country group (updateCountryGroup)

    Update a country groups. The countryGroupCode must be exist beforehand.
    Valid update behaviour :
    - To update countryGroupName only, do not include countries key or just specify it with empty array.
    - To update countries only, do not include countryGroupName key or just specify it with blank value.
    Other detail info:

      * Action code : 11202
      *  Returns : updated country group

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/misc/countrygroups/{countryGroupCode}

        method: PUT

        tags: ["Misc"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UpdateCountryGroupRequest in body

        country_group_code: (countryGroupCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - CountryGroupObject (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body | 11234: Unable to {action}: A country can't be assigned to more than one country group)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11233: Unable to {action}: Country group with code [{countryGroupCode}] is not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateCountryGroup.create(
        country_group_code=country_group_code,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateCountryGroup)
async def update_country_group_async(
    country_group_code: str,
    body: Optional[UpdateCountryGroupRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a country group (updateCountryGroup)

    Update a country groups. The countryGroupCode must be exist beforehand.
    Valid update behaviour :
    - To update countryGroupName only, do not include countries key or just specify it with empty array.
    - To update countries only, do not include countryGroupName key or just specify it with blank value.
    Other detail info:

      * Action code : 11202
      *  Returns : updated country group

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/misc/countrygroups/{countryGroupCode}

        method: PUT

        tags: ["Misc"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UpdateCountryGroupRequest in body

        country_group_code: (countryGroupCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - CountryGroupObject (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body | 11234: Unable to {action}: A country can't be assigned to more than one country group)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11233: Unable to {action}: Country group with code [{countryGroupCode}] is not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateCountryGroup.create(
        country_group_code=country_group_code,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
