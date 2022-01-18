# justice-legal-service (1.16.0)

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
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
from accelbyte_py_sdk.api.legal import retrieve_policy_versions as retrieve_policy_versions_internal
from accelbyte_py_sdk.api.legal.models import ErrorEntity
from accelbyte_py_sdk.api.legal.models import RetrievePolicyVersionResponse


@click.command()
@click.option("--base_policy_id", "base_policy_id", type=str)
@click.option("--locale_id", "locale_id", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def retrieve_policy_versions(
        base_policy_id: Optional[str] = None,
        locale_id: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(retrieve_policy_versions_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = retrieve_policy_versions_internal(
        base_policy_id=base_policy_id,
        locale_id=locale_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"retrievePolicyVersions failed: {str(error)}")
    click.echo("retrievePolicyVersions success")
