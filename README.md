# owasp-dependency-check

[![CircleCI](https://circleci.com/gh/embrasure/owasp-dependency-check.svg?style=svg)](https://circleci.com/gh/embrasure/owasp-dependency-check) [![](https://badge.imagelayers.io/embrasure/owasp-dependency-check:latest.svg)](https://imagelayers.io/?images=embrasure/owasp-dependency-check:latest 'Get your own badge on imagelayers.io') [![Docker Pulls](https://img.shields.io/docker/pulls/embrasure/owasp-dependency-check.svg?maxAge=2592000)]() [![license](https://img.shields.io/badge/license-MIT-blue.svg?style=plastic)]()

## About owasp-dependency-check

An alpine container containing the [OWASP Dependency Check](https://www.owasp.org/index.php/OWASP_Dependency_Check) CLI, along with a pre-seeded database to speed up scans. 

## Install

`$ docker pull embrasure/owasp-dependency-check`

## Usage

###### run with default settings

`$ docker run --rm -v <project_source>:/tmp/src -v <report_destination_directory>:/tmp/reports -w /tmp/src -w /tmp/reports embrasure/owasp-dependency-check`

###### run with additional arguments 

`$ docker run --rm -v <project_source>:/tmp/src -v <report_destination_directory>:/tmp/reports -w /tmp/src -w /tmp/reports embrasure/owasp-dependency-check --enableExperimental --disableBundleAudit "true"`

### Optional Environment Variables

`PROJECT_NAME` Default "generic". Set the project name for the generated report.