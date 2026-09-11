/*
Example lesson stub
*/
SELECT ps.PatientId,
       ps.Hospital,
       ps.Ward,
       ps.AdmittedDate,
       ps.DischargeDate,
       ps.Ethnicity
FROM   PatientStay AS ps
WHERE  ps.Hospital IN ('Kingston', 'PRUH') -- when using IN () this creates list related to that selection code
       AND (ps.Ward LIKE '%Surgery'
            OR ps.Ward LIKE '%o%')
       AND ps.Ethnicity IS NULL