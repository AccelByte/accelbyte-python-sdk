import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import admin_search_user_v3 as admin_search_user_v3_internal
from ....api.iam.models import ModelSearchUsersResponseWithPaginationV3
from ....api.iam.models import RestErrorResponse


@click.command()
@click.option("--query", type=str)
@click.option("--limit", type=int)
@click.option("--offset", type=str)
@click.option("--start_date", type=str)
@click.option("--end_date", type=str)
@click.option("--by", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_search_user_v3(
        query: Optional[str] = None,
        limit: Optional[int] = None,
        offset: Optional[str] = None,
        start_date: Optional[str] = None,
        end_date: Optional[str] = None,
        by: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_search_user_v3_internal.__doc__)
    result, error = admin_search_user_v3_internal(
        query=query,
        limit=limit,
        offset=offset,
        start_date=start_date,
        end_date=end_date,
        by=by,
        namespace=namespace,
    )
    if error:
        raise Exception(f"AdminSearchUserV3 failed: {str(error)}")
    click.echo("AdminSearchUserV3 success")
