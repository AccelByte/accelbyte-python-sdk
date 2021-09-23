import yaml

import click

from accelbyte_py_sdk.api.iam import admin_search_user_v3

from ._utils import login_user


@click.command()
@click.option("--query")
@click.option("--limit", type=int)
@click.option("--offset")
@click.option("--start_date")
@click.option("--end_date")
@click.option("--by")
@click.option("--namespace")
@click.option("--doc", type=bool)
def get_search_user(
        query,
        limit,
        offset,
        start_date,
        end_date,
        by,
        namespace,
        doc,
):
    login_user(None, None)
    if doc:
        click.echo(admin_search_user_v3.__doc__)
    result, error = admin_search_user_v3(
        query=query,
        limit=limit,
        offset=offset,
        start_date=start_date,
        end_date=end_date,
        by=by,
        namespace=namespace,
    )
    if error:
        raise Exception(str(error))
    click.echo("Get search user success.")
    click.echo(yaml.safe_dump(result.to_dict()))
