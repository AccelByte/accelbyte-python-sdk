# justice-platform-service (3.34.0)

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
from ....api.platform import get_key_group_dynamic as get_key_group_dynamic_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import KeyGroupDynamicInfo


@click.command()
@click.argument("key_group_id", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def get_key_group_dynamic(
        key_group_id: str,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(get_key_group_dynamic_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = get_key_group_dynamic_internal(
        key_group_id=key_group_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getKeyGroupDynamic failed: {str(error)}")
    click.echo("getKeyGroupDynamic success")
