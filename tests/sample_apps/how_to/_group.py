from typing import Optional

from ._integration_test_case import IntegrationTestCase

from accelbyte_py_sdk.api.group.models import ModelsPublicCreateNewGroupRequestV1
from accelbyte_py_sdk.api.group.models import ModelsGroupRule
from accelbyte_py_sdk.api.group.models import ModelsGroupRuleGroupCustomRule

from accelbyte_py_sdk.api.group.models import ModelsGroupResponseV1


class GroupTestCase(IntegrationTestCase):

    group_id: Optional[str] = None
    models_public_create_new_group_request_v1: ModelsPublicCreateNewGroupRequestV1 = ModelsPublicCreateNewGroupRequestV1.create(
        configuration_code="CODE",
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

    def setUp(self) -> None:
        from accelbyte_py_sdk.services.auth import login_user

        super().setUp()
        _, error = login_user(username=self.username, password=self.password)
        self.assertIsNone(error, error)

    def tearDown(self) -> None:
        from accelbyte_py_sdk.api.group import delete_group_public_v1

        if self.group_id is not None:
            _, _ = delete_group_public_v1(group_id=self.group_id)
        super().tearDown()

    def test_create_new_group_public_v1(self):
        from accelbyte_py_sdk.api.group import create_new_group_public_v1

        # arrange

        # act
        result, error = create_new_group_public_v1(body=self.models_public_create_new_group_request_v1)

        # assert
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, ModelsGroupResponseV1)
        self.assertIsNotNone(result.group_id)

        self.group_id = result.group_id

    def test_delete_group_public_v1(self):
        from accelbyte_py_sdk.api.group import create_new_group_public_v1
        from accelbyte_py_sdk.api.group import delete_group_public_v1

        # arrange
        result, error = create_new_group_public_v1(body=self.models_public_create_new_group_request_v1)
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, ModelsGroupResponseV1)
        self.assertIsNotNone(result.group_id)

        self.group_id = result.group_id

        # act
        _, error = delete_group_public_v1(group_id=self.group_id)

        # assert
        self.assertIsNone(error, error)

    def test_get_single_group_public_v1(self):
        from accelbyte_py_sdk.api.group import create_new_group_public_v1
        from accelbyte_py_sdk.api.group import get_single_group_public_v1

        # arrange
        result, error = create_new_group_public_v1(body=self.models_public_create_new_group_request_v1)
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, ModelsGroupResponseV1)
        self.assertIsNotNone(result.group_id)

        self.group_id = result.group_id

        # act
        _, error = get_single_group_public_v1(group_id=self.group_id)

        # assert
        self.assertIsNone(error, error)

    def test_update_single_group_v1(self):
        from accelbyte_py_sdk.api.group import create_new_group_public_v1
        from accelbyte_py_sdk.api.group import update_single_group_v1
        from accelbyte_py_sdk.api.group.models import ModelsUpdateGroupRequestV1
        from accelbyte_py_sdk.api.group.models import ModelsUpdateGroupRequestV1CustomAttributes

        # arrange
        result, error = create_new_group_public_v1(body=self.models_public_create_new_group_request_v1)
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, ModelsGroupResponseV1)
        self.assertIsNotNone(result.group_id)

        self.group_id = result.group_id

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
            group_id=self.group_id
        )

        # assert
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, ModelsGroupResponseV1)
        self.assertIsNotNone(result.group_name)
        self.assertEqual("NAME_GRUP", result.group_name)
