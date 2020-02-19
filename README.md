# desafiosefaziviamatheusfelipe
Desafio Técnico- Desenvolvedor-IVIA



Desafio Sefaz para desenvolvedores

Versão das Libs utilizadas:

JSP-API - 2.3.1
IDE - Eclipse IDE for Enterprise Java Developers.
Version: 2019-12 (4.14.0)
Build id: 20191212-1212
JAVA - 1.8
Apache Tomcat - 8.0
JSTL - 1.2
Javax Servlet - 2.5
mysql-connector-java - 8.0.16

funcionalidades:
1. Fazer login
2. Consultar Usuários (Lista todos)
3. Incluir Usuário
4. Alterar Usuário
5. Remover Usuário

Configuração do banco de dados;
CREATE TABLE `register3` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
)