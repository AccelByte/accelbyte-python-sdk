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
    query_user_entitlements as query_user_entitlements_internal,
)
from accelbyte_py_sdk.api.platform.models import EntitlementPagingSlicedResult


@click.command()
@click.argument("user_id", type=str)
@click.option("--active_only", "active_only", type=bool)
@click.option("--app_type", "app_type", type=str)
@click.option("--collection_id", "collection_id", type=str)
@click.option("--entitlement_clazz", "entitlement_clazz", type=str)
@click.option("--entitlement_name", "entitlement_name", type=str)
@click.option("--features", "features", type=str)
@click.option("--fuzzy_match_name", "fuzzy_match_name", type=bool)
@click.option("--ignore_active_date", "ignore_active_date", type=bool)
@click.option("--item_id", "item_id", type=str)
@click.option("--limit", "limit", type=int)
@click.option("--offset", "offset", type=int)
@click.option("--origin", "origin", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def query_user_entitlements(
    user_id: str,
    active_only: Optional[bool] = None,
    app_type: Optional[str] = None,
    collection_id: Optional[str] = None,
    entitlement_clazz: Optional[str] = None,
    entitlement_name: Optional[str] = None,
    features: Optional[str] = None,
    fuzzy_match_name: Optional[bool] = None,
    ignore_active_date: Optional[bool] = None,
    item_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    origin: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(query_user_entitlements_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    if features is not None:
        try:
            features_json = json.loads(features)
            features = [str(i0) for i0 in features_json]
        except ValueError as e:
            raise Exception(f"Invalid JSON for 'features'. {str(e)}") from e
    if item_id is not None:
        try:
            item_id_json = json.loads(item_id)
            item_id = [str(i0) for i0 in item_id_json]
        except ValueError as e:
            raise Exception(f"Invalid JSON for 'itemId'. {str(e)}") from e
    result, error = query_user_entitlements_internal(
        user_id=user_id,
        active_only=active_only,
        app_type=app_type,
        collection_id=collection_id,
        entitlement_clazz=entitlement_clazz,
        entitlement_name=entitlement_name,
        features=features,
        fuzzy_match_name=fuzzy_match_name,
        ignore_active_date=ignore_active_date,
        item_id=item_id,
        limit=limit,
        offset=offset,
        origin=origin,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"queryUserEntitlements failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


query_user_entitlements.operation_id = "queryUserEntitlements"
query_user_entitlements.is_deprecated = False
