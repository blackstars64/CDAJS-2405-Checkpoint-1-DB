-- SQLite
CREATE TABLE IF NOT EXISTS `recruiter` (
	`id` INTEGER PRIMARY KEY NOT NULL UNIQUE ,
	`username` TEXT NOT NULL UNIQUE,
	`password` TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS `candidate` (
	`id` INTEGER PRIMARY KEY NOT NULL UNIQUE,
	`username` TEXT NOT NULL UNIQUE,
	`password` TEXT NOT NULL,
	`firstname` TEXT NOT NULL UNIQUE,
	`lastname` TEXT NOT NULL UNIQUE,
	`email` TEXT NOT NULL UNIQUE,
	`phone` INTEGER UNIQUE,
	`description` TEXT
);

CREATE TABLE IF NOT EXISTS `city` (
    id INTEGER PRIMARY KEY NOT NULL UNIQUE,
    name TEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS `company` (
	`id` INTEGER PRIMARY KEY NOT NULL UNIQUE,
	`name` TEXT NOT NULL,
	`description` TEXT NOT NULL,
	`recruiter_id` INTEGER NOT NULL,
	FOREIGN KEY(`recruiter_id`) REFERENCES `recruiter`(`id`)
);

CREATE TABLE IF NOT EXISTS `job` (
    id INTEGER PRIMARY KEY NOT NULL UNIQUE,
    title TEXT NOT NULL,
    description TEXT NOT NULL,
    city_id INTEGER NOT NULL,
    company_id INTEGER,
    FOREIGN KEY(city_id) REFERENCES `city`(`id`),
    FOREIGN KEY(company_id) REFERENCES `company`(`id`)
);

CREATE TABLE IF NOT EXISTS `application` (
	`id` INTEGER PRIMARY KEY NOT NULL UNIQUE,
	`date` TEXT DEFAULT CURRENT_TIMESTAMP,
	`candidate_id` INTEGER,
	`job_id` INTEGER,
	FOREIGN KEY(`candidate_id`) REFERENCES `candidate`(`id`),
	FOREIGN KEY(`job_id`) REFERENCES `job`(`id`)
);

-- SQLite
-- Data insertion

-- recruiter
INSERT INTO recruiter (username, password) VALUES 
('vbickerdicke0', '$2a$04$BpVJtEzRwyjSucvAuAp9ZOMpVjimJ7/cwQ62t9Qm1uW/.h2.fp3Y6'),
('sgolborne1', '$2a$04$EI/B8cPstlCb4x8vgVg5vOZb3hwbtDJQq/877xiA5gTYmgGQhAJWq'),
('shulkes2', '$2a$04$4tL0ab7Yy68cUZHur.U9R.VhtWXB1apkdeHVUdhTvDYfk8tk/3CnO'),
('imccraine3', '$2a$04$flW1OSGtQNMgGN0qrp3XvOG5i.VSYKn9V0djFlc6Mo8K8yUaGbdcy'),
('swyche4', '$2a$04$n5s5mtYhfQPwZbCK9fjsfemSuW.zJ3Zj7R1VzkJ9GU8RxmCkodw5q'),
('hhaborn5', '$2a$04$1djsM/WybZ.DUz3r4Yiv3uZRL7mw6M9a4c4AP.5gUmokpqsOhCPmC'),
('dcallaghan6', '$2a$04$9KsGM.UnSWIDLCV15i3LH..3ubgiT/LuFsP2u9uIvR2aHZCAQvzOK'),
('djerman7', '$2a$04$M44GtM8Ksaqg3Q4RXgX7h.9npzHT5z5dEJv8BoeOGQZ6G.aEOvQJW'),
('onewband8', '$2a$04$wXkcP8phbtiaVEh9PNGRtu/goI9ws01xeXJaYa4zeZ/hIXL4DDnpi'),
('pbellee9', '$2a$04$K.T2nNQevI9i7/YISmeJEOhmsU8qpJOIqi.PucoXI1N0dEMM5.k2e');

-- Candidats
INSERT INTO candidate (username, password, firstname, lastname, email, phone, description) VALUES 
('omussalli0', '$2a$04$m8M87SH9PeR8APCawFUts.kOXtABdN/hvTcFublOJZviWZpENqdPq', 'Owen', 'Mussalli', 'omussalli0@hud.gov', '8528377020', 'harness sexy solutions'),
('rgittoes1', '$2a$04$nXVOcGIspjTYaK2oK9xHFeakqDV74EBkmQRqZD5P.Nel879QdAWMS', 'Raynard', 'Gittoes', 'rgittoes1@soundcloud.com', '8261509121', 'reinvent granular platforms'),
('strowsdale2', '$2a$04$YsPwGW7JDNUeT32v.mJqfuk5uIUCtTGo6Q4TJavIcS8qqjMXhniK6', 'Shirley', 'Trowsdale', 'strowsdale2@berkeley.edu', '9419357045', 'empower granular convergence'),
('sbowmer3', '$2a$04$Inmdj3YDNMDaDPBjk5pwKew2Qx5nPJ5doVk/bNQ6P4s5NzTgOQ/jy', 'Salome', 'Bowmer', 'sbowmer3@issuu.com', '2977000981', 'enable best-of-breed web services'),
('bhansford4', '$2a$04$tGtRQd1HYFn3g726RHjnaeiwzl0FrQQ0cLfnCTSsLqd79It9XZIxG', 'Bobbye', 'Hansford', 'bhansford4@discovery.com', '1811072236', 'productize strategic web-readiness'),
('rfrake5', '$2a$04$TA4mCJXy4lZ0cuAeWDtUMu/zwx4ENSurY4JFFxlZLTHLOxGEviaBG', 'Roderigo', 'Frake', 'rfrake5@furl.net', '2531913954', 'innovate dynamic vortals'),
('cearley6', '$2a$04$QusjuX5z6R6sEfyy.xgceeQv0PkU9U775d7Su55RVG0p/yFBK5KDS', 'Ceciley', 'Earley', 'cearley6@canalblog.com', '1197683732', 'seize value-added action-items'),
('ikarpov7', '$2a$04$I4OEmO3qI9PVOrvEKHlYP.FN115BrE8Wc78C8guikTM.Tbl1yJe.a', 'Isabelle', 'Karpov', 'ikarpov7@homestead.com', '9833727420', 'synergize leading-edge technologies'),
('cdimelow8', '$2a$04$2K3u2jClJvwEokrmhK9nTuslR86P.cE6eJjoNt1B8qlLyaFHeqswm', 'Correy', 'Dimelow', 'cdimelow8@illinois.edu', '8449750051', 'target dynamic methodologies'),
('cshelvey9', '$2a$04$ujEVnOJCU/hilVzTNtUX1.Gh2EHypc2CP/Y46g.ySaQqP7VzKlVx2', 'Ciro', 'Shelvey', 'cshelvey9@google.com', '3908150872', 'orchestrate value-added eyeballs');

-- Villes
INSERT INTO city (name) VALUES
('New York'),
('San Francisco'),
('Chicago'),
('Los Angeles'),
('Miami'),
('Austin'),
('Seattle'),
('Boston'),
('Paris'),
('Dallas'),
('Atlanta');

-- Entreprises
INSERT INTO company (name, description, recruiter_id) VALUES 
('Voomm', 'AMERICAN SALES COMPANY', 1),
('Yamia', 'Physicians Total Care, Inc.', 2),
('Devcast', 'NCS HealthCare of KY, Inc dba Vangard Labs', 3),
('Zoomlounge', 'TRUE Cosmetics LLC', 4),
('Zoomlounge', 'Wal-Mart Stores Inc', 5),
('Photobug', 'LAURA GELLER MAKE UP INC.', 6),
('Twimbo', 'ELEMIS LIMITED', 7),
('Photobug', 'Baxter Healthcare Corporation', 8),
('Skalith', 'Acella Pharmaceuticals, LLC', 9),
('Rhynyx', 'Meijer Distribution Inc', 10);

-- Emplois
INSERT INTO job (title, description, city_id, company_id) VALUES 
('Software Engineer', 'Develop and maintain software applications.', 1, 1),
('Data Analyst', 'Analyze large data sets to provide insights.', 2, 2),
('Project Manager', 'Lead cross-functional teams for project delivery.', 3, 3),
('Graphic Designer', 'Create visual concepts and designs.', 4, 4),
('Marketing Specialist', 'Develop and execute marketing campaigns.', 5, 5),
('Web Developer', 'Design and maintain websites.', 6, 6),
('Content Writer', 'Write and edit articles and copy.', 7, 7),
('Product Manager', 'Define product vision and strategy.', 8, 8),
('HR Coordinator', 'Manage recruitment and employee relations.', 9, 9),
('Sales Associate', 'Sell products and services to customers.', 10, 10);

-- Candidatures
INSERT INTO application (candidate_id, job_id) VALUES 
(5, 1),
(7, 1),
(10, 1),
(1, 1),
(2, 2),
(2, 5),
(2, 6),
(2, 7),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(7, 2),
(5, 2),
(9, 9),
(10, 10);