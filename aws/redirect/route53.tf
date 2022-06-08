resource "aws_route53_zone" "hosted_zone" {
  name = var.domain_name_source
}

resource "aws_route53_record" "cloudfront_A" {
  zone_id = aws_route53_zone.hosted_zone.zone_id
  name    = var.domain_name_source
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.lambda.domain_name
    zone_id                = aws_cloudfront_distribution.lambda.hosted_zone_id
    evaluate_target_health = false
  }
}