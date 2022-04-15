resource "aws_iam_role" "aft_states" {
  name               = "aft-account-global-customizations-role"
  assume_role_policy = templatefile("${path.module}/iam/trust-policies/states.tpl", { none = "none" })
}

resource "aws_iam_role_policy" "aft_states" {
  name = "aft-account-global-customizations-policy"
  role = aws_iam_role.aft_states.id

  policy = templatefile("${path.module}/iam/role-policies/iam-aft-states.tpl", {
    account_global_customizations_sfn_arn = aws_sfn_state_machine.aft_account_global_customizations.arn
  })
}