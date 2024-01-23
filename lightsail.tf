resource "aws_lightsail_instance" "custom" {
  name              = "custom"  #change name to preference
  availability_zone = "us-east-1b" #change availability zone as preffered
  blueprint_id      = "amazon_linux_2" #change blueprint_id as preffered
  bundle_id         = "nano_1_0" #change bundle_id as preffered
  user_data         = "sudo yum update -y && sudo yum install unzip wget httpd -y  ( apt install wget unzip -y ) && sudo wget https://github.com/utrains/static-resume/archive/refs/heads/main.zip && sudo unzip main.zip #sudo rm -rf /var/www/html/* && sudo cp -r static-resume-main/* /var/www/html/ && sudo systemctl start httpd && sudo systemctl enable httpd sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>This server was created using Terraform </h1>' | sudo tee /var/www/html/index.html"
}