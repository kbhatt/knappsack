--
-- Table structure for table `DOMAIN_CONFIGURATION`
--

DROP TABLE IF EXISTS `DOMAIN_CONFIGURATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DOMAIN_CONFIGURATION` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `APPLICATION_LIMIT` bigint(20) NOT NULL,
  `APP_VERSION_LIMIT` bigint(20) NOT NULL,
  `CHANGED_BY` varchar(255) DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `DISABLED` tinyint(1) NOT NULL DEFAULT '0',
  `LAST_UPDATE` date DEFAULT NULL,
  `MEGABYTE_BANDWIDTH_LIMIT` bigint(20) DEFAULT NULL,
  `MONITOR_BANDWIDTH` tinyint(1) NOT NULL DEFAULT '0',
  `MEGABYTE_STORAGE_LIMIT` bigint(20) NOT NULL,
  `USER_LIMIT` bigint(20) NOT NULL,
  `UUID` varchar(255) NOT NULL,
  `VERSION` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UUID` (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

ALTER TABLE ORG_GROUP
  ADD COLUMN `DOMAINCONFIGURATION_ID` bigint(20) DEFAULT NULL,
  ADD CONSTRAINT `FK_ORG_GROUP_DOMAINCONFIGURATION_ID` FOREIGN KEY (`DOMAINCONFIGURATION_ID`) REFERENCES `DOMAIN_CONFIGURATION` (`ID`);

ALTER TABLE ORGANIZATION
  ADD COLUMN `DOMAINCONFIGURATION_ID` bigint(20) DEFAULT NULL,
  ADD CONSTRAINT `FK_ORGANIZATION_DOMAINCONFIGURATION_ID` FOREIGN KEY (`DOMAINCONFIGURATION_ID`) REFERENCES `DOMAIN_CONFIGURATION` (`ID`);

ALTER TABLE APP_FILE
  ADD COLUMN `SIZE` double DEFAULT NULL;