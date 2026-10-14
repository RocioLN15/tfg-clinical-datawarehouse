-- -------------------------------------------------------------------------------
--
-- Create the eICU tables
--
-- -------------------------------------------------------------------------------

--------------------------------------------------------
--  DDL for Table ADMISSIONDRUG
--------------------------------------------------------
CREATE TABLE AdmissionDrug
(
  AdmissionDrugID INT PRIMARY KEY,
  PatientUnitStayID INT NOT NULL,
  DrugOffset INT  NOT NULL,
  DrugEnteredOffset INT  NOT NULL,
  DrugNoteType VARCHAR(255),
  SpecialtyType VARCHAR(255),
  UserType VARCHAR(255) NOT NULL,
  RxIncluded VARCHAR(5),
  WrittenIneICU VARCHAR(5),
  DrugName VARCHAR(255) NOT NULL,
  DrugDosage NUMERIC(11,4),
  DrugUnit VARCHAR(1000),
  DrugAdmitFrequency VARCHAR(1000),
  DrugHiclSeqno INT
) ;

--------------------------------------------------------
--  DDL for Table ADMISSIONDX
--------------------------------------------------------
CREATE TABLE AdmissionDx
(
  AdmissionDxID INT PRIMARY KEY,
  PatientUnitStayID INT NOT NULL,
  AdmitDxEnteredOffset INT NOT NULL,
  AdmitDxPath VARCHAR(500) NOT NULL,
  AdmitDxName VARCHAR(255),
  AdmitDxText VARCHAR(255)
) ;

--------------------------------------------------------
--  DDL for Table ALLERGY
--------------------------------------------------------
CREATE TABLE Allergy
(
  AllergyID INT PRIMARY KEY,
  PatientUnitStayID INT NOT NULL,
  AllergyOffset INT NOT NULL,
  AllergyEnteredOffset INT NOT NULL,
  AllergyNoteType VARCHAR(255),
  SpecialtyType VARCHAR(255),
  UserType VARCHAR(255) NOT NULL,
  RxIncluded VARCHAR(5),
  WrittenIneICU VARCHAR(5),
  DrugName VARCHAR(255),
  AllergyType VARCHAR(255),
  AllergyName VARCHAR(255),
  DrugHiclSeqno INT
) ;

--------------------------------------------------------
--  DDL for Table APACHEAPSVAR
--------------------------------------------------------
CREATE TABLE ApacheApsVar
(
  ApacheApsVarID INT PRIMARY KEY,
  PatientUnitStayID INT,
  Intubated SMALLINT,
  Vent SMALLINT,
  Dialysis SMALLINT,
  Eyes SMALLINT,
  Motor SMALLINT,
  Verbal SMALLINT,
  Meds SMALLINT,
  Urine DOUBLE PRECISION,
  WBC DOUBLE PRECISION,
  Temperature DOUBLE PRECISION,
  RespiratoryRate DOUBLE PRECISION,
  Sodium DOUBLE PRECISION,
  HeartRate DOUBLE PRECISION,
  MeanBP DOUBLE PRECISION,
  pH DOUBLE PRECISION,
  Hematocrit DOUBLE PRECISION,
  Creatinine DOUBLE PRECISION,
  Albumin DOUBLE PRECISION,
  paO2 DOUBLE PRECISION,
  pCO2 DOUBLE PRECISION,
  BUN DOUBLE PRECISION,
  Glucose DOUBLE PRECISION,
  Bilirubin DOUBLE PRECISION,
  FiO2 DOUBLE PRECISION
) ;

