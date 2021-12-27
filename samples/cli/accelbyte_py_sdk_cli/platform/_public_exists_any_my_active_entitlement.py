# justice-platform-service (3.39.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template_file: python-cli-command.j2

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
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from accelbyte_py_sdk.api.platform import public_exists_any_my_active_entitlement as public_exists_any_my_active_entitlement_internal
from accelbyte_py_sdk.api.platform.models import Ownership


@click.command()
@click.option("--app_ids", "app_ids", type=str)
@click.option("--item_ids", "item_ids", type=str)
@click.option("--skus", "skus", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def public_exists_any_my_active_entitlement(
        app_ids: Optional[str] = None,
        item_ids: Optional[str] = None,
        skus: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(public_exists_any_my_active_entitlement_internal.__doc__)
        return
    login_as_internal(login_as)
    try:
        app_ids_json = json.loads(app_ids)
        app_ids = [str(i0) for i0 in app_ids_json]
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'appIds'. {str(e)}") from e
    try:
        item_ids_json = json.loads(item_ids)
        item_ids = [str(i0) for i0 in item_ids_json]
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'itemIds'. {str(e)}") from e
    try:
        skus_json = json.loads(skus)
        skus = [str(i0) for i0 in skus_json]
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'skus'. {str(e)}") from e
    _, error = public_exists_any_my_active_entitlement_internal(
        app_ids=app_ids,
        item_ids=item_ids,
        skus=skus,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicExistsAnyMyActiveEntitlement failed: {str(error)}")
    click.echo("publicExistsAnyMyActiveEntitlement success")