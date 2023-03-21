# :globe_with_meridians: CIAWorldFactbook

"The *World Factbook* provides basic intelligence on the history, people, government, economy, energy, geography, environment, communications, transportation, military, terrorism, and transnational issues for 266 world entities." -CIA

This repository contains the text data in XML format.

Note: it isn't completely machine readable.
The numbers, dates, and names of interest will need to be parsed from the XML files.

Method:

- Raw HTML files downloaded from [U.S. CIA's website](https://www.cia.gov/the-world-factbook/) on 2023-02-22
- Passed through [HTML Tidy](https://www.html-tidy.org/)
- Processed using [Saxon](https://saxonica.com/welcome/welcome.xml) using the stylesheet in this repository

## Author, Licence

The source data was created by the CIA and is public domain.
For questions about the data, see the [FAQs on their website](https://www.cia.gov/the-world-factbook/about/faqs/).

This repository, XSLT stylesheet, and processed XML files were created by Alan Tseng.