--------------------------------------------------------
--  DDL for Table APACHEPATIENTRESULT
--------------------------------------------------------
CREATE TABLE ApachePatientResult
(
  ApachePatientResultsID INT PRIMARY KEY,
  PatientUnitStayID INT NOT NULL,
  PhysicianSpeciality VARCHAR(50),
  PhysicianInterventionCategory VARCHAR(50),
  AcutePhysiologyScore INT,
  ApacheScore INT,
  ApacheVersion VARCHAR(5) NOT NULL,
  PredictedICUMortality VARCHAR(50),
  ActualICUMortality VARCHAR(50),
  PredictedICULOS DOUBLE PRECISION,
  ActualICULOS DOUBLE PRECISION,
  PredictedHospitalMortality VARCHAR(50),
  ActualHospitalMortality VARCHAR(50),
  PredictedHospitalLOS DOUBLE PRECISION,
  ActualHospitalLOS DOUBLE PRECISION,
  PreopMI INT,
  PreopCardiacCath INT,
  PTCAwithin24h INT,
  UnabridgedUnitLOS DOUBLE PRECISION,
  UnabridgedHospLOS DOUBLE PRECISION,
  ActualVentDays DOUBLE PRECISION,
  PredVentDays DOUBLE PRECISION,
  UnabridgedActualVentDays DOUBLE PRECISION
) ;

--------------------------------------------------------
--  DDL for Table APACHEPREDVAR
--------------------------------------------------------
CREATE TABLE ApachePredVar
(
  ApachePredVarID INT PRIMARY KEY,
  PatientUnitStayID INT,
  SicuDay SMALLINT,
  Saps3Day1 SMALLINT,
  Saps3Today SMALLINT,
  Saps3Yesterday SMALLINT,
  Gender SMALLINT,
  TeachType SMALLINT,
  Region SMALLINT,
  BedCount SMALLINT,
  AdmitSource SMALLINT,
  GraftCount SMALLINT,
  Meds SMALLINT,
  Verbal SMALLINT,
  Motor SMALLINT,
  Eyes SMALLINT,
  Age SMALLINT,
  AdmitDiagnosis VARCHAR(11),
  Thrombolytics SMALLINT,
  DiedInHospital SMALLINT,
  Aids SMALLINT,
  HepaticFailure SMALLINT,
  Lymphoma SMALLINT,
  MetastaticCancer SMALLINT,
  Leukemia SMALLINT,
  Immunosuppression SMALLINT,
  Cirrhosis SMALLINT,
  ElectiveSurgery SMALLINT,
  ActiveTx SMALLINT,
  Readmit SMALLINT,
  Ima SMALLINT,
  MIDur SMALLINT,
  VentDay1 SMALLINT,
  oOBVentDay1 SMALLINT,
  oOBIntubDay1 SMALLINT,
  Diabetes SMALLINT,
  ManagementSystem SMALLINT,
  var03HspXlos DOUBLE PRECISION,
  paO2 DOUBLE PRECISION,
  fiO2 DOUBLE PRECISION,
  EjectFx DOUBLE PRECISION,
  Creatinine DOUBLE PRECISION,
  DischargeLocation SMALLINT,
  VisitNumber SMALLINT,
  AMILocation SMALLINT,
  Day1Meds SMALLINT,
  Day1Verbal SMALLINT,
  Day1Motor SMALLINT,
  Day1Eyes SMALLINT,
  Day1paO2 DOUBLE PRECISION,
  Day1fiO2 DOUBLE PRECISION
) ;

--------------------------------------------------------
--  DDL for Table CAREPLANCAREPROVIDER
--------------------------------------------------------
CREATE TABLE CarePlanCareProvider
(
  CPlCareProviderID INT PRIMARY KEY,
  PatientUnitStayID INT NOT NULL,
  CareProviderSaveOffset INT NOT NULL,
  ProviderType VARCHAR(255),
  Specialty VARCHAR(255),
  InterventionCategory VARCHAR(255),
  ManagingPhysician VARCHAR(50),
  ActiveUponDischarge VARCHAR(10) NOT NULL
) ;

