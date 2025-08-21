Deploying reproducible analytics environments for regulated use cases
================

### posit::conf(2025)

-----

:spiral_calendar: September 16, 2025  
:alarm_clock:     09:00 - 17:00  
:hotel:           International South  
:writing_hand:    [pos.it/conf](http://pos.it/conf)

-----

- [ ] Check lunch and coffee break times (James)
- [ ] Who is attending right now (Doug)
- [x] Main technical session content first proposal. New sys dependencies. Auditable jobs (Doug). [Added to gdoc](https://docs.google.com/document/d/1SKsN6N2ubydlNmyxYkK5qWTZnxK0lPgU8orSdDZ6MzM/edit?tab=t.0).
    - [ ] Net yet validated package
    - [ ] In-house package
    - [ ] CRAN vs Github version
    - [ ] Environment lifecycle for a study (freeze or upgrade R versions)
- [x] Propose <30 min frozen vs rolling experience changing packages (James)
- [ ] Leverage Orla's real world example to connect to our abstract hands-on example
- [ ] Ensure we have access to Posit Workbench (Michael)
- [ ] Weekly meetings setup (James) - aim for Wednesday

## Description

The deployment of reproducible analytical environments is a critical topic in the regulated industries, especially for meeting regulatory requirements and ensuring reproducibility in research. This workshop aims to explore the multifaceted challenges and opportunities associated with provisioning and deploying R-based environments, drawing from experiences of deploying enterprise-scale analytical environments for regulatory filings.

Our session will address the following key questions and themes:
Actionability of Containers for R Deployments: Evaluating the feasibility and effectiveness of using containers to deploy R-based environments for clinical and regulatory use. The discussion will include scaling with clinical use cases and polyglot analyses.
Industry-Standard Base Images: Consider whether and how a standard industry base image could streamline health authority buy-in and compliance processes.
Selecting Packages: Identifying essential qualities to assess for package selection, discussing the categorization of risk and respective activities for high-risk uses.

Pharma-Specific Package Testing: Debating the necessity for pharma-specific testing of public packages and envisioning potential shared solutions for package validation and vulnerability tracking.

Does this align with a path to sharing environments with regulators: Examining the practicality of sharing containerized analyses with health authorities, taking into account OS differences?

Compliance with the EU Cybersecurity Resilience Act: Outlining expectations and requirements for public R repositories to support compliance with recent cybersecurity legislation.

Provisioning packages to users: Historically, there is a preference to bundle packages into an environment rather than use a repository snapshot. Using learnings from companies that have de-coupled R packages from operating systems, how can we balance the burden of validation and qualification against the need for open source to be able to deploy packages continuously and empower teams with the agility to move between more granular package cohorts snapshots?

The workshop will blend insight from those who have navigated these challenges with discussions on current solutions and methodologies. Our goal is to foster a community dialogue that highlights existing implementations and explores diverse perspectives without imposing a single opinionated process. This workshop will be a mixture of sharing, discussion, and exercises.

Join us for a robust discussion to share experiences, identify best practices, and contribute to a collective understanding of deploying validated R packages in a compliant and efficient manner within highly regulated industries.

Target Audience: This workshop is ideal for data scientists, statisticians, IT professionals, and regulatory compliance experts interested in deploying R packages in highly regulated environments.

## Setup

* Access to an environment that has packages all pre-instaleld (i.e. frozen or pre-baked environment)
* Access to an environment with minimal packages that depends on an renv.lock file to populate packages
* Quarto files to walk through common steps setting up, updating packages, adding packages, etc per environment

## Schedule

| Time          | Activity         |
| :------------ | :--------------- |
| 09:00 - 09:30 | Welcome and intros |
| 09:30 - 10:30 | **A reflection on conversations to date**<br>🗺️ What are we aiming to deliver against your risk tolerance to provide a repoducible environment? (20m)<br>🏢 Industry perspectives and an 👋 Introduction to the R Validation Hub and Regulatory Repo (20m)<br>🗣️ Discussion (20m) |
| 10:30 - 11:00 | *Coffee break*   |
| 11:00 - 12:30 | **Posit workbench part 1**<br>👋 Introduction to our environment, and setting up and inspecting auditable job<br>🗣️ Discussion |
| 12:30 - 13:30 | *Lunch break*    |
| 13:30 - 14:00 | **Posit workbench part 2**<br>👋 Introduction to our environment, the concepts of frozen and rolling environments and tools like `renv` and Posit Package Manager<br>❄️ Working with packages in a frozen environment<br>📷 Working with packages in a rolling environment<br>🗣️ Discussion |
| 14:00 - 15:00 | **Small group session**<br>🧑‍🤝‍🧑 Identify key roles involved in the lifecycle of validated R packages (e.g., Data Scientists, IT, QA, Auditors/Inspectors)<br>⚠️ Key pain points today<br>❓ What would ideal look like starting a project with validated packages, updating packages, and using internal unpublished packages?<br> Small groups whiteboard a proposed architecture for creating curated and repoducible cohorts of R packages by size of organisation (>1,000 users, 999-200, >200).        | 
| 15:00 - 15:30 | *Coffee break*   |
| 15:30 - 16:30 | **Small group presentations**<br>• 10 minutes + 5 minutes per group (3 groups)<br>*Some question prompts to tackle on how packages are used in the controlled environments:*<br>❓ What is the process for 'published' CRAN/Bioconductor packages?<br>❓ What is the process for Github/Gitlab packages?<br>❓ What is the process for internal packages?<br>❓ How are new packages deployed into an ongoing project? |
| 16:30 - 17:00 | Wrap up and call for next steps      |


## Instructor(s)

- James Black & Orla Doyle (Novartis)
- Doug Kelkhoff (Roche)
- Michael Mayer (Posit)
- Rafael Pereira (Appsilon)

### Needs

- Whiteboards and pens

## Resources

- [Day 4 of the Posit Admin training](https://solutions.posit.co/admin-training/) includes sections on Posit Package Manager (PPM)

## Slides

Render the slides with

`quarto render presentation/index.qmd  --output-dir ../docs`

-----

![](https://i.creativecommons.org/l/by/4.0/88x31.png) This work is licensed under a [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/).
