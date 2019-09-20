CREATE TABLE {$NAMESPACE}_phame.phame_blogtransaction (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  phid VARBINARY(64) NOT NULL,
  authorPHID VARBINARY(64) NOT NULL,
  objectPHID VARBINARY(64) NOT NULL,
  viewPolicy VARBINARY(64) NOT NULL,
  editPolicy VARBINARY(64) NOT NULL,
  commentPHID VARBINARY(64) DEFAULT NULL,
  commentVersion INT UNSIGNED NOT NULL,
  transactionType VARCHAR(32) COLLATE {$COLLATE_TEXT} NOT NULL,
  oldValue LONGTEXT COLLATE {$COLLATE_TEXT} NOT NULL,
  newValue LONGTEXT COLLATE {$COLLATE_TEXT} NOT NULL,
  contentSource LONGTEXT COLLATE {$COLLATE_TEXT} NOT NULL,
  metadata LONGTEXT COLLATE {$COLLATE_TEXT} NOT NULL,
  dateCreated INT UNSIGNED NOT NULL,
  dateModified INT UNSIGNED NOT NULL,
  UNIQUE KEY `key_phid` (`phid`),
  KEY `key_object` (`objectPHID`)
) ENGINE=InnoDB, COLLATE {$COLLATE_TEXT};
