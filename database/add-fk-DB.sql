--------------------------------------------------------
--  DDL for Table ADMISSIONDX
--------------------------------------------------------

ALTER TABLE AdmissionDx DROP CONSTRAINT IF EXISTS AdmissionDx_fk_ptunit_id;
ALTER TABLE AdmissionDx
ADD CONSTRAINT AdmissionDx_fk_ptunit_id
  FOREIGN KEY (PatientUnitStayID)
  REFERENCES Patient(PatientUnitStayID);

--------------------------------------------------------
--  DDL for Table ADMISSIONDRUG
--------------------------------------------------------

ALTER TABLE AdmissionDrug DROP CONSTRAINT IF EXISTS AdmissionDrug_fk_ptunit_id;
ALTER TABLE AdmissionDrug
ADD CONSTRAINT AdmissionDrug_fk_ptunit_id
  FOREIGN KEY (PatientUnitStayID)
  REFERENCES Patient(PatientUnitStayID);

--------------------------------------------------------
--  DDL for Table ALLERGY
--------------------------------------------------------

ALTER TABLE Allergy DROP CONSTRAINT IF EXISTS Allergy_fk_ptunit_id;
ALTER TABLE Allergy
ADD CONSTRAINT Allergy_fk_ptunit_id
  FOREIGN KEY (PatientUnitStayID)
  REFERENCES Patient(PatientUnitStayID);

--------------------------------------------------------
--  DDL for Table APACHEAPSVAR
--------------------------------------------------------

ALTER TABLE ApacheApsVar DROP CONSTRAINT IF EXISTS ApacheApsVar_fk_ptunit_id;
ALTER TABLE ApacheApsVar
ADD CONSTRAINT ApacheApsVar_fk_ptunit_id
  FOREIGN KEY (PatientUnitStayID)
  REFERENCES Patient(PatientUnitStayID);

--------------------------------------------------------
--  DDL for Table APACHEPATIENTRESULTS
--------------------------------------------------------

ALTER TABLE ApachePatientResult DROP CONSTRAINT IF EXISTS ApachePatientResult_fk_ptunit_id;
ALTER TABLE ApachePatientResult
ADD CONSTRAINT ApachePatientResult_fk_ptunit_id
  FOREIGN KEY (PatientUnitStayID)
  REFERENCES Patient(PatientUnitStayID);

--------------------------------------------------------
--  DDL for Table APACHEPREDVAR
--------------------------------------------------------

ALTER TABLE ApachePredVar DROP CONSTRAINT IF EXISTS ApachePredVar_fk_ptunit_id;
ALTER TABLE ApachePredVar
ADD CONSTRAINT ApachePredVar_fk_ptunit_id
  FOREIGN KEY (PatientUnitStayID)
  REFERENCES Patient(PatientUnitStayID);

--------------------------------------------------------
--  DDL for Table CAREPLANCAREPROVIDER
--------------------------------------------------------

ALTER TABLE CarePlanCareProvider DROP CONSTRAINT IF EXISTS CarePlanCareProvider_fk_ptunit_id;
ALTER TABLE CarePlanCareProvider
ADD CONSTRAINT CarePlanCareProvider_fk_ptunit_id
  FOREIGN KEY (PatientUnitStayID)
  REFERENCES Patient(PatientUnitStayID);

--------------------------------------------------------
--  DDL for Table CAREPLANEOL
--------------------------------------------------------

ALTER TABLE CarePlanEoL DROP CONSTRAINT IF EXISTS CarePlanEoL_fk_ptunit_id;
ALTER TABLE CarePlanEoL
ADD CONSTRAINT CarePlanEoL_fk_ptunit_id
  FOREIGN KEY (PatientUnitStayID)
  REFERENCES Patient(PatientUnitStayID);

--------------------------------------------------------
--  DDL for Table CAREPLANGENERAL
--------------------------------------------------------

ALTER TABLE CarePlanGeneral DROP CONSTRAINT IF EXISTS CarePlanGeneral_fk_ptunit_id;
ALTER TABLE CarePlanGeneral
ADD CONSTRAINT CarePlanGeneral_fk_ptunit_id
  FOREIGN KEY (PatientUnitStayID)
  REFERENCES Patient(PatientUnitStayID);

--------------------------------------------------------
--  DDL for Table CAREPLANGOAL
--------------------------------------------------------

ALTER TABLE CarePlanGoal DROP CONSTRAINT IF EXISTS CarePlanGoal_fk_ptunit_id;
ALTER TABLE CarePlanGoal
ADD CONSTRAINT CarePlanGoal_fk_ptunit_id
  FOREIGN KEY (PatientUnitStayID)
  REFERENCES Patient(PatientUnitStayID);

