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
    public_query_user_third_party_subscription as public_query_user_third_party_subscription_internal,
)
from accelbyte_py_sdk.api.platform.models import (
    ThirdPartyUserSubscriptionPagingSlicedResult,
)


@click.command()
@click.argument("platform", type=str)
@click.argument("user_id", type=str)
@click.option("--active_only", "active_only", type=bool)
@click.option("--group_id", "group_id", type=str)
@click.option("--limit", "limit", type=int)
@click.option("--offset", "offset", type=int)
@click.option("--product_id", "product_id", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def public_query_user_third_party_subscription(
    platform: str,
    user_id: str,
    active_only: Optional[bool] = None,
    group_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    product_id: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(public_query_user_third_party_subscription_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = public_query_user_third_party_subscription_internal(
        platform=platform,
        user_id=user_id,
        active_only=active_only,
        group_id=group_id,
        limit=limit,
        offset=offset,
        product_id=product_id,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"publicQueryUserThirdPartySubscription failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


public_query_user_third_party_subscription.operation_id = (
    "publicQueryUserThirdPartySubscription"
)
public_query_user_third_party_subscription.is_deprecated = False
