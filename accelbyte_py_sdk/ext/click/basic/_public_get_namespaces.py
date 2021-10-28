# justice-basic-service (1.23.0)

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
from ....api.basic import public_get_namespaces as public_get_namespaces_internal
from ....api.basic.models import ErrorEntity
from ....api.basic.models import NamespaceInfo


@click.command()
@click.option("--active_only", "active_only", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def public_get_namespaces(
        active_only: Optional[bool] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(public_get_namespaces_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = public_get_namespaces_internal(
        active_only=active_only,
    )
    if error:
        raise Exception(f"publicGetNamespaces failed: {str(error)}")
    click.echo("publicGetNamespaces success")
