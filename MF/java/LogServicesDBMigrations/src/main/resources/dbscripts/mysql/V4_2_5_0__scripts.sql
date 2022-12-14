DROP TABLE IF EXISTS `auditactivity`;
CREATE TABLE `auditactivity` (
  `Id` varchar(255) NOT NULL,
  `EventId` varchar(45) DEFAULT NULL,
  `EventType` varchar(255) DEFAULT NULL,
  `EventSubType` varchar(255) DEFAULT NULL,
  `Status_Id` varchar(255) DEFAULT NULL,
  `sessionId` varchar(255) DEFAULT NULL,
  `AppId` varchar(255) DEFAULT NULL,
  `UserName` varchar(255) DEFAULT NULL,
  `Customer_Id` varchar(255) DEFAULT NULL,
  `isCSRAssist` tinyint(1) NOT NULL DEFAULT '0',
  `appSessionId` varchar(255) DEFAULT NULL,
  `payeeNickName` varchar(255) DEFAULT NULL,
  `relationshipNumber` varchar(255) DEFAULT NULL,
  `AdminUserName` varchar(255) DEFAULT NULL,
  `AdminUserRole` varchar(255) DEFAULT NULL,
  `Producer` varchar(255) DEFAULT NULL,
  `MoneyMovementRefId` varchar(255) DEFAULT NULL,
  `EventData` json DEFAULT NULL,
  `creditcardnumber` varchar(255) DEFAULT NULL,
  `mfa_State` varchar(255) DEFAULT NULL,
  `mfa_ServiceKey` varchar(255) DEFAULT NULL,
  `mfa_Type` varchar(255) DEFAULT NULL,
  `nonSearchable` json DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `deviceModel` varchar(255) DEFAULT NULL,
  `operatingSystem` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `deviceId` varchar(255) DEFAULT NULL,
  `channel` varchar(255) DEFAULT NULL,
  `appVersion` varchar(255) DEFAULT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `ipAddress` varchar(255) DEFAULT NULL,
  `eventts` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT NULL,
  `softdeleteflag` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IDX_auditactivity_eventtype` (`EventType`),
  KEY `IDX_auditactivity_eventsubtype` (`EventSubType`),
  KEY `IDX_auditactivity_UserName` (`UserName`),
  KEY `IDX_auditactivity_CustomerId` (`Customer_Id`),
  KEY `IDX_auditactivity_moneymovementid` (`MoneyMovementRefId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `moneymovementlog`;
CREATE TABLE `moneymovementlog` (
  `Id` varchar(50) NOT NULL,
  `isScheduled` bit(1) NOT NULL DEFAULT b'0',
  `Customer_id` varchar(50) DEFAULT NULL,
  `ExpenseCategory_id` int(11) DEFAULT NULL,
  `Payee_id` int(11) DEFAULT NULL,
  `Bill_id` int(11) DEFAULT NULL,
  `Type_id` int(11) DEFAULT NULL,
  `Reference_id` varchar(50) DEFAULT NULL,
  `fromAccountNumber` varchar(50) DEFAULT NULL,
  `fromAccountBalance` decimal(10,2) DEFAULT '0.00',
  `toAccountNumber` varchar(50) DEFAULT NULL,
  `toAccountBalance` decimal(10,2) DEFAULT '0.00',
  `amount` decimal(20,2) DEFAULT '0.00',
  `convertedAmount` decimal(20,2) DEFAULT NULL,
  `transactionCurrency` varchar(45) DEFAULT NULL,
  `baseCurrency` varchar(45) DEFAULT NULL,
  `Status_id` varchar(50) DEFAULT NULL,
  `statusDesc` varchar(50) DEFAULT NULL,
  `notes` varchar(150) DEFAULT '',
  `checkNumber` int(11) DEFAULT '0',
  `imageURL1` text,
  `imageURL2` text,
  `hasDepositImage` tinyint(1) DEFAULT '0',
  `description` varchar(100) DEFAULT ' ',
  `scheduledDate` timestamp NULL DEFAULT NULL,
  `transactionDate` timestamp NULL DEFAULT NULL,
  `createdDate` timestamp NULL DEFAULT NULL,
  `transactionComments` varchar(100) DEFAULT NULL,
  `toExternalAccountNumber` varchar(45) DEFAULT NULL,
  `Person_Id` int(11) DEFAULT NULL,
  `frequencyType` enum('Once','Daily','Weekly','BiWeekly','Monthly','Yearly','Half Yearly','Quarterly','Every Two Weeks') DEFAULT 'Once',
  `numberOfRecurrences` int(11) DEFAULT '0',
  `frequencyStartDate` timestamp NULL DEFAULT NULL,
  `frequencyEndDate` timestamp NULL DEFAULT NULL,
  `checkImage` longtext,
  `checkImageBack` longtext,
  `cashlessOTPValidDate` timestamp NULL DEFAULT NULL,
  `cashlessOTP` varchar(50) DEFAULT NULL,
  `cashlessPhone` varchar(50) DEFAULT NULL,
  `cashlessEmail` varchar(50) DEFAULT NULL,
  `cashlessPersonName` varchar(50) DEFAULT NULL,
  `cashlessMode` varchar(50) DEFAULT NULL,
  `cashlessSecurityCode` varchar(50) DEFAULT NULL,
  `cashWithdrawalTransactionStatus` varchar(50) DEFAULT NULL,
  `cashlessPin` varchar(50) DEFAULT NULL,
  `category` enum('Auto & Transport','Bills & Utilities','Business Services','Education','Entertainment','Fees & Charges','Financial','Food & Dining','Gifts & Donations','Health & Fitness','Home','Income','Investments','Kids','Personal Care','Pets','Shopping','Taxes','Transfer','Travel','Uncategorised') DEFAULT 'Uncategorised',
  `billCategory` enum('Credit Card','Phone','Utilities','Insurance') DEFAULT NULL,
  `recurrenceDesc` varchar(50) DEFAULT NULL,
  `deliverBy` varchar(50) DEFAULT NULL,
  `p2pContact` varchar(50) DEFAULT NULL,
  `p2pRequiredDate` timestamp NULL DEFAULT NULL,
  `requestCreatedDate` varchar(50) DEFAULT NULL,
  `penaltyFlag` bit(1) DEFAULT b'0',
  `payoffFlag` bit(1) DEFAULT b'0',
  `viewReportLink` varchar(150) DEFAULT 'http://pmqa.konylabs.net/KonyWebBanking/view_report.png',
  `isPaypersonDeleted` bit(1) DEFAULT b'0',
  `fee` varchar(50) DEFAULT '0.00',
  `feeCurrency` varchar(45) DEFAULT NULL,
  `feePaidByReceipent` bit(1) DEFAULT NULL,
  `frontImage1` varchar(100) DEFAULT NULL,
  `frontImage2` varchar(100) DEFAULT NULL,
  `backImage1` varchar(100) DEFAULT NULL,
  `backImage2` varchar(100) DEFAULT NULL,
  `checkDesc` varchar(50) DEFAULT NULL,
  `checkNumber1` varchar(50) DEFAULT NULL,
  `checkNumber2` varchar(50) DEFAULT NULL,
  `bankName1` varchar(50) DEFAULT NULL,
  `bankName2` varchar(50) DEFAULT NULL,
  `withdrawlAmount1` varchar(50) DEFAULT '0.00',
  `withdrawlAmount2` varchar(50) DEFAULT '0.00',
  `cashAmount` varchar(50) DEFAULT '0.00',
  `payeeCurrency` varchar(50) DEFAULT 'INR',
  `billid` bigint(20) DEFAULT NULL,
  `isDisputed` bit(1) DEFAULT b'0',
  `disputeDescription` varchar(50) DEFAULT NULL,
  `disputeReason` varchar(50) DEFAULT NULL,
  `disputeStatus` varchar(50) DEFAULT NULL,
  `disputeDate` timestamp NULL DEFAULT NULL,
  `payeeName` varchar(50) DEFAULT NULL,
  `checkDateOfIssue` timestamp NULL DEFAULT NULL,
  `checkReason` varchar(50) DEFAULT NULL,
  `isPayeeDeleted` bit(1) DEFAULT b'0',
  `amountRecieved` varchar(50) DEFAULT '0',
  `requestValidity` timestamp NULL DEFAULT NULL,
  `statementReference` varchar(35) DEFAULT NULL,
  `transCreditDebitIndicator` varchar(45) DEFAULT NULL,
  `bookingDateTime` timestamp NULL DEFAULT NULL,
  `valueDateTime` timestamp NULL DEFAULT NULL,
  `transactionInformation` varchar(500) DEFAULT NULL,
  `addressLine` varchar(70) DEFAULT NULL,
  `transactionAmount` varchar(50) DEFAULT NULL,
  `chargeAmount` varchar(50) DEFAULT NULL,
  `chargeCurrency` varchar(50) DEFAULT NULL,
  `sourceCurrency` varchar(45) DEFAULT NULL,
  `targetCurrency` varchar(50) DEFAULT NULL,
  `unitCurrency` varchar(50) DEFAULT NULL,
  `exchangeRate` varchar(45) DEFAULT NULL,
  `contractIdentification` varchar(35) DEFAULT NULL,
  `quotationDate` timestamp NULL DEFAULT NULL,
  `instructedAmount` varchar(45) DEFAULT NULL,
  `instructedCurrency` varchar(45) DEFAULT NULL,
  `transactionCode` varchar(35) DEFAULT NULL,
  `transactionSubCode` varchar(45) DEFAULT NULL,
  `proprietaryTransactionCode` varchar(35) DEFAULT NULL,
  `proprietaryTransactionIssuer` varchar(35) DEFAULT NULL,
  `balanceCreditDebitIndicator` varchar(45) DEFAULT NULL,
  `balanceType` varchar(45) DEFAULT NULL,
  `balanceAmount` varchar(45) DEFAULT NULL,
  `balanceCurrency` varchar(45) DEFAULT NULL,
  `merchantName` varchar(45) DEFAULT NULL,
  `merchantCategoryCode` varchar(45) DEFAULT NULL,
  `creditorAgentSchemeName` varchar(45) DEFAULT NULL,
  `creditorAgentIdentification` varchar(45) DEFAULT NULL,
  `creditorAgentName` varchar(140) DEFAULT NULL,
  `creditorAgentaddressType` varchar(45) DEFAULT NULL,
  `creditorAgentDepartment` varchar(45) DEFAULT NULL,
  `creditorAgentSubDepartment` varchar(45) DEFAULT NULL,
  `creditorAgentStreetName` varchar(45) DEFAULT NULL,
  `creditorAgentBuildingNumber` varchar(45) DEFAULT NULL,
  `creditorAgentPostCode` varchar(45) DEFAULT NULL,
  `creditorAgentTownName` varchar(45) DEFAULT NULL,
  `creditorAgentCountrySubDivision` varchar(45) DEFAULT NULL,
  `creditorAgentCountry` varchar(45) DEFAULT NULL,
  `creditorAgentAddressLine` varchar(45) DEFAULT NULL,
  `creditorAccountSchemeName` varchar(45) DEFAULT NULL,
  `creditorAccountIdentification` varchar(45) DEFAULT NULL,
  `creditorAccountName` varchar(45) DEFAULT NULL,
  `creditorAccountSeconIdentification` varchar(45) DEFAULT NULL,
  `debtorAgentSchemeName` varchar(45) DEFAULT NULL,
  `debtorAgentIdentification` varchar(45) DEFAULT NULL,
  `debtorAgentName` varchar(45) DEFAULT NULL,
  `debtorAgentAddressType` varchar(45) DEFAULT NULL,
  `debtorAgentDepartment` varchar(45) DEFAULT NULL,
  `debtorAgentSubDepartment` varchar(45) DEFAULT NULL,
  `debtorAgentStreetName` varchar(45) DEFAULT NULL,
  `debtorAgentBuildingNumber` varchar(45) DEFAULT NULL,
  `dedtorAgentPostCode` varchar(45) DEFAULT NULL,
  `debtorAgentTownName` varchar(45) DEFAULT NULL,
  `debtorAgentCountrySubDivision` varchar(45) DEFAULT NULL,
  `debtorAgentCountry` varchar(45) DEFAULT NULL,
  `debtorAgentAddressLine` varchar(45) DEFAULT NULL,
  `debtorAccountSchemeName` varchar(45) DEFAULT NULL,
  `debtorAccountIdentification` varchar(45) DEFAULT NULL,
  `debtorAccountName` varchar(45) DEFAULT NULL,
  `debtorAccountSeconIdentification` varchar(45) DEFAULT NULL,
  `cardInstrumentSchemeName` varchar(45) DEFAULT NULL,
  `cardInstrumentAuthorisationType` varchar(45) DEFAULT NULL,
  `cardInstrumentName` varchar(45) DEFAULT NULL,
  `cardInstrumentIdentification` varchar(45) DEFAULT NULL,
  `IBAN` varchar(45) DEFAULT NULL,
  `sortCode` varchar(45) DEFAULT NULL,
  `FirstPaymentDateTime` timestamp NULL DEFAULT NULL,
  `NextPaymentDateTime` timestamp NULL DEFAULT NULL,
  `FinalPaymentDateTime` timestamp NULL DEFAULT NULL,
  `StandingOrderStatusCode` varchar(6) DEFAULT NULL,
  `FP_Amount` decimal(12,2) DEFAULT NULL,
  `FP_Currency` varchar(45) DEFAULT NULL,
  `NP_Amount` decimal(12,2) DEFAULT NULL,
  `NP_Currency` varchar(45) DEFAULT NULL,
  `FPA_Amount` decimal(12,2) DEFAULT NULL,
  `FPA_Currency` varchar(45) DEFAULT NULL,
  `ConsentId` varchar(45) DEFAULT NULL,
  `Initiation_InstructionIdentification` varchar(45) DEFAULT NULL,
  `Initiation_EndToEndIdentification` varchar(45) DEFAULT NULL,
  `RI_Reference` varchar(45) DEFAULT NULL,
  `RI_Unstructured` varchar(45) DEFAULT NULL,
  `RiskPaymentContextCode` varchar(45) DEFAULT NULL,
  `MerchantCustomerIdentification` varchar(200) DEFAULT NULL,
  `beneficiaryName` varchar(50) DEFAULT NULL,
  `bankName` varchar(50) DEFAULT NULL,
  `swiftCode` varchar(45) DEFAULT NULL,
  `DomesticPaymentId` varchar(45) DEFAULT NULL,
  `linkSelf` varchar(45) DEFAULT NULL,
  `StatusUpdateDateTime` timestamp(6) NULL DEFAULT NULL,
  `dataStatus` varchar(45) DEFAULT NULL,
  `serviceName` varchar(50) DEFAULT NULL,
  `payPersonName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fromAccountNumber` (`fromAccountNumber`),
  KEY `toAccountNumber` (`toAccountNumber`),
  KEY `fromtoaccountnumber` (`fromAccountNumber`,`toAccountNumber`) COMMENT 'from and two account number',
  KEY `type_id` (`Type_id`) COMMENT 'transaction Type',
  KEY `payee_id` (`Payee_id`) COMMENT 'payee index'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


