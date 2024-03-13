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
    public_user_entitlement_history as public_user_entitlement_history_internal,
)
from accelbyte_py_sdk.api.platform.models import (
    UserEntitlementHistoryPagingSlicedResult,
)


@click.command()
@click.argument("user_id", type=str)
@click.option("--end_date", "end_date", type=str)
@click.option("--entitlement_clazz", "entitlement_clazz", type=str)
@click.option("--limit", "limit", type=int)
@click.option("--offset", "offset", type=int)
@click.option("--start_date", "start_date", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def public_user_entitlement_history(
    user_id: str,
    end_date: Optional[str] = None,
    entitlement_clazz: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    start_date: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(public_user_entitlement_history_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = public_user_entitlement_history_internal(
        user_id=user_id,
        end_date=end_date,
        entitlement_clazz=entitlement_clazz,
        limit=limit,
        offset=offset,
        start_date=start_date,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"publicUserEntitlementHistory failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


public_user_entitlement_history.operation_id = "publicUserEntitlementHistory"
public_user_entitlement_history.is_deprecated = False
