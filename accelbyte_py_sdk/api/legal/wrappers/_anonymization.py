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

from ..models import ErrorEntity

from ..operations.anonymization import AnonymizeUserAgreement


@same_doc_as(AnonymizeUserAgreement)
def anonymize_user_agreement(
    user_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Anonymize user's agreement record (anonymizeUserAgreement)

    This API will anonymize agreement record for specified user. Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=8 (DELETE)

    Required Permission(s):
        - ADMIN:NAMESPACE:*:LEGAL [DELETE]

    Properties:
        url: /agreement/admin/users/{userId}/anonymization/agreements

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (successful anonymize)

        404: Not Found - ErrorEntity (40045: errors.net.accelbyte.platform.legal.user_agreement_not_found)
    """
    request = AnonymizeUserAgreement.create(
        user_id=user_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AnonymizeUserAgreement)
async def anonymize_user_agreement_async(
    user_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Anonymize user's agreement record (anonymizeUserAgreement)

    This API will anonymize agreement record for specified user. Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=8 (DELETE)

    Required Permission(s):
        - ADMIN:NAMESPACE:*:LEGAL [DELETE]

    Properties:
        url: /agreement/admin/users/{userId}/anonymization/agreements

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (successful anonymize)

        404: Not Found - ErrorEntity (40045: errors.net.accelbyte.platform.legal.user_agreement_not_found)
    """
    request = AnonymizeUserAgreement.create(
        user_id=user_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
