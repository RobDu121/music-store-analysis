# Music Store Analysis

A music store sales analysis project with exported query results and a Power BI report. The results cover revenue, customers, artists, genres, countries, monthly performance, and employee sales support.

## Project files

| Location | Contents |
| --- | --- |
| `SQL_Music_Store_Project.pbix` | Power BI report |
| `exports/new/` | Eight result tables covering revenue and customer analysis |
| `exports/` | Two additional artist and customer ranking exports |

## Analysis outputs

The `exports/new/` folder contains:

- Total revenue
- Revenue by month, country, and genre
- Customers by country
- Top 10 artists by revenue
- Top 10 customers by revenue
- Employees ranked by supported revenue

The two ranking exports directly in `exports/` differ from those in `exports/new/`. Both supplied versions are preserved. Their query definitions and filtering differences have not been verified, so they should not be treated as interchangeable.

## Open the project

1. Download or clone this repository.
2. Open `SQL_Music_Store_Project.pbix` in Power BI Desktop.
3. Inspect the CSV outputs in Excel, a text editor, or another data analysis tool.
4. If the report cannot refresh because of local file paths, inspect its Power Query sources and update them to the matching files in your local copy. Any database connection requires the corresponding database and credentials.

## Reproducibility

This repository currently includes the saved Power BI report and supplied CSV results. The source project's SQL folder was empty at setup, and no database was supplied. The original SQL queries and database are needed to reproduce the exports from source. The report's refresh behavior has not been tested during repository setup.

Original filenames and CSV column headers are preserved.
