data "http" "my_own_public_ip" {
  url = "http://ipv4.icanhazip.com"
}

data "aws_caller_identity" "current" {}

data "aws_iam_policy_document" "es-access-policy" {
  statement {
    sid = "write-access"

    effect = "Allow"
    actions = [
      "es:ESHttpGet",
      "es:ESHttpHead",
      "es:ESHttpPost",
      "es:ESHttpPut"
    ]
    resources = [
      "${aws_elasticsearch_domain.desafio-pagarme.arn}/*"
    ]
    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::${data.aws_caller_identity.current.account_id}:*"]
    }
  }
}