--------------------------------------------------------
--  DDL for Table CAREPLANINFECTIOUSDISEASE
--------------------------------------------------------

ALTER TABLE CarePlanInfectiousDisease DROP CONSTRAINT IF EXISTS CarePlanInfectiousDisease_fk_ptunit_id;
ALTER TABLE CarePlanInfectiousDisease
ADD CONSTRAINT CarePlanInfectiousDisease_fk_ptunit_id
  FOREIGN KEY (PatientUnitStayID)
  REFERENCES Patient(PatientUnitStayID);

--------------------------------------------------------
--  DDL for Table CUSTOMLAB
--------------------------------------------------------

ALTER TABLE CustomLab DROP CONSTRAINT IF EXISTS CustomLab_fk_ptunit_id;
ALTER TABLE CustomLab
ADD CONSTRAINT CustomLab_fk_ptunit_id
  FOREIGN KEY (PatientUnitStayID)
  REFERENCES Patient(PatientUnitStayID);

--------------------------------------------------------
--  DDL for Table DIAGNOSIS
--------------------------------------------------------

ALTER TABLE Diagnosis DROP CONSTRAINT IF EXISTS Diagnosis_fk_ptunit_id;
ALTER TABLE Diagnosis
ADD CONSTRAINT Diagnosis_fk_ptunit_id
  FOREIGN KEY (PatientUnitStayID)
  REFERENCES Patient(PatientUnitStayID);

--------------------------------------------------------
--  DDL for Table HOSPITAL
--------------------------------------------------------

-- No foreign keys.

--------------------------------------------------------
--  DDL for Table INFUSIONDRUG
--------------------------------------------------------

ALTER TABLE InfusionDrug DROP CONSTRAINT IF EXISTS InfusionDrug_fk_ptunit_id;
ALTER TABLE InfusionDrug
ADD CONSTRAINT InfusionDrug_fk_ptunit_id
  FOREIGN KEY (PatientUnitStayID)
  REFERENCES Patient(PatientUnitStayID);

--------------------------------------------------------
--  DDL for Table INTAKEOUTPUT
--------------------------------------------------------

ALTER TABLE IntakeOutput DROP CONSTRAINT IF EXISTS IntakeOutput_fk_ptunit_id;
ALTER TABLE IntakeOutput
ADD CONSTRAINT IntakeOutput_fk_ptunit_id
  FOREIGN KEY (PatientUnitStayID)
  REFERENCES Patient(PatientUnitStayID);

--------------------------------------------------------
--  DDL for Table LAB
--------------------------------------------------------

ALTER TABLE Lab DROP CONSTRAINT IF EXISTS Lab_fk_ptunit_id;
ALTER TABLE Lab
ADD CONSTRAINT Lab_fk_ptunit_id
  FOREIGN KEY (PatientUnitStayID)
  REFERENCES Patient(PatientUnitStayID);

--------------------------------------------------------
--  DDL for Table MEDICATION
--------------------------------------------------------

ALTER TABLE Medication DROP CONSTRAINT IF EXISTS Medication_fk_ptunit_id;
ALTER TABLE Medication
ADD CONSTRAINT Medication_fk_ptunit_id
  FOREIGN KEY (PatientUnitStayID)
  REFERENCES Patient(PatientUnitStayID);

--------------------------------------------------------
--  DDL for Table MICROLAB
--------------------------------------------------------

ALTER TABLE MicroLab DROP CONSTRAINT IF EXISTS MicroLab_fk_ptunit_id;
ALTER TABLE MicroLab
ADD CONSTRAINT MicroLab_fk_ptunit_id
  FOREIGN KEY (PatientUnitStayID)
  REFERENCES Patient(PatientUnitStayID);

--------------------------------------------------------
--  DDL for Table NOTE
--------------------------------------------------------

ALTER TABLE Note DROP CONSTRAINT IF EXISTS Note_fk_ptunit_id;
ALTER TABLE Note
ADD CONSTRAINT Note_fk_ptunit_id
  FOREIGN KEY (PatientUnitStayID)
  REFERENCES Patient(PatientUnitStayID);

--------------------------------------------------------
--  DDL for Table NURSEASSESSMENT
--------------------------------------------------------

ALTER TABLE NurseAssessment DROP CONSTRAINT IF EXISTS NurseAssessment_fk_ptunit_id;
ALTER TABLE NurseAssessment
ADD CONSTRAINT NurseAssessment_fk_ptunit_id
  FOREIGN KEY (PatientUnitStayID)
  REFERENCES Patient(PatientUnitStayID);

