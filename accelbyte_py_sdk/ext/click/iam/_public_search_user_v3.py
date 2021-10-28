import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import public_search_user_v3 as public_search_user_v3_internal
from ....api.iam.models import ModelPublicUserInformationResponseV3
from ....api.iam.models import RestErrorResponse


@click.command()
@click.option("--query", type=str)
@click.option("--by", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_search_user_v3(
        query: Optional[str] = None,
        by: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_search_user_v3_internal.__doc__)
    result, error = public_search_user_v3_internal(
        query=query,
        by=by,
        namespace=namespace,
    )
    if error:
        raise Exception(f"PublicSearchUserV3 failed: {str(error)}")
    click.echo("PublicSearchUserV3 success")
