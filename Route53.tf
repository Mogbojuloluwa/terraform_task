resource "aws_route53_zone" "gboju" {
  name = var.domain_names.domain_name
}

resource "aws_route53_record" "subdomain_a_record" {
  zone_id = aws_route53_zone.gboju.zone_id
  name = var.domain_names.subdomain_name
  type = "A"

  alias {
    name = aws_lb.main.dns_name
    zone_id = aws_lb.gboju.zone_id
    evaluate_target_health = true
  }
}