from typing import Optional

from ._integration_test_case import IntegrationTestCase

from accelbyte_py_sdk.api.group.models import ModelsPublicCreateNewGroupRequestV1
from accelbyte_py_sdk.api.group.models import ModelsGroupRule
from accelbyte_py_sdk.api.group.models import ModelsGroupRuleGroupCustomRule

from accelbyte_py_sdk.api.group.models import ModelsGroupResponseV1


class GroupTestCase(IntegrationTestCase):

    group_namespace: str = "accelbyte"
    group_id: Optional[str] = None
    models_public_create_new_group_request_v1: ModelsPublicCreateNewGroupRequestV1 = ModelsPublicCreateNewGroupRequestV1.create(
        configuration_code="initialConfigurationCode",
        custom_attributes={},
        group_description="DESCRIPTION",
        group_icon="",
        group_max_member=1,
        group_name="GROUP_NAME",
        group_region="us-west-1",
        group_rules=ModelsGroupRule.create(
            group_custom_rule=ModelsGroupRuleGroupCustomRule.create(
                dict_={}
            ),
            group_predefined_rules=[]
        ),
        group_type="PRIVATE"
    )

    # noinspection PyMethodMayBeStatic
    def do_create_new_group_public_v1(self, body: ModelsPublicCreateNewGroupRequestV1, namespace: Optional[str] = None):
        # pylint: disable=no-self-use
        from accelbyte_py_sdk.api.group import create_new_group_public_v1

        result, error = create_new_group_public_v1(
            body=self.models_public_create_new_group_request_v1,
            namespace=namespace
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
            _, error = delete_group_public_v1(group_id=self.group_id, namespace=self.group_namespace)
            self.log_warning(msg=f"Failed to tear down group. {str(error)}", condition=error is not None)
        super().tearDown()

    def test_create_new_group_public_v1(self):
        # arrange
        # NOTE(elmer): can't delete, need group id

        # act
        _, error, group_id = self.do_create_new_group_public_v1(body=self.models_public_create_new_group_request_v1, namespace=self.group_namespace)
        self.group_id = group_id

        # assert
        self.assertIsNone(error, error)

    def test_delete_group_public_v1(self):
        from accelbyte_py_sdk.api.group import delete_group_public_v1

        # arrange
        _, error, group_id = self.do_create_new_group_public_v1(body=self.models_public_create_new_group_request_v1, namespace=self.group_namespace)
        self.log_warning(msg=f"Failed to set up group. {str(error)}", condition=error is not None)
        self.group_id = group_id

        # act
        _, error = delete_group_public_v1(group_id=self.group_id, namespace=self.group_namespace)

        # assert
        self.assertIsNone(error, error)
        self.group_id = None

    def test_get_single_group_public_v1(self):
        from accelbyte_py_sdk.api.group import get_single_group_public_v1

        # arrange
        _, error, group_id = self.do_create_new_group_public_v1(body=self.models_public_create_new_group_request_v1, namespace=self.group_namespace)
        self.log_warning(msg=f"Failed to set up group. {str(error)}", condition=error is not None)
        self.group_id = group_id

        # act
        _, error = get_single_group_public_v1(group_id=self.group_id, namespace=self.group_namespace)

        # assert
        self.assertIsNone(error, error)

    def test_update_single_group_v1(self):
        from accelbyte_py_sdk.api.group import update_single_group_v1
        from accelbyte_py_sdk.api.group.models import ModelsUpdateGroupRequestV1
        from accelbyte_py_sdk.api.group.models import ModelsUpdateGroupRequestV1CustomAttributes

        # arrange
        _, error, group_id = self.do_create_new_group_public_v1(body=self.models_public_create_new_group_request_v1, namespace=self.group_namespace)
        self.log_warning(msg=f"Failed to set up group. {str(error)}", condition=error is not None)
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
                group_type="PRIVATE"
            ),
            group_id=self.group_id,
            namespace=self.group_namespace
        )

        # assert
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, ModelsGroupResponseV1)
        self.assertIsNotNone(result.group_name)
        self.assertEqual("NAMA_GRUP", result.group_name)
