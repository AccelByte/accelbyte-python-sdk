# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-init.j2

# justice-group-service

from ._index_handler import index_handler
from ._block_handler import block_handler
from ._cmdline_handler import cmdline_handler
from ._goroutine_handler import goroutine_handler
from ._heap_handler import heap_handler
from ._profile import profile
from ._symbol_handler import symbol_handler
from ._threadcreate_handler import threadcreate_handler
from ._list_group_configuration_admin_v1 import list_group_configuration_admin_v1
from ._create_group_configuration_admin_v1 import create_group_configuration_admin_v1
from ._initiate_group_configuration_admin_v1 import (
    initiate_group_configuration_admin_v1,
)
from ._get_group_configuration_admin_v1 import get_group_configuration_admin_v1
from ._delete_group_configuration_v1 import delete_group_configuration_v1
from ._update_group_configuration_admin_v1 import update_group_configuration_admin_v1
from ._update_group_configuration_global_rule_admin_v1 import (
    update_group_configuration_global_rule_admin_v1,
)
from ._delete_group_configuration_global_rule_admin_v1 import (
    delete_group_configuration_global_rule_admin_v1,
)
from ._get_group_list_admin_v1 import get_group_list_admin_v1
from ._get_single_group_admin_v1 import get_single_group_admin_v1
from ._delete_group_admin_v1 import delete_group_admin_v1
from ._get_group_members_list_admin_v1 import get_group_members_list_admin_v1
from ._get_member_roles_list_admin_v1 import get_member_roles_list_admin_v1
from ._create_member_role_admin_v1 import create_member_role_admin_v1
from ._get_single_member_role_admin_v1 import get_single_member_role_admin_v1
from ._delete_member_role_admin_v1 import delete_member_role_admin_v1
from ._update_member_role_admin_v1 import update_member_role_admin_v1
from ._update_member_role_permission_admin_v1 import (
    update_member_role_permission_admin_v1,
)
from ._get_group_list_public_v1 import get_group_list_public_v1
from ._create_new_group_public_v1 import create_new_group_public_v1
from ._get_single_group_public_v1 import get_single_group_public_v1
from ._update_single_group_v1 import update_single_group_v1
from ._delete_group_public_v1 import delete_group_public_v1
from ._update_patch_single_group_public_v1 import update_patch_single_group_public_v1
from ._update_group_custom_attributes_public_v1 import (
    update_group_custom_attributes_public_v1,
)
from ._accept_group_invitation_public_v1 import accept_group_invitation_public_v1
from ._reject_group_invitation_public_v1 import reject_group_invitation_public_v1
from ._join_group_v1 import join_group_v1
from ._cancel_group_join_request_v1 import cancel_group_join_request_v1
from ._get_group_join_request_public_v1 import get_group_join_request_public_v1
from ._get_group_members_list_public_v1 import get_group_members_list_public_v1
from ._update_group_custom_rule_public_v1 import update_group_custom_rule_public_v1
from ._update_group_predefined_rule_public_v1 import (
    update_group_predefined_rule_public_v1,
)
from ._delete_group_predefined_rule_public_v1 import (
    delete_group_predefined_rule_public_v1,
)
from ._leave_group_public_v1 import leave_group_public_v1
from ._get_member_roles_list_public_v1 import get_member_roles_list_public_v1
from ._update_member_role_public_v1 import update_member_role_public_v1
from ._delete_member_role_public_v1 import delete_member_role_public_v1
from ._get_group_invitation_request_public_v1 import (
    get_group_invitation_request_public_v1,
)
from ._get_user_group_information_public_v1 import get_user_group_information_public_v1
from ._invite_group_public_v1 import invite_group_public_v1
from ._accept_group_join_request_public_v1 import accept_group_join_request_public_v1
from ._reject_group_join_request_public_v1 import reject_group_join_request_public_v1
from ._kick_group_member_public_v1 import kick_group_member_public_v1
from ._get_list_group_by_i_ds_admin_v2 import get_list_group_by_i_ds_admin_v2
from ._get_user_joined_group_information_public_v2 import (
    get_user_joined_group_information_public_v2,
)
from ._admin_get_user_group_status_information_v2 import (
    admin_get_user_group_status_information_v2,
)
from ._create_new_group_public_v2 import create_new_group_public_v2
from ._get_list_group_by_i_ds_v2 import get_list_group_by_i_ds_v2
from ._update_put_single_group_public_v2 import update_put_single_group_public_v2
from ._delete_group_public_v2 import delete_group_public_v2
from ._update_patch_single_group_public_v2 import update_patch_single_group_public_v2
from ._update_group_custom_attributes_public_v2 import (
    update_group_custom_attributes_public_v2,
)
from ._accept_group_invitation_public_v2 import accept_group_invitation_public_v2
from ._reject_group_invitation_public_v2 import reject_group_invitation_public_v2
from ._get_group_invite_request_public_v2 import get_group_invite_request_public_v2
from ._join_group_v2 import join_group_v2
from ._get_group_join_request_public_v2 import get_group_join_request_public_v2
from ._leave_group_public_v2 import leave_group_public_v2
from ._update_group_custom_rule_public_v2 import update_group_custom_rule_public_v2
from ._update_group_predefined_rule_public_v2 import (
    update_group_predefined_rule_public_v2,
)
from ._delete_group_predefined_rule_public_v2 import (
    delete_group_predefined_rule_public_v2,
)
from ._get_member_roles_list_public_v2 import get_member_roles_list_public_v2
from ._update_member_role_public_v2 import update_member_role_public_v2
from ._delete_member_role_public_v2 import delete_member_role_public_v2
from ._get_user_group_information_public_v2 import get_user_group_information_public_v2
from ._get_my_group_join_request_v2 import get_my_group_join_request_v2
from ._invite_group_public_v2 import invite_group_public_v2
from ._cancel_invitation_group_member_v2 import cancel_invitation_group_member_v2
from ._accept_group_join_request_public_v2 import accept_group_join_request_public_v2
from ._reject_group_join_request_public_v2 import reject_group_join_request_public_v2
from ._kick_group_member_public_v2 import kick_group_member_public_v2
from ._get_user_group_status_information_v2 import get_user_group_status_information_v2


