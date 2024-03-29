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
    exists_any_user_active_entitlement as exists_any_user_active_entitlement_internal,
)
from accelbyte_py_sdk.api.platform.models import Ownership


@click.command()
@click.argument("user_id", type=str)
@click.option("--app_ids", "app_ids", type=str)
@click.option("--item_ids", "item_ids", type=str)
@click.option("--platform", "platform", type=str)
@click.option("--skus", "skus", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def exists_any_user_active_entitlement(
    user_id: str,
    app_ids: Optional[str] = None,
    item_ids: Optional[str] = None,
    platform: Optional[str] = None,
    skus: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(exists_any_user_active_entitlement_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    if app_ids is not None:
        try:
            app_ids_json = json.loads(app_ids)
            app_ids = [str(i0) for i0 in app_ids_json]
        except ValueError as e:
            raise Exception(f"Invalid JSON for 'appIds'. {str(e)}") from e
    if item_ids is not None:
        try:
            item_ids_json = json.loads(item_ids)
            item_ids = [str(i0) for i0 in item_ids_json]
        except ValueError as e:
            raise Exception(f"Invalid JSON for 'itemIds'. {str(e)}") from e
    if skus is not None:
        try:
            skus_json = json.loads(skus)
            skus = [str(i0) for i0 in skus_json]
        except ValueError as e:
            raise Exception(f"Invalid JSON for 'skus'. {str(e)}") from e
    result, error = exists_any_user_active_entitlement_internal(
        user_id=user_id,
        app_ids=app_ids,
        item_ids=item_ids,
        platform=platform,
        skus=skus,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"existsAnyUserActiveEntitlement failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


exists_any_user_active_entitlement.operation_id = "existsAnyUserActiveEntitlement"
exists_any_user_active_entitlement.is_deprecated = False
