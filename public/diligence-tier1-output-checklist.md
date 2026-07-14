# Nautilus Intelligence - Tier 1 Document Intelligence Parser Pilot Checklist

Tier 1 is an individual document-type parser and validation tool. It is the entry layer to the broader Nautilus Diligence architecture; it is not the full data-room parser, report generator, DRL workflow, Diligence OS, or client dashboard.

Initial pilot document types:
- Summary of Benefits and Coverage (SBC)
- Open Enrollment / New Hire Guide

Additional document-specific parsers may be added after their field definitions, schemas, evidence rules, and validation standards are established.

## Scope definition
1. Named document type and supported variants
2. Required and optional fields
3. Stable JSON schema and version
4. Field normalization rules
5. Evidence and page-reference standard
6. Confidence and exception states
7. Reviewer actions and approved-value logic
8. Data handling and deployment boundary
9. Pilot document population
10. Acceptance criteria and measurement method

## Required parser outputs
1. Document identity and classification
2. Source file and page references
3. Extracted field name and value
4. Normalized value where applicable
5. Source text or evidence region
6. Confidence or reliability state
7. Missing / not applicable / conflicting status
8. Reviewer confirm / correct / reject action
9. Approved value and reviewer notes
10. Error category and correction record
11. Parser and schema version
12. Machine-readable JSON export
13. Human-readable validation view
14. Run summary and exception count

## Pilot quality checks
- Correct document classification
- Required-field completeness
- Accurate field-to-value mapping
- Copay vs. coinsurance distinction
- In-network vs. out-of-network distinction
- Plan-specific matching
- Table and image evidence handling
- Repeatability across formatting variants
- No unsupported filling of missing values
- Traceability from approved JSON to source page
- Preservation of conflicting evidence
- Stable output for downstream use

## Potential founding license terms
A limited no-cost or reduced-cost founding license may be considered for qualified firms. Availability is not guaranteed and requires separate written terms that define:
- Pilot period and permitted users
- Supported document type and document volume
- Deployment method
- Confidentiality and data handling
- Validation and feedback responsibilities
- Correction-data and de-identification rights
- Support boundaries
- Renewal, expiration, and commercial terms

## Not included in Tier 1
- Full data-room inventory and cross-document reconciliation
- Multi-document plan, cost, and compliance analysis
- Client-ready diligence report generation
- Living DRL updates across a transaction
- Email, seller-response, call-note, task, or reminder management
- Diligence OS command environment
- Live client-facing dashboards
- Legal, tax, ERISA, accounting, actuarial, investment, insurance-placement, fiduciary, regulatory, benefits, or transaction advice