commands = [
    index_handler,
    block_handler,
    cmdline_handler,
    goroutine_handler,
    heap_handler,
    profile,
    symbol_handler,
    threadcreate_handler,
    list_group_configuration_admin_v1,
    create_group_configuration_admin_v1,
    initiate_group_configuration_admin_v1,
    get_group_configuration_admin_v1,
    delete_group_configuration_v1,
    update_group_configuration_admin_v1,
    update_group_configuration_global_rule_admin_v1,
    delete_group_configuration_global_rule_admin_v1,
    get_group_list_admin_v1,
    get_single_group_admin_v1,
    delete_group_admin_v1,
    get_group_members_list_admin_v1,
    get_member_roles_list_admin_v1,
    create_member_role_admin_v1,
    get_single_member_role_admin_v1,
    delete_member_role_admin_v1,
    update_member_role_admin_v1,
    update_member_role_permission_admin_v1,
    get_group_list_public_v1,
    create_new_group_public_v1,
    get_single_group_public_v1,
    update_single_group_v1,
    delete_group_public_v1,
    update_patch_single_group_public_v1,
    update_group_custom_attributes_public_v1,
    accept_group_invitation_public_v1,
    reject_group_invitation_public_v1,
    join_group_v1,
    cancel_group_join_request_v1,
    get_group_join_request_public_v1,
    get_group_members_list_public_v1,
    update_group_custom_rule_public_v1,
    update_group_predefined_rule_public_v1,
    delete_group_predefined_rule_public_v1,
    leave_group_public_v1,
    get_member_roles_list_public_v1,
    update_member_role_public_v1,
    delete_member_role_public_v1,
    get_group_invitation_request_public_v1,
    get_user_group_information_public_v1,
    invite_group_public_v1,
    accept_group_join_request_public_v1,
    reject_group_join_request_public_v1,
    kick_group_member_public_v1,
    get_list_group_by_i_ds_admin_v2,
    get_user_joined_group_information_public_v2,
    admin_get_user_group_status_information_v2,
    create_new_group_public_v2,
    get_list_group_by_i_ds_v2,
    update_put_single_group_public_v2,
    delete_group_public_v2,
    update_patch_single_group_public_v2,
    update_group_custom_attributes_public_v2,
    accept_group_invitation_public_v2,
    reject_group_invitation_public_v2,
    get_group_invite_request_public_v2,
    join_group_v2,
    get_group_join_request_public_v2,
    leave_group_public_v2,
    update_group_custom_rule_public_v2,
    update_group_predefined_rule_public_v2,
    delete_group_predefined_rule_public_v2,
    get_member_roles_list_public_v2,
    update_member_role_public_v2,
    delete_member_role_public_v2,
    get_user_group_information_public_v2,
    get_my_group_join_request_v2,
    invite_group_public_v2,
    cancel_invitation_group_member_v2,
    accept_group_join_request_public_v2,
    reject_group_join_request_public_v2,
    kick_group_member_public_v2,
    get_user_group_status_information_v2,
]
