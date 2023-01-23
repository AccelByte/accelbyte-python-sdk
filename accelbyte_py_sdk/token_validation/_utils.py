from datetime import datetime
from typing import List, Optional

from ._ctypes import PermissionStruct


def replace_resource(
    resource: str,
    namespace: Optional[str] = None,
    token_namespace: Optional[str] = None,
    publisher_namespace: Optional[str] = None,
    user_id: Optional[str] = None,
    cross_allowed: bool = False,
) -> str:
    new_resource = resource

    if (
        cross_allowed
        and token_namespace is not None
        and (publisher_namespace == token_namespace or publisher_namespace == namespace)
    ):
        new_resource = new_resource.replace("{namespace}", token_namespace)

    if namespace is not None:
        new_resource = new_resource.replace("{namespace}", namespace)

    if user_id is not None:
        new_resource = new_resource.replace("{userId}", user_id)

    return new_resource


def validate_permission(
    target: PermissionStruct, permissions: List[PermissionStruct]
) -> bool:
    t_items = target.resource.split(":")
    t_items_len = len(t_items)

    for permission in permissions:
        p_items = permission.resource.split(":")
        p_items_len = len(p_items)

        matched = True
        min_len = min(p_items_len, t_items_len)

        for i in range(min_len):
            s1 = p_items[i]
            s2 = t_items[i]
            if s1 != s2 and s1 != "*":
                matched = False
                break

        if matched:
            if t_items_len < p_items_len:
                for i in range(t_items_len, p_items_len):
                    if p_items[i] != "*":
                        matched = False
                        break
                if not matched:
                    continue
            elif t_items_len > p_items_len:
                if p_items[-1] == "*":
                    if p_items_len < 2:
                        matched = True
                    else:
                        matched = p_items[-2] not in ("NAMESPACE", "USER")
                else:
                    matched = False
                if not matched:
                    continue

            if (int(permission.action) & int(target.action)) > 0:
                return True

    return False
