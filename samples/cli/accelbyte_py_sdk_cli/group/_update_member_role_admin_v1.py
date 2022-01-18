# justice-group-service (2.10.0)

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
from accelbyte_py_sdk.api.group import update_member_role_admin_v1 as update_member_role_admin_v1_internal
from accelbyte_py_sdk.api.group.models import ModelsUpdateMemberRoleRequestV1
from accelbyte_py_sdk.api.group.models import ModelsUpdateMemberRoleResponseV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse


@click.command()
@click.argument("body", type=str)
@click.argument("member_role_id", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def update_member_role_admin_v1(
        body: str,
        member_role_id: str,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(update_member_role_admin_v1_internal.__doc__)
        return
    login_as_internal(login_as)
    if body is not None:
        try:
            body_json = json.loads(body)
            body = ModelsUpdateMemberRoleRequestV1.create_from_dict(body_json)
        except ValueError as e:
            raise Exception(f"Invalid JSON for 'body'. {str(e)}") from e
    _, error = update_member_role_admin_v1_internal(
        body=body,
        member_role_id=member_role_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"updateMemberRoleAdminV1 failed: {str(error)}")
    click.echo("updateMemberRoleAdminV1 success")
