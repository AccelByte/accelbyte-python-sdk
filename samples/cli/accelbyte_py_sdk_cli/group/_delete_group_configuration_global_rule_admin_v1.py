# justice-group-service (2.9.0)

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
from accelbyte_py_sdk.api.group import delete_group_configuration_global_rule_admin_v1 as delete_group_configuration_global_rule_admin_v1_internal
from accelbyte_py_sdk.api.group.models import ModelsUpdateGroupConfigurationResponseV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse


@click.command()
@click.argument("allowed_action", type=str)
@click.argument("configuration_code", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def delete_group_configuration_global_rule_admin_v1(
        allowed_action: str,
        configuration_code: str,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(delete_group_configuration_global_rule_admin_v1_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = delete_group_configuration_global_rule_admin_v1_internal(
        allowed_action=allowed_action,
        configuration_code=configuration_code,
        namespace=namespace,
    )
    if error:
        raise Exception(f"deleteGroupConfigurationGlobalRuleAdminV1 failed: {str(error)}")
    click.echo("deleteGroupConfigurationGlobalRuleAdminV1 success")
