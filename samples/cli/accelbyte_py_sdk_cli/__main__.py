import click

from ._add_client_permissions import add_client_permissions
from ._add_role_managers import add_role_managers
from ._add_role_members import add_role_members
from ._add_user_ban import add_user_ban
from ._add_user_permissions import add_user_permissions
from ._add_user_role import add_user_role
from ._create_client import create_client
from ._create_role import create_role
from ._create_role_permission import create_role_permission
from ._create_stat import create_stat
from ._delete_client import delete_client
from ._delete_client_permission import delete_client_permission
from ._delete_role import delete_role
from ._delete_role_as_admin import delete_role_as_admin
from ._delete_role_managers import delete_role_managers
from ._delete_role_members import delete_role_members
from ._delete_role_permission import delete_role_permission
from ._delete_role_permissions import delete_role_permissions
from ._delete_stat import delete_stat
from ._delete_user import delete_user
from ._delete_user_permission import delete_user_permission
from ._delete_user_permissions import delete_user_permissions
from ._delete_user_role import delete_user_role
from ._delete_user_roles import delete_user_roles
from ._get_ban_reasons import get_ban_reasons
from ._get_ban_types import get_ban_types
from ._get_ban_types_with_namespace import get_ban_types_with_namespace
from ._get_banned_users import get_banned_users
from ._get_clients_by_namespace import get_clients_by_namespace
from ._get_clients_by_namespace_by_id import get_clients_by_namespace_by_id
from ._get_public_user_by_id import get_public_user_by_id
from ._get_users_by_email_addresses import get_users_by_email_addresses
from ._get_user_by_user_id import get_user_by_user_id
from ._get_my_admin_user import get_my_admin_user
from ._get_my_public_user import get_my_public_user
from ._get_role_by_id import get_role_by_id
from ._get_role_managers import get_role_managers
from ._get_role_members import get_role_members
from ._get_search_user import get_search_user
from ._get_stat import get_stat
from ._get_stats import get_stats
from ._get_user_bans import get_user_bans
from ._get_user_roles import get_user_roles
from ._get_verification_code import get_verification_code
from ._login import login
from ._login_client import login_client
from ._logout import logout
from ._query_stats import query_stats
from ._register_user import register_user
from ._set_role_as_admin import set_role_as_admin
from ._send_verification_code import send_verification_code
from ._update_client import update_client
from ._update_client_permissions import update_client_permissions
from ._update_role import update_role
from ._update_stat import update_stat
from ._update_user import update_user
from ._update_user_ban import update_user_ban
from ._update_user_permissions import update_user_permissions
from ._update_user_roles import update_user_roles
from ._verify_account import verify_account
from ._verify_code import verify_code
from ._verify_user import verify_user

import accelbyte_py_sdk


@click.group()
def entry_point():
    accelbyte_py_sdk.initialize()


entry_point.add_command(add_client_permissions)
entry_point.add_command(add_role_managers)
entry_point.add_command(add_role_members)
entry_point.add_command(add_user_ban)
entry_point.add_command(add_user_permissions)
entry_point.add_command(add_user_role)
entry_point.add_command(create_client)
entry_point.add_command(create_role)
entry_point.add_command(create_role_permission)
entry_point.add_command(create_stat)
entry_point.add_command(delete_client)
entry_point.add_command(delete_client_permission)
entry_point.add_command(delete_role)
entry_point.add_command(delete_role_as_admin)
entry_point.add_command(delete_role_managers)
entry_point.add_command(delete_role_members)
entry_point.add_command(delete_role_permission)
entry_point.add_command(delete_role_permissions)
entry_point.add_command(delete_stat)
entry_point.add_command(delete_user)
entry_point.add_command(delete_user_permission)
entry_point.add_command(delete_user_permissions)
entry_point.add_command(delete_user_role)
entry_point.add_command(delete_user_roles)
entry_point.add_command(get_ban_reasons)
entry_point.add_command(get_ban_types)
entry_point.add_command(get_ban_types_with_namespace)
entry_point.add_command(get_banned_users)
entry_point.add_command(get_clients_by_namespace)
entry_point.add_command(get_clients_by_namespace_by_id)
entry_point.add_command(get_public_user_by_id)
entry_point.add_command(get_users_by_email_addresses)
entry_point.add_command(get_user_by_user_id)
entry_point.add_command(get_my_admin_user)
entry_point.add_command(get_my_public_user)
entry_point.add_command(get_role_by_id)
entry_point.add_command(get_role_managers)
entry_point.add_command(get_role_members)
entry_point.add_command(get_search_user)
entry_point.add_command(get_stat)
entry_point.add_command(get_stats)
entry_point.add_command(get_user_bans)
entry_point.add_command(get_user_roles)
entry_point.add_command(get_verification_code)
entry_point.add_command(login)
entry_point.add_command(login_client)
entry_point.add_command(logout)
entry_point.add_command(query_stats)
entry_point.add_command(register_user)
entry_point.add_command(set_role_as_admin)
entry_point.add_command(send_verification_code)
entry_point.add_command(update_client)
entry_point.add_command(update_client_permissions)
entry_point.add_command(update_role)
entry_point.add_command(update_stat)
entry_point.add_command(update_user)
entry_point.add_command(update_user_ban)
entry_point.add_command(update_user_permissions)
entry_point.add_command(update_user_roles)
entry_point.add_command(verify_account)
entry_point.add_command(verify_code)
entry_point.add_command(verify_user)

if __name__ == "__main__":
    entry_point()
