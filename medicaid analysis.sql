select * from clinical_data;
select * from eligibility_transactions;
select * from geo_health_access;
select * from members;
select * from outreach_campaign;
select * from sdoh_data;

-- Eligibility Pipeline Performance --
SELECT 
    m.county,
    COUNT(e.member_id) AS total_applications,
    ROUND(AVG(e.processing_time_hours),2) AS avg_processing_time,
    SUM(CASE WHEN e.eligibility_result = 'Approved' THEN 1 ELSE 0 END) AS approved_count,
    ROUND(
        SUM(CASE WHEN e.eligibility_result = 'Approved' THEN 1 ELSE 0 END) * 100.0 
        / COUNT(*), 2
    ) AS approval_rate
FROM eligibility_transactions e
JOIN members m ON e.member_id = m.member_id
GROUP BY m.county
ORDER BY avg_processing_time DESC;

-- HEDIS Care Gap --
SELECT 
    m.race,
    m.language,
    COUNT(c.member_id) AS total_members,
    
    ROUND(SUM(CASE WHEN c.a1c_test_done = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) AS a1c_compliance,
    
    ROUND(SUM(CASE WHEN c.bmi_recorded = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) AS bmi_compliance,
    
    ROUND(SUM(CASE WHEN c.colorectal_screening = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) AS colorectal_compliance

FROM clinical_data c
JOIN members m ON c.member_id = m.member_id
GROUP BY m.race, m.language
ORDER BY a1c_compliance ASC;

-- Disenrollment Risk Indicators --
SELECT 
    s.income_level,
    s.housing_status,
    s.transportation_access,
    
    COUNT(o.member_id) AS total_members,
    
    SUM(CASE WHEN o.renewal_completed = 'No' THEN 1 ELSE 0 END) AS not_renewed,
    
    ROUND(
        SUM(CASE WHEN o.renewal_completed = 'No' THEN 1 ELSE 0 END) * 100.0 
        / COUNT(*), 2
    ) AS disenrollment_rate

FROM outreach_campaign o
JOIN sdoh_data s ON o.member_id = s.member_id
GROUP BY 
    s.income_level,
    s.housing_status,
    s.transportation_access
ORDER BY disenrollment_rate DESC;

-- Outreach Effectiveness --
SELECT 
    outreach_type,
    language,
    COUNT(*) AS total_sent,
    
    SUM(CASE WHEN response = 'Yes' THEN 1 ELSE 0 END) AS responses,
    
    ROUND(
        SUM(CASE WHEN response = 'Yes' THEN 1 ELSE 0 END) * 100.0 
        / COUNT(*), 2
    ) AS response_rate

FROM outreach_campaign
GROUP BY outreach_type, language
ORDER BY response_rate DESC;

-- Healthcare Desert Detection --
SELECT 
    county,
    zip_code,
    population,
    number_of_clinics,
    avg_distance_to_clinic_km,
    healthcare_desert_flag
FROM geo_health_access
WHERE healthcare_desert_flag = 'Yes'
ORDER BY avg_distance_to_clinic_km DESC;