--------------------------------------------------------
--  DDL for Table CAREPLANEOL
--------------------------------------------------------
CREATE TABLE CarePlanEoL
(
  CPlEoLID INT PRIMARY KEY,
  PatientUnitStayID INT NOT NULL,
  CPlEoLSaveOffset INT NOT NULL,
  CPlEoLDiscussionOffset INT,
  ActiveUponDischarge VARCHAR(10)
) ;

--------------------------------------------------------
--  DDL for Table CAREPLANGENERAL
--------------------------------------------------------
CREATE TABLE CarePlanGeneral
(
  CPlGeneralID INT PRIMARY KEY,
  PatientUnitStayID INT NOT NULL,
  ActiveUponDischarge VARCHAR(10) NOT NULL,
  CPlItemOffset INT NOT NULL,
  CPlGroup VARCHAR(255) NOT NULL,
  CPlItemValue VARCHAR(1024)
) ;

--------------------------------------------------------
--  DDL for Table CAREPLANGOAL
--------------------------------------------------------
CREATE TABLE CarePlanGoal
(
  CPlGoalID INT PRIMARY KEY,
  PatientUnitStayID INT NOT NULL,
  CPlGoalOffset INT NOT NULL,
  CPlGoalCategory VARCHAR(255),
  CPlGoalValue VARCHAR(1000),
  CPlGoalStatus VARCHAR(255),
  ActiveUponDischarge VARCHAR(10) NOT NULL
) ;

--------------------------------------------------------
--  DDL for Table CAREPLANINFECTIOUSDISEASE
--------------------------------------------------------
CREATE TABLE CarePlanInfectiousDisease
(
  CPlInfectID INT PRIMARY KEY,
  PatientUnitStayID INT NOT NULL,
  ActiveUponDischarge VARCHAR(10) NOT NULL,
  CPlInfectDiseaseOffset INT NOT NULL,
  InfectDiseaseSite VARCHAR(64),
  InfectDiseaseAssessment VARCHAR(64),
  ResponseToTherapy VARCHAR(32),
  Treatment VARCHAR(32)
) ;

--------------------------------------------------------
--  DDL for Table CUSTOMLAB
--------------------------------------------------------
CREATE TABLE CustomLab
(
  CustomLabID INT PRIMARY KEY,
  PatientUnitStayId INT NOT NULL,
  LabotherOffset INT NOT NULL,
  LabotherTypeID INT NOT NULL,
  LabotherName VARCHAR(64),
  LabotherResult VARCHAR(64),
  LabotherValueText VARCHAR(128)
) ;

--------------------------------------------------------
--  DDL for Table DIAGNOSIS
--------------------------------------------------------
CREATE TABLE Diagnosis
(
  DiagnosisID INT PRIMARY KEY,
  PatientUnitStayID INT NOT NULL,
  ActiveUponDischarge VARCHAR(64),
  DiagnosisOffset INT NOT NULL,
  DiagnosisString VARCHAR(200) NOT NULL,
  ICD9Code VARCHAR(100),
  DiagnosisPriority VARCHAR(10) NOT NULL
) ;

--------------------------------------------------------
--  DDL for Table HOSPITAL
--------------------------------------------------------
CREATE TABLE Hospital
(
  HospitalID INT PRIMARY KEY,
  NumBedsCategory VARCHAR(32),
  TeachingStatus VARCHAR(5),
  Region VARCHAR(64)
) ;

--------------------------------------------------------
--  DDL for Table INFUSIONDRUG
--------------------------------------------------------
CREATE TABLE InfusionDrug
(
  InfusionDrugID INT PRIMARY KEY,
  PatientUnitStayID INT NOT NULL,
  InfusionOffset INT NOT NULL,
  DrugName VARCHAR(255),
  DrugRate VARCHAR(255),
  InfusionRate VARCHAR(255),
  DrugAmount VARCHAR(255),
  VolumeOfFluid VARCHAR(255),
  PatientWeight VARCHAR(255)
) ;

