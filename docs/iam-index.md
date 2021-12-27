[//]: # (<< template file: justice_py_sdk_codegen/__main__.py)

# justice-iam-service Index (4.9.0)


## Operations

### Bans
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /iam/v3/admin/namespaces/{namespace}/bans/users | GET | AdminGetBannedUsersV3 | [AdminGetBannedUsersV3](../accelbyte_py_sdk/api/iam/operations/bans/admin_get_banned_users_v3.py) | [admin_get_banned_users_v3](../accelbyte_py_sdk/api/iam/wrappers/_bans.py) |
| /iam/v3/admin/bans | GET | AdminGetBansTypeV3 | [AdminGetBansTypeV3](../accelbyte_py_sdk/api/iam/operations/bans/admin_get_bans_type_v3.py) | [admin_get_bans_type_v3](../accelbyte_py_sdk/api/iam/wrappers/_bans.py) |
| /iam/v3/admin/namespaces/{namespace}/bantypes | GET | AdminGetBansTypeWithNamespaceV3 | [AdminGetBansTypeWithNamespaceV3](../accelbyte_py_sdk/api/iam/operations/bans/admin_get_bans_type_with_namespace_v3.py) | [admin_get_bans_type_with_namespace_v3](../accelbyte_py_sdk/api/iam/wrappers/_bans.py) |
| /iam/v3/admin/bans/reasons | GET | AdminGetListBanReasonV3 | [AdminGetListBanReasonV3](../accelbyte_py_sdk/api/iam/operations/bans/admin_get_list_ban_reason_v3.py) | [admin_get_list_ban_reason_v3](../accelbyte_py_sdk/api/iam/wrappers/_bans.py) |
| /iam/bans | GET | GetBansType | [GetBansType](../accelbyte_py_sdk/api/iam/operations/bans/get_bans_type.py) | [get_bans_type](../accelbyte_py_sdk/api/iam/wrappers/_bans.py) |
| /iam/bans/reasons | GET | GetListBanReason | [GetListBanReason](../accelbyte_py_sdk/api/iam/operations/bans/get_list_ban_reason.py) | [get_list_ban_reason](../accelbyte_py_sdk/api/iam/wrappers/_bans.py) |

### Clients
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /iam/clients/{clientId}/clientpermissions/{resource}/{action} | POST | AddClientPermission | [AddClientPermission](../accelbyte_py_sdk/api/iam/operations/clients/add_client_permission.py) | [add_client_permission](../accelbyte_py_sdk/api/iam/wrappers/_clients.py) |
| /iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions | POST | AdminAddClientPermissionsV3 | [AdminAddClientPermissionsV3](../accelbyte_py_sdk/api/iam/operations/clients/admin_add_client_permissions_v3.py) | [admin_add_client_permissions_v3](../accelbyte_py_sdk/api/iam/wrappers/_clients.py) |
| /iam/v3/admin/namespaces/{namespace}/clients | POST | AdminCreateClientV3 | [AdminCreateClientV3](../accelbyte_py_sdk/api/iam/operations/clients/admin_create_client_v3.py) | [admin_create_client_v3](../accelbyte_py_sdk/api/iam/wrappers/_clients.py) |
| /iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions/{resource}/{action} | DELETE | AdminDeleteClientPermissionV3 | [AdminDeleteClientPermissionV3](../accelbyte_py_sdk/api/iam/operations/clients/admin_delete_client_permission_v3.py) | [admin_delete_client_permission_v3](../accelbyte_py_sdk/api/iam/wrappers/_clients.py) |
| /iam/v3/admin/namespaces/{namespace}/clients/{clientId} | DELETE | AdminDeleteClientV3 | [AdminDeleteClientV3](../accelbyte_py_sdk/api/iam/operations/clients/admin_delete_client_v3.py) | [admin_delete_client_v3](../accelbyte_py_sdk/api/iam/wrappers/_clients.py) |
| /iam/v3/admin/namespaces/{namespace}/clients | GET | AdminGetClientsByNamespaceV3 | [AdminGetClientsByNamespaceV3](../accelbyte_py_sdk/api/iam/operations/clients/admin_get_clients_by_namespace_v3.py) | [admin_get_clients_by_namespace_v3](../accelbyte_py_sdk/api/iam/wrappers/_clients.py) |
| /iam/v3/admin/namespaces/{namespace}/clients/{clientId} | GET | AdminGetClientsbyNamespacebyIDV3 | [AdminGetClientsbyNamespacebyIDV3](../accelbyte_py_sdk/api/iam/operations/clients/admin_get_clientsby_namespaceby_idv3.py) | [admin_get_clientsby_namespaceby_idv3](../accelbyte_py_sdk/api/iam/wrappers/_clients.py) |
| /iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions | PUT | AdminUpdateClientPermissionV3 | [AdminUpdateClientPermissionV3](../accelbyte_py_sdk/api/iam/operations/clients/admin_update_client_permission_v3.py) | [admin_update_client_permission_v3](../accelbyte_py_sdk/api/iam/wrappers/_clients.py) |
| /iam/v3/admin/namespaces/{namespace}/clients/{clientId} | PATCH | AdminUpdateClientV3 | [AdminUpdateClientV3](../accelbyte_py_sdk/api/iam/operations/clients/admin_update_client_v3.py) | [admin_update_client_v3](../accelbyte_py_sdk/api/iam/wrappers/_clients.py) |
| /iam/clients | POST | CreateClient | [CreateClient](../accelbyte_py_sdk/api/iam/operations/clients/create_client.py) | [create_client](../accelbyte_py_sdk/api/iam/wrappers/_clients.py) |
| /iam/namespaces/{namespace}/clients | POST | CreateClientByNamespace | [CreateClientByNamespace](../accelbyte_py_sdk/api/iam/operations/clients/create_client_by_namespace.py) | [create_client_by_namespace](../accelbyte_py_sdk/api/iam/wrappers/_clients.py) |
| /iam/clients/{clientId} | DELETE | DeleteClient | [DeleteClient](../accelbyte_py_sdk/api/iam/operations/clients/delete_client.py) | [delete_client](../accelbyte_py_sdk/api/iam/wrappers/_clients.py) |
| /iam/namespaces/{namespace}/clients/{clientId} | DELETE | DeleteClientByNamespace | [DeleteClientByNamespace](../accelbyte_py_sdk/api/iam/operations/clients/delete_client_by_namespace.py) | [delete_client_by_namespace](../accelbyte_py_sdk/api/iam/wrappers/_clients.py) |
| /iam/clients/{clientId}/clientpermissions/{resource}/{action} | DELETE | DeleteClientPermission | [DeleteClientPermission](../accelbyte_py_sdk/api/iam/operations/clients/delete_client_permission.py) | [delete_client_permission](../accelbyte_py_sdk/api/iam/wrappers/_clients.py) |
| /iam/clients/{clientId} | GET | GetClient | [GetClient](../accelbyte_py_sdk/api/iam/operations/clients/get_client.py) | [get_client](../accelbyte_py_sdk/api/iam/wrappers/_clients.py) |
| /iam/clients | GET | GetClients | [GetClients](../accelbyte_py_sdk/api/iam/operations/clients/get_clients.py) | [get_clients](../accelbyte_py_sdk/api/iam/wrappers/_clients.py) |
| /iam/namespaces/{namespace}/clients | GET | GetClientsbyNamespace | [GetClientsbyNamespace](../accelbyte_py_sdk/api/iam/operations/clients/get_clientsby_namespace.py) | [get_clientsby_namespace](../accelbyte_py_sdk/api/iam/wrappers/_clients.py) |
| /iam/clients/{clientId} | PUT | UpdateClient | [UpdateClient](../accelbyte_py_sdk/api/iam/operations/clients/update_client.py) | [update_client](../accelbyte_py_sdk/api/iam/wrappers/_clients.py) |
| /iam/clients/{clientId}/clientpermissions | POST | UpdateClientPermission | [UpdateClientPermission](../accelbyte_py_sdk/api/iam/operations/clients/update_client_permission.py) | [update_client_permission](../accelbyte_py_sdk/api/iam/wrappers/_clients.py) |
| /iam/clients/{clientId}/secret | PUT | UpdateClientSecret | [UpdateClientSecret](../accelbyte_py_sdk/api/iam/operations/clients/update_client_secret.py) | [update_client_secret](../accelbyte_py_sdk/api/iam/wrappers/_clients.py) |

### OAuth
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /iam/oauth/authorize | POST | Authorization | [Authorization](../accelbyte_py_sdk/api/iam/operations/o_auth/authorization.py) | [authorization](../accelbyte_py_sdk/api/iam/wrappers/_o_auth.py) |
| /iam/oauth/jwks | GET | GetJWKS | [GetJWKS](../accelbyte_py_sdk/api/iam/operations/o_auth/get_jwks.py) | [get_jwks](../accelbyte_py_sdk/api/iam/wrappers/_o_auth.py) |
| /iam/oauth/revocationlist | GET | GetRevocationList | [GetRevocationList](../accelbyte_py_sdk/api/iam/operations/o_auth/get_revocation_list.py) | [get_revocation_list](../accelbyte_py_sdk/api/iam/wrappers/_o_auth.py) |
| /iam/oauth/namespaces/{namespace}/platforms/{platformId}/token | POST | PlatformTokenRequestHandler | [PlatformTokenRequestHandler](../accelbyte_py_sdk/api/iam/operations/o_auth/platform_token_request_handler.py) | [platform_token_request_handler](../accelbyte_py_sdk/api/iam/wrappers/_o_auth.py) |
| /iam/oauth/revoke/user | POST | RevokeAUser | [RevokeAUser](../accelbyte_py_sdk/api/iam/operations/o_auth/revoke_a_user.py) | [revoke_a_user](../accelbyte_py_sdk/api/iam/wrappers/_o_auth.py) |
| /iam/oauth/revoke/token | POST | RevokeToken | [RevokeToken](../accelbyte_py_sdk/api/iam/operations/o_auth/revoke_token.py) | [revoke_token](../accelbyte_py_sdk/api/iam/wrappers/_o_auth.py) |
| /iam/oauth/namespaces/{namespace}/users/{userId}/revoke | POST | RevokeUser | [RevokeUser](../accelbyte_py_sdk/api/iam/operations/o_auth/revoke_user.py) | [revoke_user](../accelbyte_py_sdk/api/iam/wrappers/_o_auth.py) |
| /iam/oauth/token | POST | TokenGrant | [TokenGrant](../accelbyte_py_sdk/api/iam/operations/o_auth/token_grant.py) | [token_grant](../accelbyte_py_sdk/api/iam/wrappers/_o_auth.py) |
| /iam/oauth/verify | POST | VerifyToken | [VerifyToken](../accelbyte_py_sdk/api/iam/operations/o_auth/verify_token.py) | [verify_token](../accelbyte_py_sdk/api/iam/wrappers/_o_auth.py) |

### OAuth2.0
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/platformToken | GET | AdminRetrieveUserThirdPartyPlatformTokenV3 | [AdminRetrieveUserThirdPartyPlatformTokenV3](../accelbyte_py_sdk/api/iam/operations/o_auth2_0/admin_retrieve_user_third_party_platform_token_v3.py) | [admin_retrieve_user_third_party_platform_token_v3](../accelbyte_py_sdk/api/iam/wrappers/_o_auth2_0.py) |
| /iam/v3/oauth/platforms/{platformId}/authorize | GET | AuthCodeRequestV3 | [AuthCodeRequestV3](../accelbyte_py_sdk/api/iam/operations/o_auth2_0/auth_code_request_v3.py) | [auth_code_request_v3](../accelbyte_py_sdk/api/iam/wrappers/_o_auth2_0.py) |
| /iam/v3/oauth/authorize | GET | AuthorizeV3 | [AuthorizeV3](../accelbyte_py_sdk/api/iam/operations/o_auth2_0/authorize_v3.py) | [authorize_v3](../accelbyte_py_sdk/api/iam/wrappers/_o_auth2_0.py) |
| /iam/v3/oauth/jwks | GET | GetJWKSV3 | [GetJWKSV3](../accelbyte_py_sdk/api/iam/operations/o_auth2_0/get_jwksv3.py) | [get_jwksv3](../accelbyte_py_sdk/api/iam/wrappers/_o_auth2_0.py) |
| /iam/v3/oauth/revocationlist | GET | GetRevocationListV3 | [GetRevocationListV3](../accelbyte_py_sdk/api/iam/operations/o_auth2_0/get_revocation_list_v3.py) | [get_revocation_list_v3](../accelbyte_py_sdk/api/iam/wrappers/_o_auth2_0.py) |
| /iam/v3/oauth/platforms/{platformId}/token | POST | PlatformTokenGrantV3 | [PlatformTokenGrantV3](../accelbyte_py_sdk/api/iam/operations/o_auth2_0/platform_token_grant_v3.py) | [platform_token_grant_v3](../accelbyte_py_sdk/api/iam/wrappers/_o_auth2_0.py) |
| /iam/v3/oauth/namespaces/{namespace}/users/{userId}/platforms/{platformId}/platformToken | GET | RetrieveUserThirdPartyPlatformTokenV3 | [RetrieveUserThirdPartyPlatformTokenV3](../accelbyte_py_sdk/api/iam/operations/o_auth2_0/retrieve_user_third_party_platform_token_v3.py) | [retrieve_user_third_party_platform_token_v3](../accelbyte_py_sdk/api/iam/wrappers/_o_auth2_0.py) |
| /iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/revoke | POST | RevokeUserV3 | [RevokeUserV3](../accelbyte_py_sdk/api/iam/operations/o_auth2_0/revoke_user_v3.py) | [revoke_user_v3](../accelbyte_py_sdk/api/iam/wrappers/_o_auth2_0.py) |
| /iam/v3/oauth/token | POST | TokenGrantV3 | [TokenGrantV3](../accelbyte_py_sdk/api/iam/operations/o_auth2_0/token_grant_v3.py) | [token_grant_v3](../accelbyte_py_sdk/api/iam/wrappers/_o_auth2_0.py) |
| /iam/v3/oauth/introspect | POST | TokenIntrospectionV3 | [TokenIntrospectionV3](../accelbyte_py_sdk/api/iam/operations/o_auth2_0/token_introspection_v3.py) | [token_introspection_v3](../accelbyte_py_sdk/api/iam/wrappers/_o_auth2_0.py) |
| /iam/v3/oauth/revoke | POST | TokenRevocationV3 | [TokenRevocationV3](../accelbyte_py_sdk/api/iam/operations/o_auth2_0/token_revocation_v3.py) | [token_revocation_v3](../accelbyte_py_sdk/api/iam/wrappers/_o_auth2_0.py) |

### OAuth2.0 - Extension
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /iam/v3/location/country | GET | GetCountryLocationV3 | [GetCountryLocationV3](../accelbyte_py_sdk/api/iam/operations/o_auth2_0_extension/get_country_location_v3.py) | [get_country_location_v3](../accelbyte_py_sdk/api/iam/wrappers/_o_auth2_0_extension.py) |
| /iam/v3/logout | POST | Logout | [Logout](../accelbyte_py_sdk/api/iam/operations/o_auth2_0_extension/logout.py) | [logout](../accelbyte_py_sdk/api/iam/wrappers/_o_auth2_0_extension.py) |
| /iam/v3/platforms/{platformId}/authenticate | GET | PlatformAuthenticationV3 | [PlatformAuthenticationV3](../accelbyte_py_sdk/api/iam/operations/o_auth2_0_extension/platform_authentication_v3.py) | [platform_authentication_v3](../accelbyte_py_sdk/api/iam/wrappers/_o_auth2_0_extension.py) |
| /iam/v3/authenticate | POST | UserAuthenticationV3 | [UserAuthenticationV3](../accelbyte_py_sdk/api/iam/operations/o_auth2_0_extension/user_authentication_v3.py) | [user_authentication_v3](../accelbyte_py_sdk/api/iam/wrappers/_o_auth2_0_extension.py) |

### Roles
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /iam/roles/{roleId}/managers | POST | AddRoleManagers | [AddRoleManagers](../accelbyte_py_sdk/api/iam/operations/roles/add_role_managers.py) | [add_role_managers](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/roles/{roleId}/members | POST | AddRoleMembers | [AddRoleMembers](../accelbyte_py_sdk/api/iam/operations/roles/add_role_members.py) | [add_role_members](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/roles/{roleId}/permissions/{resource}/{action} | POST | AddRolePermission | [AddRolePermission](../accelbyte_py_sdk/api/iam/operations/roles/add_role_permission.py) | [add_role_permission](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v3/admin/roles/{roleId}/managers | POST | AdminAddRoleManagersV3 | [AdminAddRoleManagersV3](../accelbyte_py_sdk/api/iam/operations/roles/admin_add_role_managers_v3.py) | [admin_add_role_managers_v3](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v3/admin/roles/{roleId}/members | POST | AdminAddRoleMembersV3 | [AdminAddRoleMembersV3](../accelbyte_py_sdk/api/iam/operations/roles/admin_add_role_members_v3.py) | [admin_add_role_members_v3](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v3/admin/roles/{roleId}/permissions | POST | AdminAddRolePermissionsV3 | [AdminAddRolePermissionsV3](../accelbyte_py_sdk/api/iam/operations/roles/admin_add_role_permissions_v3.py) | [admin_add_role_permissions_v3](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v4/admin/roles/{roleId}/permissions | POST | AdminAddRolePermissionsV4 | [AdminAddRolePermissionsV4](../accelbyte_py_sdk/api/iam/operations/roles/admin_add_role_permissions_v4.py) | [admin_add_role_permissions_v4](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v4/admin/roles/{roleId}/users | POST | AdminAssignUserToRoleV4 | [AdminAssignUserToRoleV4](../accelbyte_py_sdk/api/iam/operations/roles/admin_assign_user_to_role_v4.py) | [admin_assign_user_to_role_v4](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v3/admin/roles | POST | AdminCreateRoleV3 | [AdminCreateRoleV3](../accelbyte_py_sdk/api/iam/operations/roles/admin_create_role_v3.py) | [admin_create_role_v3](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v4/admin/roles | POST | AdminCreateRoleV4 | [AdminCreateRoleV4](../accelbyte_py_sdk/api/iam/operations/roles/admin_create_role_v4.py) | [admin_create_role_v4](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v3/admin/roles/{roleId}/permissions/{resource}/{action} | DELETE | AdminDeleteRolePermissionV3 | [AdminDeleteRolePermissionV3](../accelbyte_py_sdk/api/iam/operations/roles/admin_delete_role_permission_v3.py) | [admin_delete_role_permission_v3](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v3/admin/roles/{roleId}/permissions | DELETE | AdminDeleteRolePermissionsV3 | [AdminDeleteRolePermissionsV3](../accelbyte_py_sdk/api/iam/operations/roles/admin_delete_role_permissions_v3.py) | [admin_delete_role_permissions_v3](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v4/admin/roles/{roleId}/permissions | DELETE | AdminDeleteRolePermissionsV4 | [AdminDeleteRolePermissionsV4](../accelbyte_py_sdk/api/iam/operations/roles/admin_delete_role_permissions_v4.py) | [admin_delete_role_permissions_v4](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v3/admin/roles/{roleId} | DELETE | AdminDeleteRoleV3 | [AdminDeleteRoleV3](../accelbyte_py_sdk/api/iam/operations/roles/admin_delete_role_v3.py) | [admin_delete_role_v3](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v4/admin/roles/{roleId} | DELETE | AdminDeleteRoleV4 | [AdminDeleteRoleV4](../accelbyte_py_sdk/api/iam/operations/roles/admin_delete_role_v4.py) | [admin_delete_role_v4](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v3/admin/roles/{roleId}/admin | GET | AdminGetRoleAdminStatusV3 | [AdminGetRoleAdminStatusV3](../accelbyte_py_sdk/api/iam/operations/roles/admin_get_role_admin_status_v3.py) | [admin_get_role_admin_status_v3](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v3/admin/roles/{roleId}/managers | GET | AdminGetRoleManagersV3 | [AdminGetRoleManagersV3](../accelbyte_py_sdk/api/iam/operations/roles/admin_get_role_managers_v3.py) | [admin_get_role_managers_v3](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v3/admin/roles/{roleId}/members | GET | AdminGetRoleMembersV3 | [AdminGetRoleMembersV3](../accelbyte_py_sdk/api/iam/operations/roles/admin_get_role_members_v3.py) | [admin_get_role_members_v3](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v3/admin/roles/{roleId} | GET | AdminGetRoleV3 | [AdminGetRoleV3](../accelbyte_py_sdk/api/iam/operations/roles/admin_get_role_v3.py) | [admin_get_role_v3](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v4/admin/roles/{roleId} | GET | AdminGetRoleV4 | [AdminGetRoleV4](../accelbyte_py_sdk/api/iam/operations/roles/admin_get_role_v4.py) | [admin_get_role_v4](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v3/admin/roles | GET | AdminGetRolesV3 | [AdminGetRolesV3](../accelbyte_py_sdk/api/iam/operations/roles/admin_get_roles_v3.py) | [admin_get_roles_v3](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v4/admin/roles | GET | AdminGetRolesV4 | [AdminGetRolesV4](../accelbyte_py_sdk/api/iam/operations/roles/admin_get_roles_v4.py) | [admin_get_roles_v4](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v4/admin/roles/{roleId}/users | GET | AdminListAssignedUsersV4 | [AdminListAssignedUsersV4](../accelbyte_py_sdk/api/iam/operations/roles/admin_list_assigned_users_v4.py) | [admin_list_assigned_users_v4](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v3/admin/roles/{roleId}/admin | DELETE | AdminRemoveRoleAdminV3 | [AdminRemoveRoleAdminV3](../accelbyte_py_sdk/api/iam/operations/roles/admin_remove_role_admin_v3.py) | [admin_remove_role_admin_v3](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v3/admin/roles/{roleId}/managers | DELETE | AdminRemoveRoleManagersV3 | [AdminRemoveRoleManagersV3](../accelbyte_py_sdk/api/iam/operations/roles/admin_remove_role_managers_v3.py) | [admin_remove_role_managers_v3](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v3/admin/roles/{roleId}/members | DELETE | AdminRemoveRoleMembersV3 | [AdminRemoveRoleMembersV3](../accelbyte_py_sdk/api/iam/operations/roles/admin_remove_role_members_v3.py) | [admin_remove_role_members_v3](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v4/admin/roles/{roleId}/users | DELETE | AdminRevokeUserFromRoleV4 | [AdminRevokeUserFromRoleV4](../accelbyte_py_sdk/api/iam/operations/roles/admin_revoke_user_from_role_v4.py) | [admin_revoke_user_from_role_v4](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v3/admin/roles/{roleId}/admin | POST | AdminUpdateAdminRoleStatusV3 | [AdminUpdateAdminRoleStatusV3](../accelbyte_py_sdk/api/iam/operations/roles/admin_update_admin_role_status_v3.py) | [admin_update_admin_role_status_v3](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v3/admin/roles/{roleId}/permissions | PUT | AdminUpdateRolePermissionsV3 | [AdminUpdateRolePermissionsV3](../accelbyte_py_sdk/api/iam/operations/roles/admin_update_role_permissions_v3.py) | [admin_update_role_permissions_v3](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v4/admin/roles/{roleId}/permissions | PUT | AdminUpdateRolePermissionsV4 | [AdminUpdateRolePermissionsV4](../accelbyte_py_sdk/api/iam/operations/roles/admin_update_role_permissions_v4.py) | [admin_update_role_permissions_v4](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v3/admin/roles/{roleId} | PATCH | AdminUpdateRoleV3 | [AdminUpdateRoleV3](../accelbyte_py_sdk/api/iam/operations/roles/admin_update_role_v3.py) | [admin_update_role_v3](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v4/admin/roles/{roleId} | PATCH | AdminUpdateRoleV4 | [AdminUpdateRoleV4](../accelbyte_py_sdk/api/iam/operations/roles/admin_update_role_v4.py) | [admin_update_role_v4](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/roles | POST | CreateRole | [CreateRole](../accelbyte_py_sdk/api/iam/operations/roles/create_role.py) | [create_role](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/roles/{roleId} | DELETE | DeleteRole | [DeleteRole](../accelbyte_py_sdk/api/iam/operations/roles/delete_role.py) | [delete_role](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/roles/{roleId}/permissions/{resource}/{action} | DELETE | DeleteRolePermission | [DeleteRolePermission](../accelbyte_py_sdk/api/iam/operations/roles/delete_role_permission.py) | [delete_role_permission](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/roles/{roleId} | GET | GetRole | [GetRole](../accelbyte_py_sdk/api/iam/operations/roles/get_role.py) | [get_role](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/roles/{roleId}/admin | GET | GetRoleAdminStatus | [GetRoleAdminStatus](../accelbyte_py_sdk/api/iam/operations/roles/get_role_admin_status.py) | [get_role_admin_status](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/roles/{roleId}/managers | GET | GetRoleManagers | [GetRoleManagers](../accelbyte_py_sdk/api/iam/operations/roles/get_role_managers.py) | [get_role_managers](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/roles/{roleId}/members | GET | GetRoleMembers | [GetRoleMembers](../accelbyte_py_sdk/api/iam/operations/roles/get_role_members.py) | [get_role_members](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/roles | GET | GetRoles | [GetRoles](../accelbyte_py_sdk/api/iam/operations/roles/get_roles.py) | [get_roles](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v3/public/roles/{roleId} | GET | PublicGetRoleV3 | [PublicGetRoleV3](../accelbyte_py_sdk/api/iam/operations/roles/public_get_role_v3.py) | [public_get_role_v3](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/v3/public/roles | GET | PublicGetRolesV3 | [PublicGetRolesV3](../accelbyte_py_sdk/api/iam/operations/roles/public_get_roles_v3.py) | [public_get_roles_v3](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/roles/{roleId}/admin | DELETE | RemoveRoleAdmin | [RemoveRoleAdmin](../accelbyte_py_sdk/api/iam/operations/roles/remove_role_admin.py) | [remove_role_admin](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/roles/{roleId}/managers | DELETE | RemoveRoleManagers | [RemoveRoleManagers](../accelbyte_py_sdk/api/iam/operations/roles/remove_role_managers.py) | [remove_role_managers](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/roles/{roleId}/members | DELETE | RemoveRoleMembers | [RemoveRoleMembers](../accelbyte_py_sdk/api/iam/operations/roles/remove_role_members.py) | [remove_role_members](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/roles/{roleId}/admin | POST | SetRoleAsAdmin | [SetRoleAsAdmin](../accelbyte_py_sdk/api/iam/operations/roles/set_role_as_admin.py) | [set_role_as_admin](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/roles/{roleId} | PUT | UpdateRole | [UpdateRole](../accelbyte_py_sdk/api/iam/operations/roles/update_role.py) | [update_role](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |
| /iam/roles/{roleId}/permissions | POST | UpdateRolePermissions | [UpdateRolePermissions](../accelbyte_py_sdk/api/iam/operations/roles/update_role_permissions.py) | [update_role_permissions](../accelbyte_py_sdk/api/iam/wrappers/_roles.py) |

### SSO
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /iam/v3/sso/{platformId} | GET | LoginSSOClient | [LoginSSOClient](../accelbyte_py_sdk/api/iam/operations/sso/login_sso_client.py) | [login_sso_client](../accelbyte_py_sdk/api/iam/wrappers/_sso.py) |
| /iam/v3/sso/{platformId}/logout | POST | LogoutSSOClient | [LogoutSSOClient](../accelbyte_py_sdk/api/iam/operations/sso/logout_sso_client.py) | [logout_sso_client](../accelbyte_py_sdk/api/iam/wrappers/_sso.py) |

### SSO Credential
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso | POST | AddSSOLoginPlatformCredential | [AddSSOLoginPlatformCredential](../accelbyte_py_sdk/api/iam/operations/sso_credential/add_sso_login_platform_credential.py) | [add_sso_login_platform_credential](../accelbyte_py_sdk/api/iam/wrappers/_sso_credential.py) |
| /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso | DELETE | DeleteSSOLoginPlatformCredentialV3 | [DeleteSSOLoginPlatformCredentialV3](../accelbyte_py_sdk/api/iam/operations/sso_credential/delete_sso_login_platform_credential_v3.py) | [delete_sso_login_platform_credential_v3](../accelbyte_py_sdk/api/iam/wrappers/_sso_credential.py) |
| /iam/v3/admin/namespaces/{namespace}/platforms/sso | GET | RetrieveAllSSOLoginPlatformCredentialV3 | [RetrieveAllSSOLoginPlatformCredentialV3](../accelbyte_py_sdk/api/iam/operations/sso_credential/retrieve_all_sso_login_platform_credential_v3.py) | [retrieve_all_sso_login_platform_credential_v3](../accelbyte_py_sdk/api/iam/wrappers/_sso_credential.py) |
| /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso | GET | RetrieveSSOLoginPlatformCredential | [RetrieveSSOLoginPlatformCredential](../accelbyte_py_sdk/api/iam/operations/sso_credential/retrieve_sso_login_platform_credential.py) | [retrieve_sso_login_platform_credential](../accelbyte_py_sdk/api/iam/wrappers/_sso_credential.py) |
| /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso | PATCH | UpdateSSOPlatformCredential | [UpdateSSOPlatformCredential](../accelbyte_py_sdk/api/iam/operations/sso_credential/update_sso_platform_credential.py) | [update_sso_platform_credential](../accelbyte_py_sdk/api/iam/wrappers/_sso_credential.py) |

### SSO SAML 2.0
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /iam/v3/sso/saml/platforms/{platformId}/authenticate | POST | platformAuthenticateSAMLV3Handler | [PlatformAuthenticateSAMLV3Handler](../accelbyte_py_sdk/api/iam/operations/sso_saml_2_0/platform_authenticate_samlv3_handler.py) | [platform_authenticate_samlv3_handler](../accelbyte_py_sdk/api/iam/wrappers/_sso_saml_2_0.py) |

### Third Party Credential
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients | POST | AddThirdPartyLoginPlatformCredentialV3 | [AddThirdPartyLoginPlatformCredentialV3](../accelbyte_py_sdk/api/iam/operations/third_party_credential/add_third_party_login_platform_credential_v3.py) | [add_third_party_login_platform_credential_v3](../accelbyte_py_sdk/api/iam/wrappers/_third_party_credential.py) |
| /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients | DELETE | DeleteThirdPartyLoginPlatformCredentialV3 | [DeleteThirdPartyLoginPlatformCredentialV3](../accelbyte_py_sdk/api/iam/operations/third_party_credential/delete_third_party_login_platform_credential_v3.py) | [delete_third_party_login_platform_credential_v3](../accelbyte_py_sdk/api/iam/wrappers/_third_party_credential.py) |
| /iam/v3/public/namespaces/{namespace}/platforms/clients/active | GET | RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 | [RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3](../accelbyte_py_sdk/api/iam/operations/third_party_credential/retrieve_all_active_third_party_login_platform_credential_public_v3.py) | [retrieve_all_active_third_party_login_platform_credential_public_v3](../accelbyte_py_sdk/api/iam/wrappers/_third_party_credential.py) |
| /iam/v3/admin/namespaces/{namespace}/platforms/all/clients/active | GET | RetrieveAllActiveThirdPartyLoginPlatformCredentialV3 | [RetrieveAllActiveThirdPartyLoginPlatformCredentialV3](../accelbyte_py_sdk/api/iam/operations/third_party_credential/retrieve_all_active_third_party_login_platform_credential_v3.py) | [retrieve_all_active_third_party_login_platform_credential_v3](../accelbyte_py_sdk/api/iam/wrappers/_third_party_credential.py) |
| /iam/v3/admin/namespaces/{namespace}/platforms/all/clients | GET | RetrieveAllThirdPartyLoginPlatformCredentialV3 | [RetrieveAllThirdPartyLoginPlatformCredentialV3](../accelbyte_py_sdk/api/iam/operations/third_party_credential/retrieve_all_third_party_login_platform_credential_v3.py) | [retrieve_all_third_party_login_platform_credential_v3](../accelbyte_py_sdk/api/iam/wrappers/_third_party_credential.py) |
| /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients | GET | RetrieveThirdPartyLoginPlatformCredentialV3 | [RetrieveThirdPartyLoginPlatformCredentialV3](../accelbyte_py_sdk/api/iam/operations/third_party_credential/retrieve_third_party_login_platform_credential_v3.py) | [retrieve_third_party_login_platform_credential_v3](../accelbyte_py_sdk/api/iam/wrappers/_third_party_credential.py) |
| /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients | PATCH | UpdateThirdPartyLoginPlatformCredentialV3 | [UpdateThirdPartyLoginPlatformCredentialV3](../accelbyte_py_sdk/api/iam/operations/third_party_credential/update_third_party_login_platform_credential_v3.py) | [update_third_party_login_platform_credential_v3](../accelbyte_py_sdk/api/iam/wrappers/_third_party_credential.py) |

### Users
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /iam/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action} | POST | AddUserPermission | [AddUserPermission](../accelbyte_py_sdk/api/iam/operations/users/add_user_permission.py) | [add_user_permission](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/{userId}/roles/{roleId} | POST | AddUserRole | [AddUserRole](../accelbyte_py_sdk/api/iam/operations/users/add_user_role.py) | [add_user_role](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions | POST | AdminAddUserPermissionsV3 | [AdminAddUserPermissionsV3](../accelbyte_py_sdk/api/iam/operations/users/admin_add_user_permissions_v3.py) | [admin_add_user_permissions_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId} | POST | AdminAddUserRoleV3 | [AdminAddUserRoleV3](../accelbyte_py_sdk/api/iam/operations/users/admin_add_user_role_v3.py) | [admin_add_user_role_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v2/admin/namespaces/{namespace}/users/{userId}/ban | POST | AdminBanUserV2 | [AdminBanUserV2](../accelbyte_py_sdk/api/iam/operations/users/admin_ban_user_v2.py) | [admin_ban_user_v2](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans | POST | AdminBanUserV3 | [AdminBanUserV3](../accelbyte_py_sdk/api/iam/operations/users/admin_ban_user_v3.py) | [admin_ban_user_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace} | POST | AdminCreateJusticeUser | [AdminCreateJusticeUser](../accelbyte_py_sdk/api/iam/operations/users/admin_create_justice_user.py) | [admin_create_justice_user](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v2/admin/namespaces/{namespace}/users/{userId}/roles | POST | AdminCreateUserRolesV2 | [AdminCreateUserRolesV2](../accelbyte_py_sdk/api/iam/operations/users/admin_create_user_roles_v2.py) | [admin_create_user_roles_v2](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v2/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link | DELETE | AdminDeletePlatformLinkV2 | [AdminDeletePlatformLinkV2](../accelbyte_py_sdk/api/iam/operations/users/admin_delete_platform_link_v2.py) | [admin_delete_platform_link_v2](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/{userId}/information | DELETE | AdminDeleteUserInformationV3 | [AdminDeleteUserInformationV3](../accelbyte_py_sdk/api/iam/operations/users/admin_delete_user_information_v3.py) | [admin_delete_user_information_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions | DELETE | AdminDeleteUserPermissionBulkV3 | [AdminDeleteUserPermissionBulkV3](../accelbyte_py_sdk/api/iam/operations/users/admin_delete_user_permission_bulk_v3.py) | [admin_delete_user_permission_bulk_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action} | DELETE | AdminDeleteUserPermissionV3 | [AdminDeleteUserPermissionV3](../accelbyte_py_sdk/api/iam/operations/users/admin_delete_user_permission_v3.py) | [admin_delete_user_permission_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId} | DELETE | AdminDeleteUserRoleV3 | [AdminDeleteUserRoleV3](../accelbyte_py_sdk/api/iam/operations/users/admin_delete_user_role_v3.py) | [admin_delete_user_role_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles | DELETE | AdminDeleteUserRolesV3 | [AdminDeleteUserRolesV3](../accelbyte_py_sdk/api/iam/operations/users/admin_delete_user_roles_v3.py) | [admin_delete_user_roles_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v2/admin/namespaces/{namespace}/users/{userId}/disable | PUT | AdminDisableUserV2 | [AdminDisableUserV2](../accelbyte_py_sdk/api/iam/operations/users/admin_disable_user_v2.py) | [admin_disable_user_v2](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v2/admin/namespaces/{namespace}/users/{userId}/enable | PUT | AdminEnableUserV2 | [AdminEnableUserV2](../accelbyte_py_sdk/api/iam/operations/users/admin_enable_user_v2.py) | [admin_enable_user_v2](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v2/admin/namespaces/{namespace}/agerestrictions | GET | AdminGetAgeRestrictionStatusV2 | [AdminGetAgeRestrictionStatusV2](../accelbyte_py_sdk/api/iam/operations/users/admin_get_age_restriction_status_v2.py) | [admin_get_age_restriction_status_v2](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/agerestrictions | GET | AdminGetAgeRestrictionStatusV3 | [AdminGetAgeRestrictionStatusV3](../accelbyte_py_sdk/api/iam/operations/users/admin_get_age_restriction_status_v3.py) | [admin_get_age_restriction_status_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/search/bulk | POST | AdminGetBulkUserByEmailAddressV3 | [AdminGetBulkUserByEmailAddressV3](../accelbyte_py_sdk/api/iam/operations/users/admin_get_bulk_user_by_email_address_v3.py) | [admin_get_bulk_user_by_email_address_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/agerestrictions/countries | GET | AdminGetListCountryAgeRestrictionV3 | [AdminGetListCountryAgeRestrictionV3](../accelbyte_py_sdk/api/iam/operations/users/admin_get_list_country_age_restriction_v3.py) | [admin_get_list_country_age_restriction_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice | GET | AdminGetListJusticePlatformAccounts | [AdminGetListJusticePlatformAccounts](../accelbyte_py_sdk/api/iam/operations/users/admin_get_list_justice_platform_accounts.py) | [admin_get_list_justice_platform_accounts](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/users/me | GET | AdminGetMyUserV3 | [AdminGetMyUserV3](../accelbyte_py_sdk/api/iam/operations/users/admin_get_my_user_v3.py) | [admin_get_my_user_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v2/admin/namespaces/{namespace}/users/{userId}/bans | GET | AdminGetUserBanV2 | [AdminGetUserBanV2](../accelbyte_py_sdk/api/iam/operations/users/admin_get_user_ban_v2.py) | [admin_get_user_ban_v2](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans | GET | AdminGetUserBanV3 | [AdminGetUserBanV3](../accelbyte_py_sdk/api/iam/operations/users/admin_get_user_ban_v3.py) | [admin_get_user_ban_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users | GET | AdminGetUserByEmailAddressV3 | [AdminGetUserByEmailAddressV3](../accelbyte_py_sdk/api/iam/operations/users/admin_get_user_by_email_address_v3.py) | [admin_get_user_by_email_address_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId} | GET | AdminGetUserByPlatformUserIDV3 | [AdminGetUserByPlatformUserIDV3](../accelbyte_py_sdk/api/iam/operations/users/admin_get_user_by_platform_user_idv3.py) | [admin_get_user_by_platform_user_idv3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v2/admin/namespaces/{namespace}/users/{userId} | GET | AdminGetUserByUserIdV2 | [AdminGetUserByUserIdV2](../accelbyte_py_sdk/api/iam/operations/users/admin_get_user_by_user_id_v2.py) | [admin_get_user_by_user_id_v2](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/{userId} | GET | AdminGetUserByUserIdV3 | [AdminGetUserByUserIdV3](../accelbyte_py_sdk/api/iam/operations/users/admin_get_user_by_user_id_v3.py) | [admin_get_user_by_user_id_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/{userId}/deletion/status | GET | AdminGetUserDeletionStatusV3 | [AdminGetUserDeletionStatusV3](../accelbyte_py_sdk/api/iam/operations/users/admin_get_user_deletion_status_v3.py) | [admin_get_user_deletion_status_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/{userId}/logins/histories | GET | AdminGetUserLoginHistoriesV3 | [AdminGetUserLoginHistoriesV3](../accelbyte_py_sdk/api/iam/operations/users/admin_get_user_login_histories_v3.py) | [admin_get_user_login_histories_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms | GET | AdminGetUserPlatformAccountsV3 | [AdminGetUserPlatformAccountsV3](../accelbyte_py_sdk/api/iam/operations/users/admin_get_user_platform_accounts_v3.py) | [admin_get_user_platform_accounts_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/invite | POST | AdminInviteUserV3 | [AdminInviteUserV3](../accelbyte_py_sdk/api/iam/operations/users/admin_invite_user_v3.py) | [admin_invite_user_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/link | POST | AdminLinkPlatformAccount | [AdminLinkPlatformAccount](../accelbyte_py_sdk/api/iam/operations/users/admin_link_platform_account.py) | [admin_link_platform_account](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/platforms/justice | GET | AdminListUsersV3 | [AdminListUsersV3](../accelbyte_py_sdk/api/iam/operations/users/admin_list_users_v3.py) | [admin_list_users_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link | POST | AdminPlatformLinkV3 | [AdminPlatformLinkV3](../accelbyte_py_sdk/api/iam/operations/users/admin_platform_link_v3.py) | [admin_platform_link_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId} | DELETE | AdminPlatformUnlinkV3 | [AdminPlatformUnlinkV3](../accelbyte_py_sdk/api/iam/operations/users/admin_platform_unlink_v3.py) | [admin_platform_unlink_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v2/admin/namespaces/{namespace}/users/{userId}/roles | PUT | AdminPutUserRolesV2 | [AdminPutUserRolesV2](../accelbyte_py_sdk/api/iam/operations/users/admin_put_user_roles_v2.py) | [admin_put_user_roles_v2](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v2/admin/namespaces/{namespace}/users/{userId}/password | PUT | AdminResetPasswordV2 | [AdminResetPasswordV2](../accelbyte_py_sdk/api/iam/operations/users/admin_reset_password_v2.py) | [admin_reset_password_v2](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles | PATCH | AdminSaveUserRoleV3 | [AdminSaveUserRoleV3](../accelbyte_py_sdk/api/iam/operations/users/admin_save_user_role_v3.py) | [admin_save_user_role_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/search | GET | AdminSearchUserV3 | [AdminSearchUserV3](../accelbyte_py_sdk/api/iam/operations/users/admin_search_user_v3.py) | [admin_search_user_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v2/admin/namespaces/{namespace}/users | GET | AdminSearchUsersV2 | [AdminSearchUsersV2](../accelbyte_py_sdk/api/iam/operations/users/admin_search_users_v2.py) | [admin_search_users_v2](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/{userId}/code/request | POST | AdminSendVerificationCodeV3 | [AdminSendVerificationCodeV3](../accelbyte_py_sdk/api/iam/operations/users/admin_send_verification_code_v3.py) | [admin_send_verification_code_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v2/admin/namespaces/{namespace}/agerestrictions | PATCH | AdminUpdateAgeRestrictionConfigV2 | [AdminUpdateAgeRestrictionConfigV2](../accelbyte_py_sdk/api/iam/operations/users/admin_update_age_restriction_config_v2.py) | [admin_update_age_restriction_config_v2](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/agerestrictions | PATCH | AdminUpdateAgeRestrictionConfigV3 | [AdminUpdateAgeRestrictionConfigV3](../accelbyte_py_sdk/api/iam/operations/users/admin_update_age_restriction_config_v3.py) | [admin_update_age_restriction_config_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/agerestrictions/countries/{countryCode} | PATCH | AdminUpdateCountryAgeRestrictionV3 | [AdminUpdateCountryAgeRestrictionV3](../accelbyte_py_sdk/api/iam/operations/users/admin_update_country_age_restriction_v3.py) | [admin_update_country_age_restriction_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans/{banId} | PATCH | AdminUpdateUserBanV3 | [AdminUpdateUserBanV3](../accelbyte_py_sdk/api/iam/operations/users/admin_update_user_ban_v3.py) | [admin_update_user_ban_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/{userId}/deletion/status | PATCH | AdminUpdateUserDeletionStatusV3 | [AdminUpdateUserDeletionStatusV3](../accelbyte_py_sdk/api/iam/operations/users/admin_update_user_deletion_status_v3.py) | [admin_update_user_deletion_status_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions | PUT | AdminUpdateUserPermissionV3 | [AdminUpdateUserPermissionV3](../accelbyte_py_sdk/api/iam/operations/users/admin_update_user_permission_v3.py) | [admin_update_user_permission_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/{userId}/status | PATCH | AdminUpdateUserStatusV3 | [AdminUpdateUserStatusV3](../accelbyte_py_sdk/api/iam/operations/users/admin_update_user_status_v3.py) | [admin_update_user_status_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v2/admin/namespaces/{namespace}/users/{userId} | PATCH | AdminUpdateUserV2 | [AdminUpdateUserV2](../accelbyte_py_sdk/api/iam/operations/users/admin_update_user_v2.py) | [admin_update_user_v2](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/{userId} | PATCH | AdminUpdateUserV3 | [AdminUpdateUserV3](../accelbyte_py_sdk/api/iam/operations/users/admin_update_user_v3.py) | [admin_update_user_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/{userId}/headless/code/verify | POST | AdminUpgradeHeadlessAccountV3 | [AdminUpgradeHeadlessAccountV3](../accelbyte_py_sdk/api/iam/operations/users/admin_upgrade_headless_account_v3.py) | [admin_upgrade_headless_account_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/{userId}/code/verify | POST | AdminVerifyAccountV3 | [AdminVerifyAccountV3](../accelbyte_py_sdk/api/iam/operations/users/admin_verify_account_v3.py) | [admin_verify_account_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/{userId}/verify | PUT | AdminVerifyUserWithoutVerificationCodeV3 | [AdminVerifyUserWithoutVerificationCodeV3](../accelbyte_py_sdk/api/iam/operations/users/admin_verify_user_without_verification_code_v3.py) | [admin_verify_user_without_verification_code_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/{userId}/ban | POST | BanUser | [BanUser](../accelbyte_py_sdk/api/iam/operations/users/ban_user.py) | [ban_user](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users | POST | CreateUser | [CreateUser](../accelbyte_py_sdk/api/iam/operations/users/create_user.py) | [create_user](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/public/namespaces/{namespace}/users/invite/{invitationId} | POST | CreateUserFromInvitationV3 | [CreateUserFromInvitationV3](../accelbyte_py_sdk/api/iam/operations/users/create_user_from_invitation_v3.py) | [create_user_from_invitation_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/{userId} | DELETE | DeleteUser | [DeleteUser](../accelbyte_py_sdk/api/iam/operations/users/delete_user.py) | [delete_user](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/{userId}/information | DELETE | DeleteUserInformation | [DeleteUserInformation](../accelbyte_py_sdk/api/iam/operations/users/delete_user_information.py) | [delete_user_information](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action} | DELETE | DeleteUserPermission | [DeleteUserPermission](../accelbyte_py_sdk/api/iam/operations/users/delete_user_permission.py) | [delete_user_permission](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/{userId}/roles/{roleId} | DELETE | DeleteUserRole | [DeleteUserRole](../accelbyte_py_sdk/api/iam/operations/users/delete_user_role.py) | [delete_user_role](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/{userId}/disable | PUT | DisableUser | [DisableUser](../accelbyte_py_sdk/api/iam/operations/users/disable_user.py) | [disable_user](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/{userId}/bans/{banId}/disable | PUT | DisableUserBan | [DisableUserBan](../accelbyte_py_sdk/api/iam/operations/users/disable_user_ban.py) | [disable_user_ban](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/{userId}/enable | PUT | EnableUser | [EnableUser](../accelbyte_py_sdk/api/iam/operations/users/enable_user.py) | [enable_user](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/{userId}/bans/{banId}/enable | PUT | EnableUserBan | [EnableUserBan](../accelbyte_py_sdk/api/iam/operations/users/enable_user_ban.py) | [enable_user_ban](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/forgotPassword | POST | ForgotPassword | [ForgotPassword](../accelbyte_py_sdk/api/iam/operations/users/forgot_password.py) | [forgot_password](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/public/namespaces/{namespace}/users/invite/{invitationId} | GET | GetAdminInvitationV3 | [GetAdminInvitationV3](../accelbyte_py_sdk/api/iam/operations/users/get_admin_invitation_v3.py) | [get_admin_invitation_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/admin | GET | GetAdminUsersByRoleID | [GetAdminUsersByRoleID](../accelbyte_py_sdk/api/iam/operations/users/get_admin_users_by_role_id.py) | [get_admin_users_by_role_id](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/roles/{roleId}/users | GET | GetAdminUsersByRoleIdV3 | [GetAdminUsersByRoleIdV3](../accelbyte_py_sdk/api/iam/operations/users/get_admin_users_by_role_id_v3.py) | [get_admin_users_by_role_id_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v2/admin/namespaces/{namespace}/countries/agerestrictions | GET | GetListCountryAgeRestriction | [GetListCountryAgeRestriction](../accelbyte_py_sdk/api/iam/operations/users/get_list_country_age_restriction.py) | [get_list_country_age_restriction](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/justice | GET | GetListJusticePlatformAccounts | [GetListJusticePlatformAccounts](../accelbyte_py_sdk/api/iam/operations/users/get_list_justice_platform_accounts.py) | [get_list_justice_platform_accounts](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/{userId}/publisher | GET | GetPublisherUser | [GetPublisherUser](../accelbyte_py_sdk/api/iam/operations/users/get_publisher_user.py) | [get_publisher_user](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/{userId}/bans | GET | GetUserBanHistory | [GetUserBanHistory](../accelbyte_py_sdk/api/iam/operations/users/get_user_ban_history.py) | [get_user_ban_history](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/byLoginId | GET | GetUserByLoginID | [GetUserByLoginID](../accelbyte_py_sdk/api/iam/operations/users/get_user_by_login_id.py) | [get_user_by_login_id](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/byPlatformUserID | GET | GetUserByPlatformUserID | [GetUserByPlatformUserID](../accelbyte_py_sdk/api/iam/operations/users/get_user_by_platform_user_id.py) | [get_user_by_platform_user_id](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/{userId} | GET | GetUserByUserID | [GetUserByUserID](../accelbyte_py_sdk/api/iam/operations/users/get_user_by_user_id.py) | [get_user_by_user_id](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/{userId}/information | GET | GetUserInformation | [GetUserInformation](../accelbyte_py_sdk/api/iam/operations/users/get_user_information.py) | [get_user_information](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace} | POST | GetUserJusticePlatformAccount | [GetUserJusticePlatformAccount](../accelbyte_py_sdk/api/iam/operations/users/get_user_justice_platform_account.py) | [get_user_justice_platform_account](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/{userId}/logins/histories | GET | GetUserLoginHistories | [GetUserLoginHistories](../accelbyte_py_sdk/api/iam/operations/users/get_user_login_histories.py) | [get_user_login_histories](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace} | GET | GetUserMapping | [GetUserMapping](../accelbyte_py_sdk/api/iam/operations/users/get_user_mapping.py) | [get_user_mapping](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/{userId}/platforms | GET | GetUserPlatformAccounts | [GetUserPlatformAccounts](../accelbyte_py_sdk/api/iam/operations/users/get_user_platform_accounts.py) | [get_user_platform_accounts](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/users/{userId}/codes | GET | getUserVerificationCode | [GetUserVerificationCode](../accelbyte_py_sdk/api/iam/operations/users/get_user_verification_code.py) | [get_user_verification_code](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/listByLoginIds | GET | GetUsersByLoginIds | [GetUsersByLoginIds](../accelbyte_py_sdk/api/iam/operations/users/get_users_by_login_ids.py) | [get_users_by_login_ids](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/admin/namespaces/{namespace}/admins | GET | ListAdminsV3 | [ListAdminsV3](../accelbyte_py_sdk/api/iam/operations/users/list_admins_v3.py) | [list_admins_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/{userId}/crosslink | POST | ListCrossNamespaceAccountLink | [ListCrossNamespaceAccountLink](../accelbyte_py_sdk/api/iam/operations/users/list_cross_namespace_account_link.py) | [list_cross_namespace_account_link](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link | POST | PlatformLink | [PlatformLink](../accelbyte_py_sdk/api/iam/operations/users/platform_link.py) | [platform_link](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/unlink | POST | PlatformUnlink | [PlatformUnlink](../accelbyte_py_sdk/api/iam/operations/users/platform_unlink.py) | [platform_unlink](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/public/namespaces/{namespace}/users/bulk/basic | POST | PublicBulkGetUsers | [PublicBulkGetUsers](../accelbyte_py_sdk/api/iam/operations/users/public_bulk_get_users.py) | [public_bulk_get_users](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/public/namespaces/{namespace}/users/me/platforms/justice/{targetNamespace} | POST | PublicCreateJusticeUser | [PublicCreateJusticeUser](../accelbyte_py_sdk/api/iam/operations/users/public_create_justice_user.py) | [public_create_justice_user](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v2/public/namespaces/{namespace}/users | POST | PublicCreateUserV2 | [PublicCreateUserV2](../accelbyte_py_sdk/api/iam/operations/users/public_create_user_v2.py) | [public_create_user_v2](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/public/namespaces/{namespace}/users | POST | PublicCreateUserV3 | [PublicCreateUserV3](../accelbyte_py_sdk/api/iam/operations/users/public_create_user_v3.py) | [public_create_user_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link | DELETE | PublicDeletePlatformLinkV2 | [PublicDeletePlatformLinkV2](../accelbyte_py_sdk/api/iam/operations/users/public_delete_platform_link_v2.py) | [public_delete_platform_link_v2](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v2/public/namespaces/{namespace}/users/forgotPassword | POST | PublicForgotPasswordV2 | [PublicForgotPasswordV2](../accelbyte_py_sdk/api/iam/operations/users/public_forgot_password_v2.py) | [public_forgot_password_v2](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/public/namespaces/{namespace}/users/forgot | POST | PublicForgotPasswordV3 | [PublicForgotPasswordV3](../accelbyte_py_sdk/api/iam/operations/users/public_forgot_password_v3.py) | [public_forgot_password_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/public/namespaces/{namespace}/requests/{requestId}/async/status | GET | PublicGetAsyncStatus | [PublicGetAsyncStatus](../accelbyte_py_sdk/api/iam/operations/users/public_get_async_status.py) | [public_get_async_status](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/public/users/me | GET | PublicGetMyUserV3 | [PublicGetMyUserV3](../accelbyte_py_sdk/api/iam/operations/users/public_get_my_user_v3.py) | [public_get_my_user_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v2/public/namespaces/{namespace}/users/{userId}/bans | GET | PublicGetUserBan | [PublicGetUserBan](../accelbyte_py_sdk/api/iam/operations/users/public_get_user_ban.py) | [public_get_user_ban](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/public/namespaces/{namespace}/users/{userId}/bans | GET | PublicGetUserBanHistoryV3 | [PublicGetUserBanHistoryV3](../accelbyte_py_sdk/api/iam/operations/users/public_get_user_ban_history_v3.py) | [public_get_user_ban_history_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId} | GET | PublicGetUserByPlatformUserIDV3 | [PublicGetUserByPlatformUserIDV3](../accelbyte_py_sdk/api/iam/operations/users/public_get_user_by_platform_user_idv3.py) | [public_get_user_by_platform_user_idv3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/public/namespaces/{namespace}/users/{userId} | GET | PublicGetUserByUserIdV3 | [PublicGetUserByUserIdV3](../accelbyte_py_sdk/api/iam/operations/users/public_get_user_by_user_id_v3.py) | [public_get_user_by_user_id_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v2/public/namespaces/{namespace}/users/{userId} | GET | PublicGetUserByUserIDV2 | [PublicGetUserByUserIDV2](../accelbyte_py_sdk/api/iam/operations/users/public_get_user_by_user_idv2.py) | [public_get_user_by_user_idv2](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/public/namespaces/{namespace}/users/{userId}/logins/histories | GET | PublicGetUserLoginHistoriesV3 | [PublicGetUserLoginHistoriesV3](../accelbyte_py_sdk/api/iam/operations/users/public_get_user_login_histories_v3.py) | [public_get_user_login_histories_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms | GET | PublicGetUserPlatformAccountsV3 | [PublicGetUserPlatformAccountsV3](../accelbyte_py_sdk/api/iam/operations/users/public_get_user_platform_accounts_v3.py) | [public_get_user_platform_accounts_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/link | POST | PublicLinkPlatformAccount | [PublicLinkPlatformAccount](../accelbyte_py_sdk/api/iam/operations/users/public_link_platform_account.py) | [public_link_platform_account](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users | POST | PublicListUserIDByPlatformUserIDsV3 | [PublicListUserIDByPlatformUserIDsV3](../accelbyte_py_sdk/api/iam/operations/users/public_list_user_id_by_platform_user_i_ds_v3.py) | [public_list_user_id_by_platform_user_i_ds_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link | POST | PublicPlatformLinkV2 | [PublicPlatformLinkV2](../accelbyte_py_sdk/api/iam/operations/users/public_platform_link_v2.py) | [public_platform_link_v2](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId} | POST | PublicPlatformLinkV3 | [PublicPlatformLinkV3](../accelbyte_py_sdk/api/iam/operations/users/public_platform_link_v3.py) | [public_platform_link_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId} | DELETE | PublicPlatformUnlinkV3 | [PublicPlatformUnlinkV3](../accelbyte_py_sdk/api/iam/operations/users/public_platform_unlink_v3.py) | [public_platform_unlink_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v2/public/namespaces/{namespace}/users/resetPassword | POST | PublicResetPasswordV2 | [PublicResetPasswordV2](../accelbyte_py_sdk/api/iam/operations/users/public_reset_password_v2.py) | [public_reset_password_v2](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/public/namespaces/{namespace}/users | GET | PublicSearchUserV3 | [PublicSearchUserV3](../accelbyte_py_sdk/api/iam/operations/users/public_search_user_v3.py) | [public_search_user_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/public/namespaces/{namespace}/users/me/code/request | POST | PublicSendVerificationCodeV3 | [PublicSendVerificationCodeV3](../accelbyte_py_sdk/api/iam/operations/users/public_send_verification_code_v3.py) | [public_send_verification_code_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v2/public/namespaces/{namespace}/users/{userId}/password | PUT | PublicUpdatePasswordV2 | [PublicUpdatePasswordV2](../accelbyte_py_sdk/api/iam/operations/users/public_update_password_v2.py) | [public_update_password_v2](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/public/namespaces/{namespace}/users/me/password | PUT | PublicUpdatePasswordV3 | [PublicUpdatePasswordV3](../accelbyte_py_sdk/api/iam/operations/users/public_update_password_v3.py) | [public_update_password_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v2/public/namespaces/{namespace}/users/{userId} | PATCH | PublicUpdateUserV2 | [PublicUpdateUserV2](../accelbyte_py_sdk/api/iam/operations/users/public_update_user_v2.py) | [public_update_user_v2](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/public/namespaces/{namespace}/users/me | PATCH | PublicUpdateUserV3 | [PublicUpdateUserV3](../accelbyte_py_sdk/api/iam/operations/users/public_update_user_v3.py) | [public_update_user_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/public/namespaces/{namespace}/users/me/headless/code/verify | POST | PublicUpgradeHeadlessAccountV3 | [PublicUpgradeHeadlessAccountV3](../accelbyte_py_sdk/api/iam/operations/users/public_upgrade_headless_account_v3.py) | [public_upgrade_headless_account_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/public/namespaces/{namespace}/users/me/code/verify | POST | PublicUserVerificationV3 | [PublicUserVerificationV3](../accelbyte_py_sdk/api/iam/operations/users/public_user_verification_v3.py) | [public_user_verification_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/public/namespaces/{namespace}/users/{userId}/validate | POST | PublicValidateUserByUserIDAndPasswordV3 | [PublicValidateUserByUserIDAndPasswordV3](../accelbyte_py_sdk/api/iam/operations/users/public_validate_user_by_user_id_and_password_v3.py) | [public_validate_user_by_user_id_and_password_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/public/namespaces/{namespace}/users/me/headless/verify | POST | PublicVerifyHeadlessAccountV3 | [PublicVerifyHeadlessAccountV3](../accelbyte_py_sdk/api/iam/operations/users/public_verify_headless_account_v3.py) | [public_verify_headless_account_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/link | GET | PublicWebLinkPlatform | [PublicWebLinkPlatform](../accelbyte_py_sdk/api/iam/operations/users/public_web_link_platform.py) | [public_web_link_platform](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/link/establish | GET | PublicWebLinkPlatformEstablish | [PublicWebLinkPlatformEstablish](../accelbyte_py_sdk/api/iam/operations/users/public_web_link_platform_establish.py) | [public_web_link_platform_establish](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/resetPassword | POST | ResetPassword | [ResetPassword](../accelbyte_py_sdk/api/iam/operations/users/reset_password.py) | [reset_password](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/public/namespaces/{namespace}/users/reset | POST | ResetPasswordV3 | [ResetPasswordV3](../accelbyte_py_sdk/api/iam/operations/users/reset_password_v3.py) | [reset_password_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/{userId}/permissions | POST | SaveUserPermission | [SaveUserPermission](../accelbyte_py_sdk/api/iam/operations/users/save_user_permission.py) | [save_user_permission](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/{userId}/roles | POST | SaveUserRoles | [SaveUserRoles](../accelbyte_py_sdk/api/iam/operations/users/save_user_roles.py) | [save_user_roles](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/search | GET | SearchUser | [SearchUser](../accelbyte_py_sdk/api/iam/operations/users/search_user.py) | [search_user](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/{userId}/verificationcode | POST | SendVerificationCode | [SendVerificationCode](../accelbyte_py_sdk/api/iam/operations/users/send_verification_code.py) | [send_verification_code](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v2/admin/namespaces/{namespace}/countries/{countryCode} | PATCH | UpdateCountryAgeRestriction | [UpdateCountryAgeRestriction](../accelbyte_py_sdk/api/iam/operations/users/update_country_age_restriction.py) | [update_country_age_restriction](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/{userId}/password | PUT | UpdatePassword | [UpdatePassword](../accelbyte_py_sdk/api/iam/operations/users/update_password.py) | [update_password](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/{userId} | PUT | UpdateUser | [UpdateUser](../accelbyte_py_sdk/api/iam/operations/users/update_user.py) | [update_user](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/v3/public/namespaces/{namespace}/users/me | PUT | UpdateUserV3 | [UpdateUserV3](../accelbyte_py_sdk/api/iam/operations/users/update_user_v3.py) | [update_user_v3](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/{userId}/upgradeHeadlessAccount | POST | upgradeHeadlessAccount | [UpgradeHeadlessAccount](../accelbyte_py_sdk/api/iam/operations/users/upgrade_headless_account.py) | [upgrade_headless_account](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/{userId}/upgradeHeadlessAccountWithVerificationCode | POST | UpgradeHeadlessAccountWithVerificationCode | [UpgradeHeadlessAccountWithVerificationCode](../accelbyte_py_sdk/api/iam/operations/users/upgrade_headless_account_with_verification_code.py) | [upgrade_headless_account_with_verification_code](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |
| /iam/namespaces/{namespace}/users/{userId}/verification | POST | UserVerification | [UserVerification](../accelbyte_py_sdk/api/iam/operations/users/user_verification.py) | [user_verification](../accelbyte_py_sdk/api/iam/wrappers/_users.py) |

### Users V4
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /iam/v4/admin/namespaces/{namespace}/users/{userId}/roles | POST | AdminAddUserRoleV4 | [AdminAddUserRoleV4](../accelbyte_py_sdk/api/iam/operations/users_v4/admin_add_user_role_v4.py) | [admin_add_user_role_v4](../accelbyte_py_sdk/api/iam/wrappers/_users_v4.py) |
| /iam/v4/admin/namespaces/{namespace}/users/{userId}/roles | GET | AdminListUserRolesV4 | [AdminListUserRolesV4](../accelbyte_py_sdk/api/iam/operations/users_v4/admin_list_user_roles_v4.py) | [admin_list_user_roles_v4](../accelbyte_py_sdk/api/iam/wrappers/_users_v4.py) |
| /iam/v4/admin/namespaces/{namespace}/users/{userId}/roles | DELETE | AdminRemoveUserRoleV4 | [AdminRemoveUserRoleV4](../accelbyte_py_sdk/api/iam/operations/users_v4/admin_remove_user_role_v4.py) | [admin_remove_user_role_v4](../accelbyte_py_sdk/api/iam/wrappers/_users_v4.py) |
| /iam/v4/admin/users/me | PATCH | AdminUpdateMyUserV4 | [AdminUpdateMyUserV4](../accelbyte_py_sdk/api/iam/operations/users_v4/admin_update_my_user_v4.py) | [admin_update_my_user_v4](../accelbyte_py_sdk/api/iam/wrappers/_users_v4.py) |
| /iam/v4/admin/namespaces/{namespace}/users/{userId}/email | PUT | AdminUpdateUserEmailAddressV4 | [AdminUpdateUserEmailAddressV4](../accelbyte_py_sdk/api/iam/operations/users_v4/admin_update_user_email_address_v4.py) | [admin_update_user_email_address_v4](../accelbyte_py_sdk/api/iam/wrappers/_users_v4.py) |
| /iam/v4/admin/namespaces/{namespace}/users/{userId}/roles | PUT | AdminUpdateUserRoleV4 | [AdminUpdateUserRoleV4](../accelbyte_py_sdk/api/iam/operations/users_v4/admin_update_user_role_v4.py) | [admin_update_user_role_v4](../accelbyte_py_sdk/api/iam/wrappers/_users_v4.py) |
| /iam/v4/admin/namespaces/{namespace}/users/{userId} | PUT | AdminUpdateUserV4 | [AdminUpdateUserV4](../accelbyte_py_sdk/api/iam/operations/users_v4/admin_update_user_v4.py) | [admin_update_user_v4](../accelbyte_py_sdk/api/iam/wrappers/_users_v4.py) |
| /iam/v4/public/namespaces/{namespace}/users/invite/{invitationId} | POST | CreateUserFromInvitationV4 | [CreateUserFromInvitationV4](../accelbyte_py_sdk/api/iam/operations/users_v4/create_user_from_invitation_v4.py) | [create_user_from_invitation_v4](../accelbyte_py_sdk/api/iam/wrappers/_users_v4.py) |
| /iam/v4/public/namespaces/{namespace}/test_users | POST | PublicCreateTestUserV4 | [PublicCreateTestUserV4](../accelbyte_py_sdk/api/iam/operations/users_v4/public_create_test_user_v4.py) | [public_create_test_user_v4](../accelbyte_py_sdk/api/iam/wrappers/_users_v4.py) |
| /iam/v4/public/namespaces/{namespace}/users | POST | PublicCreateUserV4 | [PublicCreateUserV4](../accelbyte_py_sdk/api/iam/operations/users_v4/public_create_user_v4.py) | [public_create_user_v4](../accelbyte_py_sdk/api/iam/wrappers/_users_v4.py) |
| /iam/v4/public/namespaces/{namespace}/users/me/email | PUT | PublicUpdateUserEmailAddressV4 | [PublicUpdateUserEmailAddressV4](../accelbyte_py_sdk/api/iam/operations/users_v4/public_update_user_email_address_v4.py) | [public_update_user_email_address_v4](../accelbyte_py_sdk/api/iam/wrappers/_users_v4.py) |
| /iam/v4/public/namespaces/{namespace}/users/me | PATCH | PublicUpdateUserV4 | [PublicUpdateUserV4](../accelbyte_py_sdk/api/iam/operations/users_v4/public_update_user_v4.py) | [public_update_user_v4](../accelbyte_py_sdk/api/iam/wrappers/_users_v4.py) |
| /iam/v4/public/namespaces/{namespace}/users/me/headless/verify | POST | PublicUpgradeHeadlessAccountV4 | [PublicUpgradeHeadlessAccountV4](../accelbyte_py_sdk/api/iam/operations/users_v4/public_upgrade_headless_account_v4.py) | [public_upgrade_headless_account_v4](../accelbyte_py_sdk/api/iam/wrappers/_users_v4.py) |
| /iam/v4/public/namespaces/{namespace}/users/me/headless/code/verify | POST | PublicUpgradeHeadlessAccountWithVerificationCodeV4 | [PublicUpgradeHeadlessAccountWithVerificationCodeV4](../accelbyte_py_sdk/api/iam/operations/users_v4/public_upgrade_headless_account_with_verification_code_v4.py) | [public_upgrade_headless_account_with_verification_code_v4](../accelbyte_py_sdk/api/iam/wrappers/_users_v4.py) |


## Models
| Model | Class |
|---|---|
| account.createTestUserRequestV4 | [AccountCreateTestUserRequestV4](../accelbyte_py_sdk/api/iam/models/account_create_test_user_request_v4.py) |
| account.createUserRequestV4 | [AccountCreateUserRequestV4](../accelbyte_py_sdk/api/iam/models/account_create_user_request_v4.py) |
| account.createUserResponseV4 | [AccountCreateUserResponseV4](../accelbyte_py_sdk/api/iam/models/account_create_user_response_v4.py) |
| account.upgradeHeadlessAccountRequestV4 | [AccountUpgradeHeadlessAccountRequestV4](../accelbyte_py_sdk/api/iam/models/account_upgrade_headless_account_request_v4.py) |
| account.upgradeHeadlessAccountWithVerificationCodeRequestV4 | [AccountUpgradeHeadlessAccountWithVerificationCodeRequestV4](../accelbyte_py_sdk/api/iam/models/account_upgrade_headless_account_with_verification_code_request_v4.py) |
| account.UserActiveBanResponseV4 | [AccountUserActiveBanResponseV4](../accelbyte_py_sdk/api/iam/models/account_user_active_ban_response_v4.py) |
| account.UserPermissionsResponseV4 | [AccountUserPermissionsResponseV4](../accelbyte_py_sdk/api/iam/models/account_user_permissions_response_v4.py) |
| account.UserResponseV4 | [AccountUserResponseV4](../accelbyte_py_sdk/api/iam/models/account_user_response_v4.py) |
| accountcommon.Ban | [AccountcommonBan](../accelbyte_py_sdk/api/iam/models/accountcommon_ban.py) |
| accountcommon.BanReason | [AccountcommonBanReason](../accelbyte_py_sdk/api/iam/models/accountcommon_ban_reason.py) |
| accountcommon.BanReasonV3 | [AccountcommonBanReasonV3](../accelbyte_py_sdk/api/iam/models/accountcommon_ban_reason_v3.py) |
| accountcommon.BanReasons | [AccountcommonBanReasons](../accelbyte_py_sdk/api/iam/models/accountcommon_ban_reasons.py) |
| accountcommon.BanReasonsV3 | [AccountcommonBanReasonsV3](../accelbyte_py_sdk/api/iam/models/accountcommon_ban_reasons_v3.py) |
| accountcommon.BanV3 | [AccountcommonBanV3](../accelbyte_py_sdk/api/iam/models/accountcommon_ban_v3.py) |
| accountcommon.BannedByV3 | [AccountcommonBannedByV3](../accelbyte_py_sdk/api/iam/models/accountcommon_banned_by_v3.py) |
| accountcommon.Bans | [AccountcommonBans](../accelbyte_py_sdk/api/iam/models/accountcommon_bans.py) |
| accountcommon.BansV3 | [AccountcommonBansV3](../accelbyte_py_sdk/api/iam/models/accountcommon_bans_v3.py) |
| accountcommon.ClientPermission | [AccountcommonClientPermission](../accelbyte_py_sdk/api/iam/models/accountcommon_client_permission.py) |
| accountcommon.ClientPermissionV3 | [AccountcommonClientPermissionV3](../accelbyte_py_sdk/api/iam/models/accountcommon_client_permission_v3.py) |
| accountcommon.ClientPermissions | [AccountcommonClientPermissions](../accelbyte_py_sdk/api/iam/models/accountcommon_client_permissions.py) |
| accountcommon.ClientPermissionsV3 | [AccountcommonClientPermissionsV3](../accelbyte_py_sdk/api/iam/models/accountcommon_client_permissions_v3.py) |
| accountcommon.ConflictedUserPlatformAccounts | [AccountcommonConflictedUserPlatformAccounts](../accelbyte_py_sdk/api/iam/models/accountcommon_conflicted_user_platform_accounts.py) |
| accountcommon.CountryAgeRestriction | [AccountcommonCountryAgeRestriction](../accelbyte_py_sdk/api/iam/models/accountcommon_country_age_restriction.py) |
| accountcommon.Description | [AccountcommonDescription](../accelbyte_py_sdk/api/iam/models/accountcommon_description.py) |
| accountcommon.JWTBanV3 | [AccountcommonJWTBanV3](../accelbyte_py_sdk/api/iam/models/accountcommon_jwt_ban_v3.py) |
| accountcommon.ListUsersWithPlatformAccountsResponse | [AccountcommonListUsersWithPlatformAccountsResponse](../accelbyte_py_sdk/api/iam/models/accountcommon_list_users_with_platform_accounts_response.py) |
| accountcommon.NamespaceRole | [AccountcommonNamespaceRole](../accelbyte_py_sdk/api/iam/models/accountcommon_namespace_role.py) |
| accountcommon.Pagination | [AccountcommonPagination](../accelbyte_py_sdk/api/iam/models/accountcommon_pagination.py) |
| accountcommon.PaginationV3 | [AccountcommonPaginationV3](../accelbyte_py_sdk/api/iam/models/accountcommon_pagination_v3.py) |
| accountcommon.Permission | [AccountcommonPermission](../accelbyte_py_sdk/api/iam/models/accountcommon_permission.py) |
| accountcommon.PermissionV3 | [AccountcommonPermissionV3](../accelbyte_py_sdk/api/iam/models/accountcommon_permission_v3.py) |
| accountcommon.Permissions | [AccountcommonPermissions](../accelbyte_py_sdk/api/iam/models/accountcommon_permissions.py) |
| accountcommon.PermissionsV3 | [AccountcommonPermissionsV3](../accelbyte_py_sdk/api/iam/models/accountcommon_permissions_v3.py) |
| accountcommon.PlatformAccount | [AccountcommonPlatformAccount](../accelbyte_py_sdk/api/iam/models/accountcommon_platform_account.py) |
| accountcommon.Role | [AccountcommonRole](../accelbyte_py_sdk/api/iam/models/accountcommon_role.py) |
| accountcommon.RoleManager | [AccountcommonRoleManager](../accelbyte_py_sdk/api/iam/models/accountcommon_role_manager.py) |
| accountcommon.RoleManagerV3 | [AccountcommonRoleManagerV3](../accelbyte_py_sdk/api/iam/models/accountcommon_role_manager_v3.py) |
| accountcommon.RoleMember | [AccountcommonRoleMember](../accelbyte_py_sdk/api/iam/models/accountcommon_role_member.py) |
| accountcommon.RoleMemberV3 | [AccountcommonRoleMemberV3](../accelbyte_py_sdk/api/iam/models/accountcommon_role_member_v3.py) |
| accountcommon.RoleV3 | [AccountcommonRoleV3](../accelbyte_py_sdk/api/iam/models/accountcommon_role_v3.py) |
| accountcommon.UserLinkedPlatform | [AccountcommonUserLinkedPlatform](../accelbyte_py_sdk/api/iam/models/accountcommon_user_linked_platform.py) |
| accountcommon.UserLinkedPlatformV3 | [AccountcommonUserLinkedPlatformV3](../accelbyte_py_sdk/api/iam/models/accountcommon_user_linked_platform_v3.py) |
| accountcommon.UserLinkedPlatformsResponseV3 | [AccountcommonUserLinkedPlatformsResponseV3](../accelbyte_py_sdk/api/iam/models/accountcommon_user_linked_platforms_response_v3.py) |
| accountcommon.UserPlatformInfo | [AccountcommonUserPlatformInfo](../accelbyte_py_sdk/api/iam/models/accountcommon_user_platform_info.py) |
| accountcommon.UserPlatforms | [AccountcommonUserPlatforms](../accelbyte_py_sdk/api/iam/models/accountcommon_user_platforms.py) |
| accountcommon.UserSearchByPlatformIDResult | [AccountcommonUserSearchByPlatformIDResult](../accelbyte_py_sdk/api/iam/models/accountcommon_user_search_by_platform_id_result.py) |
| accountcommon.UserSearchResult | [AccountcommonUserSearchResult](../accelbyte_py_sdk/api/iam/models/accountcommon_user_search_result.py) |
| accountcommon.UserWithLinkedPlatformAccounts | [AccountcommonUserWithLinkedPlatformAccounts](../accelbyte_py_sdk/api/iam/models/accountcommon_user_with_linked_platform_accounts.py) |
| accountcommon.UserWithPlatformAccounts | [AccountcommonUserWithPlatformAccounts](../accelbyte_py_sdk/api/iam/models/accountcommon_user_with_platform_accounts.py) |
| .BannedBy | [BannedBy](../accelbyte_py_sdk/api/iam/models/banned_by.py) |
| bloom.FilterJSON | [BloomFilterJSON](../accelbyte_py_sdk/api/iam/models/bloom_filter_json.py) |
| clientmodel.ClientCreateRequest | [ClientmodelClientCreateRequest](../accelbyte_py_sdk/api/iam/models/clientmodel_client_create_request.py) |
| clientmodel.ClientCreationResponse | [ClientmodelClientCreationResponse](../accelbyte_py_sdk/api/iam/models/clientmodel_client_creation_response.py) |
| clientmodel.ClientCreationV3Request | [ClientmodelClientCreationV3Request](../accelbyte_py_sdk/api/iam/models/clientmodel_client_creation_v3_request.py) |
| clientmodel.ClientResponse | [ClientmodelClientResponse](../accelbyte_py_sdk/api/iam/models/clientmodel_client_response.py) |
| clientmodel.ClientUpdateRequest | [ClientmodelClientUpdateRequest](../accelbyte_py_sdk/api/iam/models/clientmodel_client_update_request.py) |
| clientmodel.ClientUpdateSecretRequest | [ClientmodelClientUpdateSecretRequest](../accelbyte_py_sdk/api/iam/models/clientmodel_client_update_secret_request.py) |
| clientmodel.ClientUpdateV3Request | [ClientmodelClientUpdateV3Request](../accelbyte_py_sdk/api/iam/models/clientmodel_client_update_v3_request.py) |
| clientmodel.ClientV3Response | [ClientmodelClientV3Response](../accelbyte_py_sdk/api/iam/models/clientmodel_client_v3_response.py) |
| clientmodel.ClientsV3Response | [ClientmodelClientsV3Response](../accelbyte_py_sdk/api/iam/models/clientmodel_clients_v3_response.py) |
| legal.AcceptedPoliciesRequest | [LegalAcceptedPoliciesRequest](../accelbyte_py_sdk/api/iam/models/legal_accepted_policies_request.py) |
| model.AddUserRoleV4Request | [ModelAddUserRoleV4Request](../accelbyte_py_sdk/api/iam/models/model_add_user_role_v4_request.py) |
| model.AgeRestrictionRequest | [ModelAgeRestrictionRequest](../accelbyte_py_sdk/api/iam/models/model_age_restriction_request.py) |
| model.AgeRestrictionRequestV3 | [ModelAgeRestrictionRequestV3](../accelbyte_py_sdk/api/iam/models/model_age_restriction_request_v3.py) |
| model.AgeRestrictionResponse | [ModelAgeRestrictionResponse](../accelbyte_py_sdk/api/iam/models/model_age_restriction_response.py) |
| model.AgeRestrictionResponseV3 | [ModelAgeRestrictionResponseV3](../accelbyte_py_sdk/api/iam/models/model_age_restriction_response_v3.py) |
| model.AssignUserV4Request | [ModelAssignUserV4Request](../accelbyte_py_sdk/api/iam/models/model_assign_user_v4_request.py) |
| model.AssignedUserV4Response | [ModelAssignedUserV4Response](../accelbyte_py_sdk/api/iam/models/model_assigned_user_v4_response.py) |
| model.BanCreateRequest | [ModelBanCreateRequest](../accelbyte_py_sdk/api/iam/models/model_ban_create_request.py) |
| model.BanUpdateRequest | [ModelBanUpdateRequest](../accelbyte_py_sdk/api/iam/models/model_ban_update_request.py) |
| model.Country | [ModelCountry](../accelbyte_py_sdk/api/iam/models/model_country.py) |
| model.CountryAgeRestrictionRequest | [ModelCountryAgeRestrictionRequest](../accelbyte_py_sdk/api/iam/models/model_country_age_restriction_request.py) |
| model.CountryAgeRestrictionV3Request | [ModelCountryAgeRestrictionV3Request](../accelbyte_py_sdk/api/iam/models/model_country_age_restriction_v3_request.py) |
| model.CountryV3Response | [ModelCountryV3Response](../accelbyte_py_sdk/api/iam/models/model_country_v3_response.py) |
| model.CreateJusticeUserResponse | [ModelCreateJusticeUserResponse](../accelbyte_py_sdk/api/iam/models/model_create_justice_user_response.py) |
| model.DisableUserRequest | [ModelDisableUserRequest](../accelbyte_py_sdk/api/iam/models/model_disable_user_request.py) |
| model.EmailUpdateRequestV4 | [ModelEmailUpdateRequestV4](../accelbyte_py_sdk/api/iam/models/model_email_update_request_v4.py) |
| model.ForgotPasswordRequestV3 | [ModelForgotPasswordRequestV3](../accelbyte_py_sdk/api/iam/models/model_forgot_password_request_v3.py) |
| model.GameUserBaseInfo | [ModelGameUserBaseInfo](../accelbyte_py_sdk/api/iam/models/model_game_user_base_info.py) |
| model.GameUserIDsRequest | [ModelGameUserIDsRequest](../accelbyte_py_sdk/api/iam/models/model_game_user_i_ds_request.py) |
| model.GetAdminUsersResponse | [ModelGetAdminUsersResponse](../accelbyte_py_sdk/api/iam/models/model_get_admin_users_response.py) |
| model.GetPublisherUserResponse | [ModelGetPublisherUserResponse](../accelbyte_py_sdk/api/iam/models/model_get_publisher_user_response.py) |
| model.GetUserBanV3Response | [ModelGetUserBanV3Response](../accelbyte_py_sdk/api/iam/models/model_get_user_ban_v3_response.py) |
| model.GetUserJusticePlatformAccountResponse | [ModelGetUserJusticePlatformAccountResponse](../accelbyte_py_sdk/api/iam/models/model_get_user_justice_platform_account_response.py) |
| model.GetUserMapping | [ModelGetUserMapping](../accelbyte_py_sdk/api/iam/models/model_get_user_mapping.py) |
| model.GetUsersResponseWithPaginationV3 | [ModelGetUsersResponseWithPaginationV3](../accelbyte_py_sdk/api/iam/models/model_get_users_response_with_pagination_v3.py) |
| model.InviteUserRequestV3 | [ModelInviteUserRequestV3](../accelbyte_py_sdk/api/iam/models/model_invite_user_request_v3.py) |
| model.InviteUserResponseV3 | [ModelInviteUserResponseV3](../accelbyte_py_sdk/api/iam/models/model_invite_user_response_v3.py) |
| model.LinkPlatformAccountRequest | [ModelLinkPlatformAccountRequest](../accelbyte_py_sdk/api/iam/models/model_link_platform_account_request.py) |
| model.LinkRequest | [ModelLinkRequest](../accelbyte_py_sdk/api/iam/models/model_link_request.py) |
| model.ListAssignedUsersV4Response | [ModelListAssignedUsersV4Response](../accelbyte_py_sdk/api/iam/models/model_list_assigned_users_v4_response.py) |
| model.ListBulkUserGameResponse | [ModelListBulkUserGameResponse](../accelbyte_py_sdk/api/iam/models/model_list_bulk_user_game_response.py) |
| model.ListEmailAddressRequest | [ModelListEmailAddressRequest](../accelbyte_py_sdk/api/iam/models/model_list_email_address_request.py) |
| model.ListRoleV4Response | [ModelListRoleV4Response](../accelbyte_py_sdk/api/iam/models/model_list_role_v4_response.py) |
| model.ListUserResponseV3 | [ModelListUserResponseV3](../accelbyte_py_sdk/api/iam/models/model_list_user_response_v3.py) |
| model.ListUserRolesV4Response | [ModelListUserRolesV4Response](../accelbyte_py_sdk/api/iam/models/model_list_user_roles_v4_response.py) |
| model.LoginHistoriesResponse | [ModelLoginHistoriesResponse](../accelbyte_py_sdk/api/iam/models/model_login_histories_response.py) |
| model.NamespaceRoleRequest | [ModelNamespaceRoleRequest](../accelbyte_py_sdk/api/iam/models/model_namespace_role_request.py) |
| model.PermissionDeleteRequest | [ModelPermissionDeleteRequest](../accelbyte_py_sdk/api/iam/models/model_permission_delete_request.py) |
| model.PlatformUserIDRequest | [ModelPlatformUserIDRequest](../accelbyte_py_sdk/api/iam/models/model_platform_user_id_request.py) |
| model.PlatformUserInformation | [ModelPlatformUserInformation](../accelbyte_py_sdk/api/iam/models/model_platform_user_information.py) |
| model.PublicThirdPartyPlatformInfo | [ModelPublicThirdPartyPlatformInfo](../accelbyte_py_sdk/api/iam/models/model_public_third_party_platform_info.py) |
| model.PublicUserInformationResponseV3 | [ModelPublicUserInformationResponseV3](../accelbyte_py_sdk/api/iam/models/model_public_user_information_response_v3.py) |
| model.PublicUserInformationV3 | [ModelPublicUserInformationV3](../accelbyte_py_sdk/api/iam/models/model_public_user_information_v3.py) |
| model.PublicUserResponse | [ModelPublicUserResponse](../accelbyte_py_sdk/api/iam/models/model_public_user_response.py) |
| model.PublicUserResponseV3 | [ModelPublicUserResponseV3](../accelbyte_py_sdk/api/iam/models/model_public_user_response_v3.py) |
| model.PublicUsersResponse | [ModelPublicUsersResponse](../accelbyte_py_sdk/api/iam/models/model_public_users_response.py) |
| model.RemoveUserRoleV4Request | [ModelRemoveUserRoleV4Request](../accelbyte_py_sdk/api/iam/models/model_remove_user_role_v4_request.py) |
| model.ResetPasswordRequest | [ModelResetPasswordRequest](../accelbyte_py_sdk/api/iam/models/model_reset_password_request.py) |
| model.ResetPasswordRequestV3 | [ModelResetPasswordRequestV3](../accelbyte_py_sdk/api/iam/models/model_reset_password_request_v3.py) |
| model.RevokeUserV4Request | [ModelRevokeUserV4Request](../accelbyte_py_sdk/api/iam/models/model_revoke_user_v4_request.py) |
| model.RoleAdminStatusResponse | [ModelRoleAdminStatusResponse](../accelbyte_py_sdk/api/iam/models/model_role_admin_status_response.py) |
| model.RoleAdminStatusResponseV3 | [ModelRoleAdminStatusResponseV3](../accelbyte_py_sdk/api/iam/models/model_role_admin_status_response_v3.py) |
| model.RoleCreateRequest | [ModelRoleCreateRequest](../accelbyte_py_sdk/api/iam/models/model_role_create_request.py) |
| model.RoleCreateV3Request | [ModelRoleCreateV3Request](../accelbyte_py_sdk/api/iam/models/model_role_create_v3_request.py) |
| model.RoleManagersRequest | [ModelRoleManagersRequest](../accelbyte_py_sdk/api/iam/models/model_role_managers_request.py) |
| model.RoleManagersRequestV3 | [ModelRoleManagersRequestV3](../accelbyte_py_sdk/api/iam/models/model_role_managers_request_v3.py) |
| model.RoleManagersResponse | [ModelRoleManagersResponse](../accelbyte_py_sdk/api/iam/models/model_role_managers_response.py) |
| model.RoleManagersResponsesV3 | [ModelRoleManagersResponsesV3](../accelbyte_py_sdk/api/iam/models/model_role_managers_responses_v3.py) |
| model.RoleMembersRequest | [ModelRoleMembersRequest](../accelbyte_py_sdk/api/iam/models/model_role_members_request.py) |
| model.RoleMembersRequestV3 | [ModelRoleMembersRequestV3](../accelbyte_py_sdk/api/iam/models/model_role_members_request_v3.py) |
| model.RoleMembersResponse | [ModelRoleMembersResponse](../accelbyte_py_sdk/api/iam/models/model_role_members_response.py) |
| model.RoleMembersResponseV3 | [ModelRoleMembersResponseV3](../accelbyte_py_sdk/api/iam/models/model_role_members_response_v3.py) |
| model.RoleNamesResponseV3 | [ModelRoleNamesResponseV3](../accelbyte_py_sdk/api/iam/models/model_role_names_response_v3.py) |
| model.RoleResponse | [ModelRoleResponse](../accelbyte_py_sdk/api/iam/models/model_role_response.py) |
| model.RoleResponseV3 | [ModelRoleResponseV3](../accelbyte_py_sdk/api/iam/models/model_role_response_v3.py) |
| model.RoleResponseWithManagers | [ModelRoleResponseWithManagers](../accelbyte_py_sdk/api/iam/models/model_role_response_with_managers.py) |
| model.RoleResponseWithManagersAndPaginationV3 | [ModelRoleResponseWithManagersAndPaginationV3](../accelbyte_py_sdk/api/iam/models/model_role_response_with_managers_and_pagination_v3.py) |
| model.RoleResponseWithManagersV3 | [ModelRoleResponseWithManagersV3](../accelbyte_py_sdk/api/iam/models/model_role_response_with_managers_v3.py) |
| model.RoleUpdateRequest | [ModelRoleUpdateRequest](../accelbyte_py_sdk/api/iam/models/model_role_update_request.py) |
| model.RoleUpdateRequestV3 | [ModelRoleUpdateRequestV3](../accelbyte_py_sdk/api/iam/models/model_role_update_request_v3.py) |
| model.RoleV4Request | [ModelRoleV4Request](../accelbyte_py_sdk/api/iam/models/model_role_v4_request.py) |
| model.RoleV4Response | [ModelRoleV4Response](../accelbyte_py_sdk/api/iam/models/model_role_v4_response.py) |
| model.SearchUsersByPlatformIDResponse | [ModelSearchUsersByPlatformIDResponse](../accelbyte_py_sdk/api/iam/models/model_search_users_by_platform_id_response.py) |
| model.SearchUsersResponse | [ModelSearchUsersResponse](../accelbyte_py_sdk/api/iam/models/model_search_users_response.py) |
| model.SearchUsersResponseWithPaginationV3 | [ModelSearchUsersResponseWithPaginationV3](../accelbyte_py_sdk/api/iam/models/model_search_users_response_with_pagination_v3.py) |
| model.SendVerificationCodeRequest | [ModelSendVerificationCodeRequest](../accelbyte_py_sdk/api/iam/models/model_send_verification_code_request.py) |
| model.SendVerificationCodeRequestV3 | [ModelSendVerificationCodeRequestV3](../accelbyte_py_sdk/api/iam/models/model_send_verification_code_request_v3.py) |
| model.SSOPlatformCredentialRequest | [ModelSSOPlatformCredentialRequest](../accelbyte_py_sdk/api/iam/models/model_sso_platform_credential_request.py) |
| model.SSOPlatformCredentialResponse | [ModelSSOPlatformCredentialResponse](../accelbyte_py_sdk/api/iam/models/model_sso_platform_credential_response.py) |
| model.ThirdPartyLoginPlatformCredentialRequest | [ModelThirdPartyLoginPlatformCredentialRequest](../accelbyte_py_sdk/api/iam/models/model_third_party_login_platform_credential_request.py) |
| model.ThirdPartyLoginPlatformCredentialResponse | [ModelThirdPartyLoginPlatformCredentialResponse](../accelbyte_py_sdk/api/iam/models/model_third_party_login_platform_credential_response.py) |
| model.UnlinkUserPlatformRequest | [ModelUnlinkUserPlatformRequest](../accelbyte_py_sdk/api/iam/models/model_unlink_user_platform_request.py) |
| model.UpdatePermissionScheduleRequest | [ModelUpdatePermissionScheduleRequest](../accelbyte_py_sdk/api/iam/models/model_update_permission_schedule_request.py) |
| model.UpdateUserDeletionStatusRequest | [ModelUpdateUserDeletionStatusRequest](../accelbyte_py_sdk/api/iam/models/model_update_user_deletion_status_request.py) |
| model.UpdateUserStatusRequest | [ModelUpdateUserStatusRequest](../accelbyte_py_sdk/api/iam/models/model_update_user_status_request.py) |
| model.UpgradeHeadlessAccountRequest | [ModelUpgradeHeadlessAccountRequest](../accelbyte_py_sdk/api/iam/models/model_upgrade_headless_account_request.py) |
| model.UpgradeHeadlessAccountV3Request | [ModelUpgradeHeadlessAccountV3Request](../accelbyte_py_sdk/api/iam/models/model_upgrade_headless_account_v3_request.py) |
| model.UpgradeHeadlessAccountWithVerificationCodeRequest | [ModelUpgradeHeadlessAccountWithVerificationCodeRequest](../accelbyte_py_sdk/api/iam/models/model_upgrade_headless_account_with_verification_code_request.py) |
| model.UpgradeHeadlessAccountWithVerificationCodeRequestV3 | [ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3](../accelbyte_py_sdk/api/iam/models/model_upgrade_headless_account_with_verification_code_request_v3.py) |
| model.UserActiveBanResponse | [ModelUserActiveBanResponse](../accelbyte_py_sdk/api/iam/models/model_user_active_ban_response.py) |
| model.UserActiveBanResponseV3 | [ModelUserActiveBanResponseV3](../accelbyte_py_sdk/api/iam/models/model_user_active_ban_response_v3.py) |
| model.UserBanResponse | [ModelUserBanResponse](../accelbyte_py_sdk/api/iam/models/model_user_ban_response.py) |
| model.UserBanResponseV3 | [ModelUserBanResponseV3](../accelbyte_py_sdk/api/iam/models/model_user_ban_response_v3.py) |
| model.UserCreateFromInvitationRequestV3 | [ModelUserCreateFromInvitationRequestV3](../accelbyte_py_sdk/api/iam/models/model_user_create_from_invitation_request_v3.py) |
| model.UserCreateFromInvitationRequestV4 | [ModelUserCreateFromInvitationRequestV4](../accelbyte_py_sdk/api/iam/models/model_user_create_from_invitation_request_v4.py) |
| model.UserCreateRequest | [ModelUserCreateRequest](../accelbyte_py_sdk/api/iam/models/model_user_create_request.py) |
| model.UserCreateRequestV3 | [ModelUserCreateRequestV3](../accelbyte_py_sdk/api/iam/models/model_user_create_request_v3.py) |
| model.UserCreateResponse | [ModelUserCreateResponse](../accelbyte_py_sdk/api/iam/models/model_user_create_response.py) |
| model.UserCreateResponseV3 | [ModelUserCreateResponseV3](../accelbyte_py_sdk/api/iam/models/model_user_create_response_v3.py) |
| model.UserDeletionStatusResponse | [ModelUserDeletionStatusResponse](../accelbyte_py_sdk/api/iam/models/model_user_deletion_status_response.py) |
| model.UserInformation | [ModelUserInformation](../accelbyte_py_sdk/api/iam/models/model_user_information.py) |
| model.UserInvitationV3 | [ModelUserInvitationV3](../accelbyte_py_sdk/api/iam/models/model_user_invitation_v3.py) |
| model.UserLoginHistoryResponse | [ModelUserLoginHistoryResponse](../accelbyte_py_sdk/api/iam/models/model_user_login_history_response.py) |
| model.UserPasswordUpdateRequest | [ModelUserPasswordUpdateRequest](../accelbyte_py_sdk/api/iam/models/model_user_password_update_request.py) |
| model.UserPasswordUpdateV3Request | [ModelUserPasswordUpdateV3Request](../accelbyte_py_sdk/api/iam/models/model_user_password_update_v3_request.py) |
| model.UserPermissionsResponseV3 | [ModelUserPermissionsResponseV3](../accelbyte_py_sdk/api/iam/models/model_user_permissions_response_v3.py) |
| model.UserResponse | [ModelUserResponse](../accelbyte_py_sdk/api/iam/models/model_user_response.py) |
| model.UserResponseV3 | [ModelUserResponseV3](../accelbyte_py_sdk/api/iam/models/model_user_response_v3.py) |
| model.UserRolesV4Response | [ModelUserRolesV4Response](../accelbyte_py_sdk/api/iam/models/model_user_roles_v4_response.py) |
| model.UserUpdateRequest | [ModelUserUpdateRequest](../accelbyte_py_sdk/api/iam/models/model_user_update_request.py) |
| model.UserUpdateRequestV3 | [ModelUserUpdateRequestV3](../accelbyte_py_sdk/api/iam/models/model_user_update_request_v3.py) |
| model.UserVerificationRequest | [ModelUserVerificationRequest](../accelbyte_py_sdk/api/iam/models/model_user_verification_request.py) |
| model.UserVerificationRequestV3 | [ModelUserVerificationRequestV3](../accelbyte_py_sdk/api/iam/models/model_user_verification_request_v3.py) |
| model.VerificationCodeResponse | [ModelVerificationCodeResponse](../accelbyte_py_sdk/api/iam/models/model_verification_code_response.py) |
| model.WebLinkingResponse | [ModelWebLinkingResponse](../accelbyte_py_sdk/api/iam/models/model_web_linking_response.py) |
| oauthapi.RevocationList | [OauthapiRevocationList](../accelbyte_py_sdk/api/iam/models/oauthapi_revocation_list.py) |
| oauthcommon.JWKKey | [OauthcommonJWKKey](../accelbyte_py_sdk/api/iam/models/oauthcommon_jwk_key.py) |
| oauthcommon.JWKSet | [OauthcommonJWKSet](../accelbyte_py_sdk/api/iam/models/oauthcommon_jwk_set.py) |
| oauthcommon.UserRevocationListRecord | [OauthcommonUserRevocationListRecord](../accelbyte_py_sdk/api/iam/models/oauthcommon_user_revocation_list_record.py) |
| oauthmodel.CountryLocationResponse | [OauthmodelCountryLocationResponse](../accelbyte_py_sdk/api/iam/models/oauthmodel_country_location_response.py) |
| oauthmodel.ErrorResponse | [OauthmodelErrorResponse](../accelbyte_py_sdk/api/iam/models/oauthmodel_error_response.py) |
| oauthmodel.TokenIntrospectResponse | [OauthmodelTokenIntrospectResponse](../accelbyte_py_sdk/api/iam/models/oauthmodel_token_introspect_response.py) |
| oauthmodel.TokenResponse | [OauthmodelTokenResponse](../accelbyte_py_sdk/api/iam/models/oauthmodel_token_response.py) |
| oauthmodel.TokenResponseV3 | [OauthmodelTokenResponseV3](../accelbyte_py_sdk/api/iam/models/oauthmodel_token_response_v3.py) |
| oauthmodel.TokenThirdPartyResponse | [OauthmodelTokenThirdPartyResponse](../accelbyte_py_sdk/api/iam/models/oauthmodel_token_third_party_response.py) |
| rest.ErrorResponse | [RestErrorResponse](../accelbyte_py_sdk/api/iam/models/rest_error_response.py) |
| restapi.ErrorResponse | [RestapiErrorResponse](../accelbyte_py_sdk/api/iam/models/restapi_error_response.py) |
