from typing import Optional
from uuid import uuid4

from tests.integration.test_case import IntegrationTestCase

from accelbyte_py_sdk.api.chat.models import ModelsDictionaryInsertRequest


class ChatTestCase(IntegrationTestCase):
    profanity_prefix: str = "assert"
    profanity_id: Optional[str] = None
    dict_insert_request: ModelsDictionaryInsertRequest = (
        ModelsDictionaryInsertRequest.create_from_dict(
            {
                "falseNegative": [],
                "falsePositive": [],
                "word": "",
                "wordType": "FALSEPOSITIVE",
            }
        )
    )

    # noinspection PyMethodMayBeStatic
    def do_create_profanity(self, body: ModelsDictionaryInsertRequest):
        from accelbyte_py_sdk.api.chat import admin_profanity_create

        body.word = f"{self.profanity_prefix}{uuid4().hex}"
        result, error = admin_profanity_create(body=body)

        if error is None:
            profanity_id = result.id_
        else:
            profanity_id = None

        return result, error, profanity_id

    def tearDown(self) -> None:
        from accelbyte_py_sdk.api.chat import admin_profanity_delete

        if self.profanity_id is not None:
            _, error = admin_profanity_delete(id_=self.profanity_id)
            self.log_warning(
                msg=f"Failed to tear down profanity. {str(error)}",
                condition=error is not None,
            )
            self.profanity_id = None

        super().tearDown()

    # region test:admin_profanity_create

    def test_admin_profanity_create(self):
        # arrange

        # act
        _, error, profanity_id = self.do_create_profanity(body=self.dict_insert_request)
        self.profanity_id = profanity_id

        # assert
        self.assertIsNone(error, error)

    # endregion test:admin_profanity_create

    # region test:admin_profanity_query

    def test_admin_profanity_query(self):
        from accelbyte_py_sdk.api.chat import admin_profanity_query

        # arrange
        result, error, profanity_id = self.do_create_profanity(
            body=self.dict_insert_request
        )
        if error:
            self.skipTest(reason=f"Failed to set up profanity. {error}")
        self.profanity_id = profanity_id

        # act
        _, error = admin_profanity_query(start_with=self.profanity_prefix)

        # assert
        self.assertIsNone(error, error)

    # endregion test:admin_profanity_query

    # region test:admin_profanity_delete

    def test_admin_profanity_delete(self):
        from accelbyte_py_sdk.api.chat import admin_profanity_delete

        # arrange
        result, error, profanity_id = self.do_create_profanity(
            body=self.dict_insert_request
        )
        if error:
            self.skipTest(reason=f"Failed to set up profanity. {error}")
        self.profanity_id = profanity_id

        # act
        _, error = admin_profanity_delete(id_=self.profanity_id)

        # assert
        self.assertIsNone(error, error)
        self.profanity_id = None

    # endregion test:admin_profanity_delete

    # region test:admin_profanity_update

    def test_admin_profanity_update(self):
        from accelbyte_py_sdk.api.chat import admin_profanity_update
        from accelbyte_py_sdk.api.chat.models import ModelsDictionaryUpdateRequest

        # arrange
        result, error, profanity_id = self.do_create_profanity(
            body=self.dict_insert_request
        )
        if error:
            self.skipTest(reason=f"Failed to set up profanity. {error}")
        self.profanity_id = profanity_id

        # act
        _, error = admin_profanity_update(
            body=ModelsDictionaryUpdateRequest.create_from_dict(
                {
                    "falseNegative": [],
                    "falsePositive": [],
                    "word": f"{self.profanity_prefix}{uuid4().hex}",
                    "wordType": "FALSEPOSITIVE",
                }
            ),
            id_=self.profanity_id,
        )

        # assert
        self.assertIsNone(error, error)

    # endregion test:admin_profanity_update

    # end of file