--------------------------------------------------------
--  DDL for Table INTAKEOUTPUT
--------------------------------------------------------
CREATE TABLE IntakeOutput
(
  IntakeOutputID INT PRIMARY KEY,
  PatientUnitStayID INT NOT NULL,
  IntakeOutputOffset INT NOT NULL,
  IntakeTotal NUMERIC(12,4),
  OutputTotal NUMERIC(12,4),
  DialysisTotal NUMERIC(12,4),
  NetTotal NUMERIC(12,4),
  IntakeOutputEntryOffset INT NOT NULL,
  CellPath VARCHAR(500),
  CellLabel VARCHAR(255),
  CellValueNumeric NUMERIC(12,4) NOT NULL,
  CellValueText VARCHAR(255) NOT NULL
) ;

--------------------------------------------------------
--  DDL for Table LAB
--------------------------------------------------------
CREATE TABLE Lab
(
  LabID INT PRIMARY KEY,
  PatientUnitStayID INT NOT NULL,
  LabResultOffset INT NOT NULL,
  LabTypeID NUMERIC(3,0) NOT NULL,
  LabName VARCHAR(256),
  LabResult NUMERIC(11,4),
  LabResultText VARCHAR(255),
  LabMeasureNameSystem VARCHAR(255),
  LabMeasureNameInterface VARCHAR(255),
  LabResultRevisedOffset INT
) ;

--------------------------------------------------------
--  DDL for Table MEDICATION
--------------------------------------------------------
CREATE TABLE Medication
(
  MedicationID INT PRIMARY KEY,
  PatientUnitStayID INT NOT NULL,
  DrugOrderOffset INT NOT NULL,
  DrugStartOffset INT NOT NULL,
  DrugIVAdmixture VARCHAR(6) NOT NULL,
  DrugOrderCancelled VARCHAR(6) NOT NULL,
  DrugName VARCHAR(220),
  DrugHiclSeqno INT,
  Dosage VARCHAR(60),
  RouteAdmin VARCHAR(120),
  Frequency VARCHAR(255),
  LoadingDose VARCHAR(120),
  PRN VARCHAR(6),
  DrugStopOffset INT NOT NULL,
  GTC INT NOT NULL
) ;

--------------------------------------------------------
--  DDL for Table MICROLAB
--------------------------------------------------------
CREATE TABLE MicroLab
(
  MicroLabID INT PRIMARY KEY,
  PatientUnitStayID INT NOT NULL,
  CultureTakenOffset INT NOT NULL,
  CultureSite VARCHAR(255) NOT NULL,
  Organism VARCHAR(255) NOT NULL,
  Antibiotic VARCHAR(255),
  SensitivityLevel VARCHAR(255)
) ;

--------------------------------------------------------
--  DDL for Table NOTE
--------------------------------------------------------
CREATE TABLE Note
(
  NoteID INT PRIMARY KEY,
  PatientUnitStayID INT NOT NULL,
  NoteOffset INT NOT NULL,
  NoteEnteredOffset INT NOT NULL,
  NoteType VARCHAR(50) NOT NULL,
  NotePath VARCHAR(255) NOT NULL,
  NoteValue VARCHAR(150),
  NoteText VARCHAR(500)
) ;

--------------------------------------------------------
--  DDL for Table NURSEASSESSMENT
--------------------------------------------------------
CREATE TABLE NurseAssessment
(
  NurseAssessID INT PRIMARY KEY,
  PatientUnitStayID INT NOT NULL,
  NurseAssessOffset INT NOT NULL,
  NurseAssessEntryOffset INT NOT NULL,
  CellAttributePath VARCHAR(255) NOT NULL,
  CellLabel VARCHAR(255) NOT NULL,
  CellAttribute VARCHAR(255) NOT NULL,
  CellAttributeValue VARCHAR(4000)
) ;

