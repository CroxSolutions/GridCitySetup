# 📘 Coding Style Guide for Micro Framework Development

**Version:** V1.00-stable.0  
**Last Updated:** 2025-05-05  
**Author:** Chris Cox ("Wolf")  

---

## Table of Contents

1. [Introduction](#introduction)  
2. [Core Principles](#core-principles)  
3. [Version Numbering](#version-numbering)  
4. [Coding Conventions](#coding-conventions)  
5. [Folder Structure](#folder-structure)  
6. [API Design](#api-design)  
7. [Accessibility and UX](#accessibility-and-ux)  
8. [Deployment & Release](#deployment--release)  
9. [Appendix](#appendix)

---

## Introduction

This document defines the foundational style guide for coding practices used in the micro-framework under development. The framework is designed for clean, scalable, modular development and will support a small but growing development team. It is currently in use across two live client projects.

---

## Core Principles

- **Web Accessibility First**  
  All components must consider accessibility from the ground up (semantic HTML, ARIA roles, keyboard nav, color contrast).

- **Modularity & Reusability**  
  Code should be organized into small, composable, and easily testable modules.

- **Developer-Friendly**  
  Functions and logic must be easy to follow, with self-documenting structure and thorough inline documentation.

- **Function-Based Architecture**  
  Avoid heavy class-based systems unless absolutely necessary.

---

## Version Numbering

We follow a **modified semantic versioning** system adapted from internal standards (`Version Numbering V3.22`):

### Format

```
V<major>.<minor>{-<stage>.<deploy>}{-debug}
```

### Definitions

- **Major** (`1.X`) – Significant system-wide updates or feature overhauls.  
- **Minor** (`X.1`) – Routine feature additions, fixes, and enhancements.  
- **Stage** (optional)  
  - `-alpha`: Internal Use Only  
  - `-beta`: Limited External Use  
  - `-stable`: Production Ready  
  - `-dev`: Active Development  
- **Deploy Version** (`.1`, `.2`, ...) – Minor, non-breaking releases post-version freeze.  
- **Debug** – Optional flag if internal or verbose output is included.

### Example

```
V1.14-beta.3-debug
```

---

## Coding Conventions

### General

- **Case Style:**  
  - `camelCase` for variables and function names.  
  - `SCREAMING_SNAKE_CASE` for constants.

- **Function Comments:**

```php
/**
 * Calculates the invoice amount for an interpreter.
 *
 * @param int|float $totalMinutes Total duration of appointments in minutes.
 * @param float $payRate The interpreter's per-hour pay rate.
 * @return float Rounded invoice total.
 */
function calculateInvoice($totalMinutes, $payRate) {
  // logic here
}
```

- **Spacing & Indentation:**  
  - 2 spaces or tabs (TBD via .editorconfig).  
  - No trailing whitespace.

- **File Naming:**  
  - Match function or module name (e.g., `invoiceHelper.php`, `authCheck.php`).

---

## Folder Structure

Using a Tron-inspired layout for thematic and practical separation:

```
/CLU           # Configuration, schema, env setup, deploy scripts
/docs          # Internal and external documentation
/theGrid       # Active deployable codebase
  ├── api2       # RESTful API endpoints
  ├── components # header, footer, bootstrap preHeader
  ├── core       # core PHP helpers (auth, db, utils)
  ├── include    # assets and modular includes
  │   ├── css      # stylesheets
  │   ├── js       # scripts and plugins
  │   ├── images   # raster/vector assets
  │   ├── media    # videos, audio
  │   └── views    # include-once view files
  ├── pages      # site content, structured as:
  │   ├── dashboards
  │   ├── ops
  │   └── reports
  ├── tron       # Help system, static resources
  ├── release    # Protected markdown notes and version logs
    ├── release.php
    └── release.md
index.php
robots.txt
```

---

## API Design

- Follows RESTful conventions using verbs:
  - `GET /api2/getUser`
  - `POST /api2/createInvoice`
  - `PUT /api2/updateProfile`
  - `DELETE /api2/removeSession`

- Use consistent return structure (JSON):
```json
{
  "status": "success",
  "data": {...},
  "message": "Optional"
}
```

---

## Accessibility and UX

- All interactive elements must:
  - Be keyboard accessible.
  - Include appropriate `aria-` labels and roles.
  - Have clear focus and hover states.

- Theme options:
  - **Flat** – for internal dashboards.
  - **Web 2.0** – rounded, friendly visual design.
  - **Kids** – high contrast, bold icons, playful feel.

---

## Deployment & Release

- Use `/CLU` to manage deploy scripts and environment-specific variables.
- Version releases must update:
  - `/release/release.md`
  - `/release/release.php` for viewable notes

---

## Appendix

**Future Considerations:**

- Add `.editorconfig` and ESLint/PHPCS standards
- Docker-based CLU setup scripts
- GitHub Actions for automated release tagging
- Theme override system using CSS variables
