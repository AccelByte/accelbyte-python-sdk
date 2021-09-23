import click

from accelbyte_py_sdk.api.iam import admin_get_roles_v3

from ._utils import login_user


@click.command()
@click.option("--is_wildcard", type=bool, default=True)
@click.option("--limit", type=int, default=10)
@click.option("--before")
@click.option("--after")
@click.option("--doc", type=bool)
def get_user_roles(
        is_wildcard,
        limit,
        before,
        after,
        doc,
):
    login_user(None, None)
    if doc:
        click.echo(admin_get_roles_v3.__doc__)
    result, error = admin_get_roles_v3(
        is_wildcard=is_wildcard,
        limit=limit,
        before=before,
        after=after,
    )
    if error:
        raise Exception(str(error))
    click.echo("Get user roles success.")
    roles = "\n- ".join([f'{d.role_id}: {d.role_name}' for d in result.data])
    click.echo(f"Roles: \n- {roles}")
