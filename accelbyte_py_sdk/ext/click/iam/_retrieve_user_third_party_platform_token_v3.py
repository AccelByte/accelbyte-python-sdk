import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import retrieve_user_third_party_platform_token_v3 as retrieve_user_third_party_platform_token_v3_internal
from ....api.iam.models import OauthmodelErrorResponse
from ....api.iam.models import OauthmodelTokenThirdPartyResponse


@click.command()
@click.argument("user_id", type=str)
@click.argument("platform_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def retrieve_user_third_party_platform_token_v3(
        user_id: str,
        platform_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(retrieve_user_third_party_platform_token_v3_internal.__doc__)
    result, error = retrieve_user_third_party_platform_token_v3_internal(
        user_id=user_id,
        platform_id=platform_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"RetrieveUserThirdPartyPlatformTokenV3 failed: {str(error)}")
    click.echo("RetrieveUserThirdPartyPlatformTokenV3 success")
