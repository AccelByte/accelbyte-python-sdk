# Prerequisites:
# 1. Initialize the SDK
# 2. Login as either a Client or a User


def example_create_group():
    from accelbyte_py_sdk.api.group import create_new_group_public_v1
    from accelbyte_py_sdk.api.group.models import ModelsGroupRule
    from accelbyte_py_sdk.api.group.models import ModelsGroupRuleGroupCustomRule
    from accelbyte_py_sdk.api.group.models import ModelsRule
    from accelbyte_py_sdk.api.group.models import ModelsRuleInformation
    from accelbyte_py_sdk.api.group.models import ModelsPublicCreateNewGroupRequestV1

    result, error = create_new_group_public_v1(
        body=ModelsPublicCreateNewGroupRequestV1.create(
            configuration_code="<configuration-code>",
            custom_attributes={},
            group_description="<group-description>",
            group_icon="<group-icon>",
            group_max_member=20,
            group_name="<group-name>",
            group_region="<group-region>",
            group_rules=ModelsGroupRule.create(
                group_custom_rule=ModelsGroupRuleGroupCustomRule.create(
                    dict_={}
                ),
                group_predefined_rules=[
                    ModelsRule.create(
                        allowed_action="<allowed-action>",
                        rule_detail=[
                            ModelsRuleInformation.create(
                                rule_attribute="<rule-attribute>",
                                rule_criteria="<rule-criteria>",
                                rule_value=1
                            )
                        ],
                    )
                ]
            ),
            group_type="<group-type>"
        )
    )
    if error:
        print(error)


def example_delete_group():
    from accelbyte_py_sdk.api.group import delete_group_public_v1

    result, error = delete_group_public_v1(
        group_id="<group-id>"
    )
    if error:
        print(error)


def example_get_group():
    from accelbyte_py_sdk.api.group import get_single_group_public_v1

    result, error = get_single_group_public_v1(
        group_id="<group-id>"
    )
    if error:
        print(error)


def example_update_group():
    from accelbyte_py_sdk.api.group import update_single_group_v1
    from accelbyte_py_sdk.api.group.models import ModelsUpdateGroupRequestV1
    from accelbyte_py_sdk.api.group.models import ModelsUpdateGroupRequestV1CustomAttributes

    result, error = update_single_group_v1(
        body=ModelsUpdateGroupRequestV1.create(
            custom_attributes=ModelsUpdateGroupRequestV1CustomAttributes.create(
                dict_={}
            ),
            group_description="<group-description>",
            group_icon="<group-icon>",
            group_name="<group-name>",
            group_region="<group-region>",
            group_type="<group-type>"
        ),
        group_id="<group-id>"
    )
    if error:
        print(error)
