# owasp-dependency-check

[![CircleCI](https://circleci.com/gh/embrasure/owasp-dependency-check.svg?style=svg)](https://circleci.com/gh/embrasure/owasp-dependency-check) [![](https://imagelayers.io/badge/embrasure/owasp-dependency-check:latest.svg)](https://imagelayers.io/?images=embrasure/owasp-dependency-check:latest 'Get your own badge on imagelayers.io') [![license](https://img.shields.io/badge/license-MIT-blue.svg?style=plastic)]()

## About owasp-dependency-check

An alpine container containing version 1.4.2 of the [OWASP Dependency Check](https://www.owasp.org/index.php/OWASP_Dependency_Check) CLI, along with a pre-seeded database to speed up scans. 

## Install

`$ docker pull embrasure/owasp-dependency-check`

## Usage

`$ docker run --rm -v <project_source>:/tmp/src -v <report_destination_directory>:/tmp/reports -w /tmp/src -w /tmp/reports embrasure/owasp-dependency-check`

### Optional Environment Variables

`PROJECT_NAME` Default "generic". Set the project name for the generated report.