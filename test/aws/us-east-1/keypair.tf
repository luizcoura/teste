resource "aws_key_pair" "default" {
  key_name = "luizcoura"
  public_key = "${file("/Users/luhenri/Documents/workspace/teste/test/aws/us-east-1/luizcoura.pub")}"
}