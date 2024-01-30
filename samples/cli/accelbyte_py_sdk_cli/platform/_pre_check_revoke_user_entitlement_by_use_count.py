# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Platform Service

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
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

import json
import yaml
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from .._utils import to_dict
from accelbyte_py_sdk.api.platform import (
    pre_check_revoke_user_entitlement_by_use_count as pre_check_revoke_user_entitlement_by_use_count_internal,
)
from accelbyte_py_sdk.api.platform.models import EntitlementPrechekResult
from accelbyte_py_sdk.api.platform.models import ErrorEntity


@click.command()
@click.argument("entitlement_id", type=str)
@click.argument("user_id", type=str)
@click.argument("quantity", type=int)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def pre_check_revoke_user_entitlement_by_use_count(
    entitlement_id: str,
    user_id: str,
    quantity: int,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(pre_check_revoke_user_entitlement_by_use_count_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = pre_check_revoke_user_entitlement_by_use_count_internal(
        entitlement_id=entitlement_id,
        user_id=user_id,
        quantity=quantity,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"preCheckRevokeUserEntitlementByUseCount failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


pre_check_revoke_user_entitlement_by_use_count.operation_id = (
    "preCheckRevokeUserEntitlementByUseCount"
)
pre_check_revoke_user_entitlement_by_use_count.is_deprecated = False
