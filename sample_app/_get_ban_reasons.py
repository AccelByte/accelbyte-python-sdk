import click

from accelbyte_py_sdk.api.iam import admin_get_list_ban_reason_v3

from ._utils import login_user


@click.command()
@click.option("--doc", type=bool)
def get_ban_reasons(
        doc,
):
    login_user(None, None)
    if doc:
        click.echo(admin_get_list_ban_reason_v3.__doc__)
    result, error = admin_get_list_ban_reason_v3(
    )
    if error:
        raise Exception(str(error))
    click.echo("Get ban reasons success.")
    if result and result.reasons:
        reasons = "\n- ".join([f'{r.reason}: {r.description}' for r in result.reasons])
        click.echo(f"Ban Reasons: \n- {reasons}")
