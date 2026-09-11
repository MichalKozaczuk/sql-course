/*
Example lesson stub
*/
SELECT   ps.PatientId,
         ps.Hospital,
         ps.Ward,
         ps.AdmittedDate,
         ps.DischargeDate,
         DATEADD(MONTH, 3, ps.DischargeDate) AS AppointmentDate,
         DATEADD(WEEK, -2, ps.AdmittedDate) AS ReminderDate,
         ps.Ethnicity
FROM     PatientStay AS ps
WHERE    ps.Hospital IN ('Kingston', 'PRUH') -- when using IN () this creates list related to that selection code
         AND (ps.Ward LIKE '%Surgery'
              OR ps.Ward LIKE '%o%')
         AND --AND ps.Ethnicity IS NULL
         ps.AdmittedDate <= '2024-02-28'
ORDER BY ps.Ward, ps.Hospital, ps.AdmittedDate;