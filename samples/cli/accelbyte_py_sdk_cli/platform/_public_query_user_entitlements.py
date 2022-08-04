# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# Accelbyte Cloud Platform Service (4.12.0)

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
    public_query_user_entitlements as public_query_user_entitlements_internal,
)
from accelbyte_py_sdk.api.platform.models import EntitlementPagingSlicedResult


@click.command()
@click.argument("user_id", type=str)
@click.option("--app_type", "app_type", type=str)
@click.option("--entitlement_clazz", "entitlement_clazz", type=str)
@click.option("--entitlement_name", "entitlement_name", type=str)
@click.option("--item_id", "item_id", type=str)
@click.option("--limit", "limit", type=int)
@click.option("--offset", "offset", type=int)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def public_query_user_entitlements(
    user_id: str,
    app_type: Optional[str] = None,
    entitlement_clazz: Optional[str] = None,
    entitlement_name: Optional[str] = None,
    item_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(public_query_user_entitlements_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    if item_id is not None:
        try:
            item_id_json = json.loads(item_id)
            item_id = [str(i0) for i0 in item_id_json]
        except ValueError as e:
            raise Exception(f"Invalid JSON for 'itemId'. {str(e)}") from e
    result, error = public_query_user_entitlements_internal(
        user_id=user_id,
        app_type=app_type,
        entitlement_clazz=entitlement_clazz,
        entitlement_name=entitlement_name,
        item_id=item_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"publicQueryUserEntitlements failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


public_query_user_entitlements.operation_id = "publicQueryUserEntitlements"
public_query_user_entitlements.is_deprecated = False
