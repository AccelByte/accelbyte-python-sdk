# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Platform Service (4.30.2)

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
    public_get_user_entitlement_ownership_by_sku as public_get_user_entitlement_ownership_by_sku_internal,
)
from accelbyte_py_sdk.api.platform.models import TimedOwnership


@click.command()
@click.argument("user_id", type=str)
@click.argument("sku", type=str)
@click.option("--entitlement_clazz", "entitlement_clazz", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def public_get_user_entitlement_ownership_by_sku(
    user_id: str,
    sku: str,
    entitlement_clazz: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(public_get_user_entitlement_ownership_by_sku_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = public_get_user_entitlement_ownership_by_sku_internal(
        user_id=user_id,
        sku=sku,
        entitlement_clazz=entitlement_clazz,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"publicGetUserEntitlementOwnershipBySku failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


public_get_user_entitlement_ownership_by_sku.operation_id = (
    "publicGetUserEntitlementOwnershipBySku"
)
public_get_user_entitlement_ownership_by_sku.is_deprecated = False
