CREATE USER 'devops_dev'@'%' IDENTIFIED BY 'devops_dev';
GRANT ALL ON *.* TO 'devops_dev'@'%';
FLUSH PRIVILEGES;