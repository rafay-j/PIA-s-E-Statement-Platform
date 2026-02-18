# PIA Awards +Plus e-Statement Portal

A web-based e-Statement dashboard built to modernize a legacy loyalty system and enable secure digital self-service access for loyalty members.

## Table of Contents

- [Overview](#overview)
- [Problem Statement](#problem-statement)
- [Solution](#solution)
- [Core User Flow](#core-user-flow)
- [UI & Experience Design](#ui--experience-design)
- [Tech Stack](#tech-stack)
- [Architecture Overview](#architecture-overview)
- [Engineering Challenges](#engineering-challenges)
- [Security & Data Integrity](#security--data-integrity)
- [What I Focused On](#what-i-focused-on)

## Overview

This project involved contributing to the early-stage migration of the Awards +Plus loyalty system into a web-based portal. The goal was to bridge a legacy backend system with a modern web interface while preserving business rules, data integrity, and corporate branding standards.

## Problem Statement

The existing loyalty system was built on a legacy internal stack that limited extensibility and direct digital access for members. Users relied on internal processes to retrieve their account summaries, making it inefficient to independently view miles and tier information.

**The Challenge:** Design a secure web-based interface that could integrate with the existing SQL Server database while maintaining authentication integrity and system stability.

## Solution

Developed a web-based e-Statement dashboard that:

- ✓ Enables secure member registration and authentication
- ✓ Retrieves miles balance and tier data from a SQL Server backend
- ✓ Presents structured account summaries in a readable dashboard layout
- ✓ Integrates legacy database logic into a controlled web access layer

## Core User Flow

1. **User Registration** – Member account creation with validation
2. **Secure Login** – Authentication against legacy system
3. **Backend Authentication & Validation** – Server-side credential verification
4. **Retrieval of Member Miles and Tier Data** – Query legacy database
5. **Display via Structured e-Statement Dashboard** – Present data to user

## UI & Experience Design

- Designed the e-Statement dashboard layout for intuitive navigation
- Organized member data into clear sections (miles balance, tier status, account summary)
- Defined information hierarchy for readability and clarity
- Ensured alignment with corporate branding guidelines
- Balanced usability with legacy system constraints

## Tech Stack

- ASP.NET Web Forms
- C#
- SQL Server
- ADO.NET

## Architecture Overview

- Web Forms UI Layer (Login, Registration, Dashboard)
- C# Code-Behind handling authentication and business logic
- SQL Server integration using parameterized queries
- Session-based authentication management
- Backend validation to ensure secure data access

## Engineering Challenges

- Working with a legacy database schema not originally designed for public-facing access
- Ensuring secure data retrieval from an older system architecture
- Implementing authentication flows without modern identity frameworks
- Maintaining system stability during early-stage migration

## Security & Data Integrity

- Used parameterized SQL queries to prevent injection attacks
- Implemented backend credential validation
- Controlled session management for authenticated users
- Preserved data integrity while exposing legacy data via web interface

## What I Focused On

- Designing backend modules for secure member data retrieval
- Structuring the e-Statement dashboard for clarity and usability
- Aligning system behavior with loyalty program business rules
- Identifying and resolving backend inconsistencies during testing
- Improving authentication and data retrieval stability prior to handoff