--------------------------------------------------------
--  DDL for Table NURSECARE
--------------------------------------------------------
CREATE TABLE NurseCare
(
  NurseCareID INT PRIMARY KEY,
  PatientUnitStayID INT NOT NULL,
  CellLabel VARCHAR(255) NOT NULL,
  NurseCareOffset INT NOT NULL,
  NurseCareEntryOffset INT NOT NULL,
  CellAttributePath VARCHAR(255) NOT NULL,
  CellAttribute VARCHAR(255) NOT NULL,
  CellAttributeValue VARCHAR(4000)
) ;

--------------------------------------------------------
--  DDL for Table NURSECHARTING
--------------------------------------------------------
CREATE TABLE NurseCharting
(
  NursingChartID BIGINT PRIMARY KEY,
  PatientUnitStayID INT NOT NULL,
  NursingChartOffset INT NOT NULL,
  NursingChartEntryOffset INT NOT NULL,
  NursingChartCellTypeCat VARCHAR(255) NOT NULL,
  NursingChartCellTypeValLabel VARCHAR(255),
  NursingChartCellTypeValName VARCHAR(255),
  NursingChartValue VARCHAR(255)
) ;

--------------------------------------------------------
--  DDL for Table PASTHISTORY
--------------------------------------------------------
CREATE TABLE PastHistory
(
  PastHistoryID INT PRIMARY KEY,
  PatientUnitStayID INT NOT NULL,
  PastHistoryOffset INT NOT NULL,
  PastHistoryEnteredOffset INT NOT NULL,
  PastHistoryNoteType VARCHAR(40),
  PastHistoryPath VARCHAR(255) NOT NULL,
  PastHistoryValue VARCHAR(100),
  PastHistoryValueText VARCHAR(255)
) ;

--------------------------------------------------------
--  DDL for Table PATIENT
--------------------------------------------------------
CREATE TABLE Patient
(
  PatientUnitStayID INT PRIMARY KEY,
  PatientHealthSystemStayID INT,
  Gender VARCHAR(25),
  Age VARCHAR(10),
  Ethnicity VARCHAR(50),
  HospitalID INT,
  WardID INT,
  ApacheAdmissionDx VARCHAR(1000),
  AdmissionHeight NUMERIC(10,2),
  HospitalAdmitTime24 VARCHAR(8),
  HospitalAdmitOffset INT,
  HospitalAdmitSource VARCHAR(30),
  HospitalDischargeYear SMALLINT,
  HospitalDischargeTime24 VARCHAR(8),
  HospitalDischargeOffset INT,
  HospitalDischargeLocation VARCHAR(100),
  HospitalDischargeStatus VARCHAR(10),
  UnitType VARCHAR(50),
  UnitAdmitTime24 VARCHAR(8),
  UnitAdmitSource VARCHAR(100),
  UnitVisitNumber INT,
  UnitStayType VARCHAR(15),
  AdmissionWeight NUMERIC(10,2),
  DischargeWeight NUMERIC(10,2),
  UnitDischargeTime24 VARCHAR(8),
  UnitDischargeOffset INT,
  UnitDischargeLocation VARCHAR(100),
  UnitDischargeStatus VARCHAR(10),
  UniquePID VARCHAR(10)
) ;

--------------------------------------------------------
--  DDL for Table PHYSICALEXAM
--------------------------------------------------------
CREATE TABLE PhysicalExam
(
  PhysicalExamID INT PRIMARY KEY,
  PatientUnitStayID INT NOT NULL,
  PhysicalExamOffset INT NOT NULL,
  PhysicalExamPath VARCHAR(255) NOT NULL,
  PhysicalExamValue VARCHAR(100),
  PhysicalExamText VARCHAR(500)
) ;

