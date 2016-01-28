CREATE TABLE {$NAMESPACE}_repository.repository_pullevent (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  phid VARBINARY(64) NOT NULL,
  repositoryPHID VARBINARY(64),
  epoch INT UNSIGNED NOT NULL,
  pullerPHID VARBINARY(64),
  remoteAddress INT UNSIGNED,
  remoteProtocol VARCHAR(32) COLLATE {$COLLATE_TEXT},
  resultType VARCHAR(32) NOT NULL COLLATE {$COLLATE_TEXT},
  resultCode INT UNSIGNED NOT NULL,
  properties LONGTEXT NOT NULL COLLATE {$COLLATE_TEXT},
  KEY `key_repository` (repositoryPHID),
  KEY `key_epoch` (epoch)
) ENGINE=InnoDB, COLLATE {$COLLATE_TEXT};