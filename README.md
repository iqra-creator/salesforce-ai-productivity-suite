# Salesforce AI Productivity Suite

## Overview
This project represents my work on building AI-assisted productivity features inside Salesforce.
The goal was to help users write better content, rephrase feedback professionally, and improve
daily CRM efficiency using AI — without compromising Salesforce performance or security.

The solution focuses on clean architecture, governor-limit safety, and real business usability.

## What This Project Solves
- Reduces manual effort in writing CRM content
- Improves communication quality with professional rephrasing
- Allows flexibility to switch AI models without code changes
- Ensures scalable and maintainable Apex design

## Key Features
- AI-assisted text generation and rephrasing
- Dynamic AI model selection
- Secure Apex callout structure
- Asynchronous processing for scalability
- Clean separation of UI, logic, and database layers

## Architecture Overview
User interacts with Lightning UI →  
Request handled by Apex Controller →  
Business logic processed in Utility Layer (no DML) →  
Async layer performs callouts →  
Response returned safely to Salesforce

## Technologies Used
- Salesforce Apex
- Lightning Aura / LWC
- REST-based API integration
- Asynchronous Apex (@future)

## Notes
This repository contains sample code and architecture patterns only.
No proprietary or production data is included.

## Author
Iqra Masood – Salesforce Developer
