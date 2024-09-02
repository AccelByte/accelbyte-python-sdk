import os
from typing import Optional
from random import randint

from accelbyte_py_sdk.core import generate_id
from tests.integration.test_case import IntegrationTestCase

from accelbyte_py_sdk.api.inventory import (
    admin_create_inventory,
    admin_get_inventory,
    admin_update_inventory,
    delete_inventory,
    admin_create_inventory_configuration,
    admin_delete_inventory_configuration,
)

from accelbyte_py_sdk.api.inventory.models import ApimodelsCreateInventoryConfigurationReq
from accelbyte_py_sdk.api.inventory.models import ApimodelsCreateInventoryReq
from accelbyte_py_sdk.api.inventory.models import ApimodelsUpdateInventoryReq
from accelbyte_py_sdk.api.inventory.models import ApimodelsDeleteInventoryReq
from accelbyte_py_sdk.api.inventory.models import ApimodelsInventoryConfigurationResp

from accelbyte_py_sdk.api.iam.models import AccountCreateUserRequestV4


class InventoryTestCase(IntegrationTestCase):
    rid = generate_id(4)
    inventory_config_code = f"python-sdk-code-{rid}"
    inventory_config_id: Optional[str] = None

    user_id: Optional[str] = None
    scope: str = "commerce account social publishing analytics"
    username = f"testPythonServerSDKUser_{str(randint(0, 1_000_000)).rjust(7, '0')}"
    model_user_create_request = AccountCreateUserRequestV4.create(
        auth_type="EMAILPASSWD",
        code="",
        country="US",
        date_of_birth="1990-01-01",
        display_name="Python Extend SDK Test",
        email_address=f"{username}@test.com",
        username=username,
        password="q!w@e#r$azsxdcfv1",
        password_md5_sum="",
        reach_minimum_age=True,
    )

    # noinspection PyMethodMayBeStatic
    def do_create_user(self, body: AccountCreateUserRequestV4):
        # pylint: disable=no-self-use
        from accelbyte_py_sdk.api.iam import public_create_user_v4

        result, error = public_create_user_v4(body=body)

        if error is None:
            user_id = result.user_id
        else:
            user_id = None

        return result, error, user_id

    def tearDown(self) -> None:
        if self.user_id is not None:
            self.delete_user(user_id=self.user_id)
            self.user_id = None
        super().tearDown()

    def do_create_inventory_config(self) -> ApimodelsInventoryConfigurationResp:
        body = (
            ApimodelsCreateInventoryConfigurationReq()
            .with_code(self.inventory_config_code)
            .with_initial_max_slots(3)
            .with_max_instances_per_user(2)
            .with_max_upgrade_slots(5)
            .with_description("testing")
            .with_name(self.inventory_config_code)
        )

        result, error = admin_create_inventory_configuration(body=body, namespace=self.namespace)
        self.assertIsNone(error, error)
        self.inventory_config_id = result.id_
        return result

    def do_delete_inventory_config(self):
        _, error = admin_delete_inventory_configuration(inventory_configuration_id=self.inventory_config_id)
        self.assertIsNone(error, error)

    # region test:inventory_crud

    def test_inventory_crud(self):
        # arrange - inventory configuration

        inventory_config = self.do_create_inventory_config()

        _, error, user_id = self.do_create_user(body=self.model_user_create_request)
        self.log_warning(
            msg=f"Failed to set up user. {str(error)}", condition=error is not None
        )
        self.user_id = user_id

        # act - create inventory

        body = (
            ApimodelsCreateInventoryReq()
            .with_inventory_configuration_code(inventory_config.code)
            .with_user_id(self.user_id)
        )
        result, error = admin_create_inventory(body=body, namespace=self.namespace)

        # assert - create inventory

        self.assertIsNone(error, error)
        self.assertIsNotNone(result)

        # act - update inventory

        inventory_id = result.id_
        body = ApimodelsUpdateInventoryReq().with_inc_max_slots(2)
        result, error = admin_update_inventory(body=body, inventory_id=inventory_id, namespace=self.namespace)

        # assert - update inventory

        self.assertIsNone(error, error)
        self.assertIsNotNone(result)

        # act - get inventory

        result, error = admin_get_inventory(inventory_id=inventory_id, namespace=self.namespace)

        # assert - get inventory

        self.assertIsNone(error, error)
        self.assertIsNotNone(result)

        # act - delete inventory

        _, error = delete_inventory(
            body=ApimodelsDeleteInventoryReq.create(message="deleting"),
            inventory_id=inventory_id,
            namespace=self.namespace
        )

        # assert - delete inventory

        self.assertIsNone(error, error)

    def tearDown(self) -> None:
        self.do_delete_inventory_config()

    # endregion test:inventory_crud

    # end of file
