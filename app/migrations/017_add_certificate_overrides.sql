-- ============================================================
-- Migración 017: Overrides por certificado (horas y vigencia)
-- Columnas nullable en certificates; NULL = seguir certificate_types
-- ============================================================

BEGIN;

ALTER TABLE certificates ADD COLUMN IF NOT EXISTS hours INTEGER;
ALTER TABLE certificates ADD COLUMN IF NOT EXISTS validity_years INTEGER;

COMMIT;