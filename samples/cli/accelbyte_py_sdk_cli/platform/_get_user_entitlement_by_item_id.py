# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Platform Service (4.31.1)

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
    get_user_entitlement_by_item_id as get_user_entitlement_by_item_id_internal,
)
from accelbyte_py_sdk.api.platform.models import EntitlementInfo
from accelbyte_py_sdk.api.platform.models import ErrorEntity


@click.command()
@click.argument("user_id", type=str)
@click.argument("item_id", type=str)
@click.option("--active_only", "active_only", type=bool)
@click.option("--entitlement_clazz", "entitlement_clazz", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def get_user_entitlement_by_item_id(
    user_id: str,
    item_id: str,
    active_only: Optional[bool] = None,
    entitlement_clazz: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(get_user_entitlement_by_item_id_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = get_user_entitlement_by_item_id_internal(
        user_id=user_id,
        item_id=item_id,
        active_only=active_only,
        entitlement_clazz=entitlement_clazz,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"getUserEntitlementByItemId failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


get_user_entitlement_by_item_id.operation_id = "getUserEntitlementByItemId"
get_user_entitlement_by_item_id.is_deprecated = False
