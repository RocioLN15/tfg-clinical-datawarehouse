## Diseño relacional

El modelo relacional parte del conceptual y define, para cada tabla, las claves primarias y foráneas, el tipo de cada atributo (INTEGER, VARCHAR, etc.) y si admite nulos.

![Modelo relacional](docs/relational-model.svg)

**Notación del diagrama:** `P*` clave primaria, `F*` clave foránea, `PF*` clave que es primaria y foránea a la vez.

**Dónde va cada clave foránea:**
- **1:n:** en la tabla del lado "muchos". Por ejemplo, `AdmittedToICU` guarda `Unit_UnitID`, porque una unidad puede aparecer en muchos ingresos.
- **m:n:** en una tabla intermedia cuya clave primaria es la combinación de las dos claves foráneas. Por ejemplo, `Allergy_AdmFact` (`Allergy_AllergyID` + `AdmittedToICU_AdmICUID`), que relaciona alergias con ingresos.

El script de creación de tablas (DDL) se ha generado con Oracle SQL Developer Data Modeler y se ha adaptado para Microsoft SQL Server. El script está en [`database/`](database/create-DW.sql).