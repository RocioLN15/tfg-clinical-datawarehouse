CREATE TABLE dbo.usuario (
    id          INT PRIMARY KEY IDENTITY(1,1),
    firstname   VARCHAR(100) NOT NULL,
    lastname    VARCHAR(100) NOT NULL,
    [password]  VARCHAR(255) NOT NULL,
    [role]      VARCHAR(50)  NOT NULL,
    username    VARCHAR(100) NOT NULL UNIQUE
);
GO

IF NOT EXISTS (SELECT 1 FROM dbo.usuario WHERE username = 'administrador')
    INSERT INTO dbo.usuario (firstname, lastname, [password], [role], username)
    VALUES ('Admin', 'Demo',
            '$2a$10$jlLiVbUIev5TuaNbRZG5muLDuJ2ipMQBBtsoRXJ.gDVFsKJEhiQBq',
            'ADMIN', 'administrador');

IF NOT EXISTS (SELECT 1 FROM dbo.usuario WHERE username = 'gerente')
    INSERT INTO dbo.usuario (firstname, lastname, [password], [role], username)
    VALUES ('Gerente', 'Demo',
            '$2a$10$2NFic.4od3I81N/F8I/E0uq4UnLAmpia41wxQTdYjw6lg8vkqDArG',
            'GERENTE', 'gerente');

IF NOT EXISTS (SELECT 1 FROM dbo.usuario WHERE username = 'jefe')
    INSERT INTO dbo.usuario (firstname, lastname, [password], [role], username)
    VALUES ('Jefe', 'Cardiovascular',
            '$2a$10$aISzAQ/9ned4w1VD/ZNB2eYX79B79pCQ7EWKFX.RW0Q7o/1d8a5mK',
            'JEFE_CARDIOVASCULAR', 'jefe');
GO