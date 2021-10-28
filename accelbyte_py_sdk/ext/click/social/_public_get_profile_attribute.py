# justice-social-service (1.18.1)

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
from ....api.social import public_get_profile_attribute as public_get_profile_attribute_internal
from ....api.social.models import Attribute
from ....api.social.models import ErrorEntity


@click.command()
@click.argument("user_id", type=str)
@click.argument("profile_id", type=str)
@click.argument("attribute_name", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def public_get_profile_attribute(
        user_id: str,
        profile_id: str,
        attribute_name: str,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(public_get_profile_attribute_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = public_get_profile_attribute_internal(
        user_id=user_id,
        profile_id=profile_id,
        attribute_name=attribute_name,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicGetProfileAttribute failed: {str(error)}")
    click.echo("publicGetProfileAttribute success")
