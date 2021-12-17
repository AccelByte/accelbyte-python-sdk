# justice-social-service (1.22.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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
from ....api.social import bulk_update_user_stat_item_1 as bulk_update_user_stat_item_1_internal
from ....api.social.models import BulkStatItemOperationResult
from ....api.social.models import BulkUserStatItemUpdate
from ....api.social.models import ValidationErrorEntity


@click.command()
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def bulk_update_user_stat_item_1(
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(bulk_update_user_stat_item_1_internal.__doc__)
        return
    login_as_internal(login_as)
    try:
        body_json = json.loads(body)
        body = [BulkUserStatItemUpdate.create_from_dict(i0) for i0 in body_json]
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}") from e
    _, error = bulk_update_user_stat_item_1_internal(
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"bulkUpdateUserStatItem_1 failed: {str(error)}")
    click.echo("bulkUpdateUserStatItem_1 success")
