module "db_instance_mysql_rampup" {
  source                             = "../modules/db_instance"
  aws_db_instance_storage            = "${var.db_instance_mysql_rampup_storage}"
  aws_db_instance_storage_type       = "${var.db_instance_mysql_rampup_storage_type}"
  aws_db_instance_engine             = "${var.db_instance_mysql_rampup_engine}"
  aws_db_instance_engine_version     = "${var.db_instance_mysql_rampup_engine_version}"
  aws_db_instance_class              = "${var.db_instance_mysql_rampup_class}"
  aws_db_instance_name               = "${var.db_instance_mysql_rampup_name}"
  aws_db_instance_security_groups_id = ["${module.security_group_rds.aws_security_group_id}"]
  aws_db_instance_port               = "${var.db_instance_mysql_rampup_port}"
  aws_db_instance_az                 = "${var.db_instance_mysql_rampup_az}"
  aws_db_subnet_group_name           = "${var.db_instance_mysql_rampup_group_name}"
  aws_db_subnet_group_subnet_ids     = ["${module.subnet_rampup_4.aws_subnet_id}", "${module.subnet_rampup_2.aws_subnet_id}"]
  aws_db_instance_username           = "${var.aws_db_instance_username}"
  aws_db_instance_password           = "${var.aws_db_instance_password}"
}
