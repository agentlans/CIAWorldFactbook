# CIAWorldFactbook

"The *World Factbook* provides basic intelligence on the history, people, government, economy, energy, geography, environment, communications, transportation, military, terrorism, and transnational issues for 266 world entities." -CIA

This repository contains the processed text data in XML format. 

Method:

- Raw HTML files downloaded from [U.S. CIA's website](https://www.cia.gov/the-world-factbook/) on 2023-02-22
- Passed through [HTML Tidy](https://www.html-tidy.org/)
- Processed using [Saxon](https://saxonica.com/welcome/welcome.xml) using the stylesheet in this repository

# Author, Licence

This data was created by the CIA and is public domain.
For questions about the data, see the [FAQs on their website](https://www.cia.gov/the-world-factbook/about/faqs/).

This repository, XSLT stylesheet, and processed XML files were created by Alan Tseng.
