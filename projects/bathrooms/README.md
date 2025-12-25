# Public Bathroom Access Audit — San Diego County

**Status:** 🚧 In progress (active development)  
**Focus:** Geospatial data engineering, audit workflows, and public infrastructure analysis

This project documents the development of an open-source, geospatial workflow to audit public bathroom access across San Diego County. The goal is to move an existing ArcGIS Online mapping project toward a transparent, reproducible, and extensible open-source data product that supports both **engineering workflows** and **policy analysis**.

---

## Project motivation

Access to safe, publicly available bathrooms is a critical component of public health, accessibility, and homelessness response. Despite its importance, bathroom availability data is often fragmented, outdated, or locked behind proprietary platforms.

This project aims to:
- Create a **clear, auditable dataset** of public bathroom locations
- Support **public-facing mapping and data entry**
- Enable **repeatable geospatial pipelines** for validation and updates
- Bridge **policy questions** with **engineering-grade data workflows**

---

## Current state

- ✅ A working **ArcGIS Online map** documenting bathroom locations and attributes
- ✅ Structured survey-style attributes (accessibility, hours, maintenance, etc.)
- 🚧 Migration toward an **open-source stack**
- 🚧 Pipeline development for ingestion, validation, and publishing
- 🚧 Planning for user-submitted data and moderation workflows

This repository represents the **open-source transition and engineering design**, not a finalized product.

---

## Unit of analysis

| Component | Description |
|--------|------------|
| Geometry | Point locations (bathroom facilities) |
| Geography | San Diego County |
| Data type | Public infrastructure |
| Privacy | No personally identifiable data |

---

## Example attributes (planned schema)

| Field | Description |
|------|------------|
| `bathroom_id` | Stable unique identifier |
| `name` | Facility or location name |
| `geometry` | Point location |
| `hours` | Access hours (structured or free-text) |
| `accessibility` | ADA accessible (yes/no/unknown) |
| `ownership` | City, county, state, private |
| `verified_date` | Last verification timestamp |
| `source` | City data, field audit, user submission |

> Final schema will be documented and versioned in pipeline configuration.

---

## Engineering goals

This project is designed to demonstrate:

- Geospatial data ingestion and normalization
- Schema documentation and validation
- Repeatable ETL workflows
- Support for user-submitted spatial data
- Clear separation of **project context** and **pipeline logic**
- Documentation for internal and external contributors

---

## Relationship to pipelines

This project **references**, but does not duplicate, reusable pipelines.

Planned pipeline location:
pipelines/geospatial-data-pipelines/user-generated-geo-ingestion/

Pipelines will handle:
- Raw data ingestion (CSV, GeoJSON, API)
- Geometry validation
- Schema enforcement
- QA checks (duplicates, invalid points)
- Output datasets for mapping and analysis

---

## Roadmap

- [ ] Export ArcGIS Online data to open formats
- [ ] Define and version schema
- [ ] Build ingestion + validation pipeline
- [ ] Publish initial open dataset
- [ ] Prototype user submission workflow
- [ ] Add moderation and QA rules
- [ ] Integrate with public-facing map

---

## Policy relevance

This work supports:
- Homelessness response planning
- Public health access analysis
- ADA accessibility audits
- Infrastructure gap identification
- Evidence-based advocacy

---

## Repository structure (current)

Pipelines will handle:
- Raw data ingestion (CSV, GeoJSON, API)
- Geometry validation
- Schema enforcement
- QA checks (duplicates, invalid points)
- Output datasets for mapping and analysis

---

## Roadmap

- [ ] Export ArcGIS Online data to open formats
- [ ] Define and version schema
- [ ] Build ingestion + validation pipeline
- [ ] Publish initial open dataset
- [ ] Prototype user submission workflow
- [ ] Add moderation and QA rules
- [ ] Integrate with public-facing map

---

## Policy relevance

This work supports:
- Homelessness response planning
- Public health access analysis
- ADA accessibility audits
- Infrastructure gap identification
- Evidence-based advocacy

---

## Repository structure (current)
projects/bathrooms/
├── README.md
├── index.html # Project overview page (planned)
└── notes/ # Design notes, references, drafts


