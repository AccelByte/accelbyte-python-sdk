import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import public_list_user_id_by_platform_user_i_ds_v3 as public_list_user_id_by_platform_user_i_ds_v3_internal
from ....api.iam.models import AccountcommonUserPlatforms
from ....api.iam.models import ModelPlatformUserIDRequest
from ....api.iam.models import RestErrorResponse


@click.command()
@click.argument("body", type=str)
@click.argument("platform_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_list_user_id_by_platform_user_i_ds_v3(
        body: str,
        platform_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_list_user_id_by_platform_user_i_ds_v3_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelPlatformUserIDRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = public_list_user_id_by_platform_user_i_ds_v3_internal(
        body=body,
        platform_id=platform_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"PublicListUserIDByPlatformUserIDsV3 failed: {str(error)}")
    click.echo("PublicListUserIDByPlatformUserIDsV3 success")
