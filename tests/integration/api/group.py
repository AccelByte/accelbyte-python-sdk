from typing import Optional

from tests.integration.test_case import IntegrationTestCase

from accelbyte_py_sdk.api.group.models import ModelsPublicCreateNewGroupRequestV1
from accelbyte_py_sdk.api.group.models import ModelsGroupRule
from accelbyte_py_sdk.api.group.models import ModelsGroupRuleGroupCustomRule

from accelbyte_py_sdk.api.group.models import ModelsGroupResponseV1


class GroupTestCase(IntegrationTestCase):
    initial_configuration_code = "initialConfigurationCode"
    group_admin_role_id: str = ""
    group_member_role_id: str = ""
    group_configuration_code = "pythonServerSDKConfigurationCode"
    group_namespace: str = ""
    group_id: Optional[str] = None
    models_public_create_new_group_request_v1: ModelsPublicCreateNewGroupRequestV1 = (
        ModelsPublicCreateNewGroupRequestV1.create(
            configuration_code=group_configuration_code,
            custom_attributes={},
            group_description="DESCRIPTION",
            group_icon="",
            group_max_member=1,
            group_name="GROUP_NAME",
            group_region="us-west-1",
            group_rules=ModelsGroupRule.create(
                group_custom_rule=ModelsGroupRuleGroupCustomRule.create(dict_={}),
                group_predefined_rules=[],
            ),
            group_type="PRIVATE",
        )
    )

    def setUp(self) -> None:
        from accelbyte_py_sdk.api.group import get_group_configuration_admin_v1
        from accelbyte_py_sdk.api.group import initiate_group_configuration_admin_v1
        from accelbyte_py_sdk.api.group import create_group_configuration_admin_v1
        from accelbyte_py_sdk.api.group import delete_group_public_v1
        from accelbyte_py_sdk.api.group import get_user_group_information_public_v2
        from accelbyte_py_sdk.api.group.models import (
            ModelsCreateGroupConfigurationRequestV1,
        )

        super().setUp()

        result, error = get_user_group_information_public_v2()
        if not error:
            for g in result.data:
                _, error = delete_group_public_v1(g.group_id)
                if error:
                    self.log_warning(f"Failed to delete group user is in. {str(error)}")

        result, error = get_group_configuration_admin_v1(
            configuration_code=self.initial_configuration_code
        )
        if error:
            result, error = initiate_group_configuration_admin_v1()
            if error:
                self.skipTest(reason="Failed to get and initiate group configuration.")
                return
            else:
                self.group_admin_role_id = result.group_admin_role_id
                self.group_member_role_id = result.group_member_role_id
        else:
            self.group_admin_role_id = result.group_admin_role_id
            self.group_member_role_id = result.group_member_role_id

        if not self.group_admin_role_id or not self.group_member_role_id:
            self.skipTest(reason="Failed to get admin and member role IDs.")
            return

        self.group_namespace = self.namespace

        _, _ = create_group_configuration_admin_v1(
            body=ModelsCreateGroupConfigurationRequestV1.create(
                allow_multiple=False,
                configuration_code=self.group_configuration_code,
                description="DESCRIPTION",
                global_rules=[],
                group_admin_role_id=self.group_admin_role_id,
                group_max_member=50,
                group_member_role_id=self.group_member_role_id,
                name="Python Extend SDK Configuration Code",
            )
        )

    # noinspection PyMethodMayBeStatic
    def do_create_new_group_public_v1(
        self, body: ModelsPublicCreateNewGroupRequestV1, namespace: Optional[str] = None
    ):
        # pylint: disable=no-self-use
        from accelbyte_py_sdk.api.group import create_new_group_public_v1

        result, error = create_new_group_public_v1(
            body=self.models_public_create_new_group_request_v1, namespace=namespace
        )

        group_id: Optional[str] = None

        if error is None:
            group_id = result.group_id
        else:
            group_id = None

        return result, error, group_id

    def tearDown(self) -> None:
        from accelbyte_py_sdk.api.group import delete_group_public_v1

        if self.group_id is not None:
            _, error = delete_group_public_v1(
                group_id=self.group_id, namespace=self.group_namespace
            )
            self.log_warning(
                msg=f"Failed to tear down group. {str(error)}",
                condition=error is not None,
            )

        super().tearDown()

    # region test:create_new_group_public_v1

    def test_create_new_group_public_v1(self):
        # arrange
        # NOTE(elmer): can't delete, need group id

        # act
        _, error, group_id = self.do_create_new_group_public_v1(
            body=self.models_public_create_new_group_request_v1,
            namespace=self.group_namespace,
        )
        self.group_id = group_id

        # assert
        self.assertIsNone(error, error)

    # endregion test:create_new_group_public_v1

    # region test:delete_group_public_v1

    def test_delete_group_public_v1(self):
        from accelbyte_py_sdk.api.group import delete_group_public_v1

        # arrange
        _, error, group_id = self.do_create_new_group_public_v1(
            body=self.models_public_create_new_group_request_v1,
            namespace=self.group_namespace,
        )
        self.log_warning(
            msg=f"Failed to set up group. {str(error)}", condition=error is not None
        )
        self.group_id = group_id

        # act
        _, error = delete_group_public_v1(
            group_id=self.group_id, namespace=self.group_namespace
        )

        # assert
        self.assertIsNone(error, error)
        self.group_id = None

    # endregion test:delete_group_public_v1

    # region test:get_single_group_public_v1

    def test_get_single_group_public_v1(self):
        from accelbyte_py_sdk.api.group import get_single_group_public_v1

        # arrange
        _, error, group_id = self.do_create_new_group_public_v1(
            body=self.models_public_create_new_group_request_v1,
            namespace=self.group_namespace,
        )
        self.log_warning(
            msg=f"Failed to set up group. {str(error)}", condition=error is not None
        )
        self.group_id = group_id

        # act
        _, error = get_single_group_public_v1(
            group_id=self.group_id, namespace=self.group_namespace
        )

        # assert
        self.assertIsNone(error, error)

    # endregion test:get_single_group_public_v1

    # region test:update_single_group_v1

    def test_update_single_group_v1(self):
        from accelbyte_py_sdk.api.group import update_single_group_v1
        from accelbyte_py_sdk.api.group.models import ModelsUpdateGroupRequestV1
        from accelbyte_py_sdk.api.group.models import (
            ModelsUpdateGroupRequestV1CustomAttributes,
        )

        # arrange
        _, error, group_id = self.do_create_new_group_public_v1(
            body=self.models_public_create_new_group_request_v1,
            namespace=self.group_namespace,
        )
        self.log_warning(
            msg=f"Failed to set up group. {str(error)}", condition=error is not None
        )
        self.group_id = group_id

        # act
        result, error = update_single_group_v1(
            body=ModelsUpdateGroupRequestV1.create(
                custom_attributes=ModelsUpdateGroupRequestV1CustomAttributes.create(
                    dict_={}
                ),
                group_description="KETERANGAN",
                group_icon="",
                group_name="NAMA_GRUP",
                group_region="us-west-1",
                group_type="PRIVATE",
            ),
            group_id=self.group_id,
            namespace=self.group_namespace,
        )

        # assert
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, ModelsGroupResponseV1)
        self.assertIsNotNone(result.group_name)
        self.assertEqual("NAMA_GRUP", result.group_name)

    # endregion test:update_single_group_v1

    # end of file
