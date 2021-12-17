# justice-legal-service (1.15.0)

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
from accelbyte_py_sdk.api.legal import publish_policy_version as publish_policy_version_internal
from accelbyte_py_sdk.api.legal.models import ErrorEntity


@click.command()
@click.argument("policy_version_id", type=str)
@click.option("--should_notify", "should_notify", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def publish_policy_version(
        policy_version_id: str,
        should_notify: Optional[bool] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(publish_policy_version_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = publish_policy_version_internal(
        policy_version_id=policy_version_id,
        should_notify=should_notify,
    )
    if error:
        raise Exception(f"publishPolicyVersion failed: {str(error)}")
    click.echo("publishPolicyVersion success")