--------------------------------------------------------
--  DDL for Table NURSECARE
--------------------------------------------------------

ALTER TABLE NurseCare DROP CONSTRAINT IF EXISTS NurseCare_fk_ptunit_id;
ALTER TABLE NurseCare
ADD CONSTRAINT NurseCare_fk_ptunit_id
  FOREIGN KEY (PatientUnitStayID)
  REFERENCES Patient(PatientUnitStayID);

--------------------------------------------------------
--  DDL for Table NURSECHARTING
--------------------------------------------------------

ALTER TABLE NurseCharting DROP CONSTRAINT IF EXISTS NurseCharting_fk_ptunit_id;
ALTER TABLE NurseCharting
ADD CONSTRAINT NurseCharting_fk_ptunit_id
  FOREIGN KEY (PatientUnitStayID)
  REFERENCES Patient(PatientUnitStayID);

--------------------------------------------------------
--  DDL for Table PASTHISTORY
--------------------------------------------------------

ALTER TABLE PastHistory DROP CONSTRAINT IF EXISTS PastHistory_fk_ptunit_id;
ALTER TABLE PastHistory
ADD CONSTRAINT PastHistory_fk_ptunit_id
  FOREIGN KEY (PatientUnitStayID)
  REFERENCES Patient(PatientUnitStayID);

--------------------------------------------------------
--  DDL for Table PATIENT
--------------------------------------------------------

ALTER TABLE Patient DROP CONSTRAINT IF EXISTS Patient_fk_hospital_id;
ALTER TABLE Patient
ADD CONSTRAINT Patient_fk_hospital_id
  FOREIGN KEY (HospitalID)
  REFERENCES Hospital(HospitalID);

--------------------------------------------------------
--  DDL for Table PHYSICALEXAM
--------------------------------------------------------

ALTER TABLE PhysicalExam DROP CONSTRAINT IF EXISTS PhysicalExam_fk_ptunit_id;
ALTER TABLE PhysicalExam
ADD CONSTRAINT PhysicalExam_fk_ptunit_id
  FOREIGN KEY (PatientUnitStayID)
  REFERENCES Patient(PatientUnitStayID);

--------------------------------------------------------
--  DDL for Table RESPIRATORYCARE
--------------------------------------------------------

ALTER TABLE RespiratoryCare DROP CONSTRAINT IF EXISTS RespiratoryCare_fk_ptunit_id;
ALTER TABLE RespiratoryCare
ADD CONSTRAINT RespiratoryCare_fk_ptunit_id
  FOREIGN KEY (PatientUnitStayID)
  REFERENCES Patient(PatientUnitStayID);

--------------------------------------------------------
--  DDL for Table RESPIRATORYCHARTING
--------------------------------------------------------

ALTER TABLE RespiratoryCharting DROP CONSTRAINT IF EXISTS RespiratoryCharting_fk_ptunit_id;
ALTER TABLE RespiratoryCharting
ADD CONSTRAINT RespiratoryCharting_fk_ptunit_id
  FOREIGN KEY (PatientUnitStayID)
  REFERENCES Patient(PatientUnitStayID);

--------------------------------------------------------
--  DDL for Table TREATMENT
--------------------------------------------------------

ALTER TABLE Treatment DROP CONSTRAINT IF EXISTS Treatment_fk_ptunit_id;
ALTER TABLE Treatment
ADD CONSTRAINT Treatment_fk_ptunit_id
  FOREIGN KEY (PatientUnitStayID)
  REFERENCES Patient(PatientUnitStayID);

--------------------------------------------------------
--  DDL for Table VITALAPERIODIC
--------------------------------------------------------

ALTER TABLE VitalAperiodic DROP CONSTRAINT IF EXISTS VitalAperiodic_fk_ptunit_id;
ALTER TABLE VitalAperiodic
ADD CONSTRAINT VitalAperiodic_fk_ptunit_id
  FOREIGN KEY (PatientUnitStayID)
  REFERENCES Patient(PatientUnitStayID);

--------------------------------------------------------
--  DDL for Table VITALPERIODIC
--------------------------------------------------------

ALTER TABLE VitalPeriodic DROP CONSTRAINT IF EXISTS VitalPeriodic_fk_ptunit_id;
ALTER TABLE VitalPeriodic
ADD CONSTRAINT VitalPeriodic_fk_ptunit_id
  FOREIGN KEY (PatientUnitStayID)
  REFERENCES Patient(PatientUnitStayID);