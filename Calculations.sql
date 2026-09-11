SELECT   ps.hospital,
         ps.ward,
         Count(*) AS NumberOfPatients,
         SUM(ps.Tariff) AS TotalTariff
FROM     PatientStay AS ps
GROUP BY ps.hospital, ps.ward;