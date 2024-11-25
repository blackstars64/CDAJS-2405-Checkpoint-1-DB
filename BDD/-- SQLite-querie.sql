-- Toutes les offres d'emploi
SELECT 
    job.id AS job_id,
    job.title,
    job.description AS job_description,
    city.name AS city_name,
    company.name AS company_name,
    company.description AS company_description
FROM job
JOIN city ON job.city_id = city.id
JOIN company ON job.company_id = company.id;

-- Toutes les offres d'emploi d'une ville (Paris)
SELECT 
    job.id AS job_id,
    job.title,
    job.description AS job_description,
    company.name AS company_name,
    company.description AS company_description
FROM job
JOIN city ON job.city_id = city.id
JOIN company ON job.company_id = company.id
WHERE city.name = 'Paris';

-- Les informations de tous candidats qui ont postulé à une offre précise
SELECT 
    candidate.id AS candidate_id,
    candidate.username,
    candidate.firstname,
    candidate.lastname,
    candidate.email,
    candidate.phone,
    candidate.description AS candidate_description
FROM candidate
JOIN application ON candidate.id = application.candidate_id
WHERE application.job_id = 2;

-- Les informations de tous les candidats qui ont postulé aux offres d'une entreprise
SELECT 
    candidate.id AS candidate_id,
    candidate.username,
    candidate.firstname,
    candidate.lastname,
    candidate.email,
    candidate.phone,
    candidate.description AS candidate_description
FROM candidate
JOIN application ON candidate.id = application.candidate_id
JOIN job ON application.job_id = job.id
WHERE job.company_id = 1;