--------------------------------------------------------
--  DDL for Table RESPIRATORYCARE
--------------------------------------------------------
CREATE TABLE RespiratoryCare
(
  RespCareID INT PRIMARY KEY,
  PatientUnitStayID INT,
  RespCareStatusOffset INT,
  CurrentHistorySeqNum INT,
  AirwayType VARCHAR(30),
  AirwaySize VARCHAR(10),
  AirwayPosition VARCHAR(32),
  CuffPressure NUMERIC(5,1),
  VentStartOffset INT,
  VentEndOffset INT,
  PriorVentStartOffset INT,
  PriorVentEndOffset INT,
  ApneaParams VARCHAR(80),
  LowExhMVLimit NUMERIC(11,4),
  HiExhMVLimit NUMERIC(11,4),
  LowExhTVLimit NUMERIC(11,4),
  HiPeakPresLimit NUMERIC(11,4),
  LowPeakPresLimit NUMERIC(11,4),
  HiRespRateLimit NUMERIC(11,4),
  LowRespRateLimit NUMERIC(11,4),
  SighPresLimit NUMERIC(11,4),
  LowIronOxLimit NUMERIC(11,4),
  HighIronOxLimit NUMERIC(11,4),
  MeanAirwayPresLimit NUMERIC(11,4),
  PEEPLimit NUMERIC(11,4),
  CPAPLimit NUMERIC(11,4),
  SetApneaInterval VARCHAR(80),
  SetApneaTV VARCHAR(80),
  SetApneaIPPEEPHigh VARCHAR(80),
  SetApneaRR VARCHAR(80),
  SetApneaPeakFlow VARCHAR(80),
  SetApneaInspTime VARCHAR(80),
  SetApneaIE VARCHAR(80),
  SetApenaFIO2 VARCHAR(80)
) ;

--------------------------------------------------------
--  DDL for Table RESPIRATORYCHARTING
--------------------------------------------------------
CREATE TABLE RespiratoryCharting
(
  RespChartID INT PRIMARY KEY,
  PatientUnitStayID INT,
  RespChartOffset INT,
  RespChartEntryOffset INT,
  RespChartTypeCat VARCHAR(255),
  RespChartValueLabel VARCHAR(255),
  RespChartValue VARCHAR(1000)
) ;

--------------------------------------------------------
--  DDL for Table TREATMENT
--------------------------------------------------------
CREATE TABLE Treatment
(
  TreatmentID INT PRIMARY KEY,
  PatientUnitStayID INT,
  TreatmentOffset INT,
  TreatmentString VARCHAR(200),
  ActiveUponDischarge VARCHAR(10)
) ;

--------------------------------------------------------
--  DDL for Table VITALAPERIODIC
--------------------------------------------------------
CREATE TABLE VitalAperiodic
(
  VitalAperiodicID INT PRIMARY KEY,
  PatientUnitStayID INT NOT NULL,
  ObservationOffset INT NOT NULL,
  NonInvasiveSystolic DOUBLE PRECISION,
  NonInvasiveDiastolic DOUBLE PRECISION,
  NonInvasiveMean DOUBLE PRECISION,
  PAOP DOUBLE PRECISION,
  CardiacOutput DOUBLE PRECISION,
  CardiacInput DOUBLE PRECISION,
  SVR DOUBLE PRECISION,
  SVRI DOUBLE PRECISION,
  PVR DOUBLE PRECISION,
  PVRI DOUBLE PRECISION
) ;

--------------------------------------------------------
--  DDL for Table VITALPERIODIC
--------------------------------------------------------
CREATE TABLE VitalPeriodic
(
  VitalPeriodicID BIGINT PRIMARY KEY,
  PatientUnitStayID INT,
  ObservationOffset INT,
  Temperature NUMERIC(11,4),
  saO2 INT,
  HeartRate INT,
  Respiration INT,
  CVP INT,
  ETCo2 INT,
  SystemicSystolic INT,
  SystemicDiastolic INT,
  SystemicMean INT,
  paSystolic INT,
  paDiastolic INT,
  paMean INT,
  st1 DOUBLE PRECISION,
  st2 DOUBLE PRECISION,
  st3 DOUBLE PRECISION,
  ICP INT
) ;