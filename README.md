# Music Store Analysis

A music store sales analysis project with exported query results and a Power BI report. The results cover revenue, customers, artists, genres, countries, monthly performance, and employee sales support.

## Project files

| Location | Contents |
| --- | --- |
| `SQL_Music_Store_Project.pbix` | Power BI report |
| `sql/music-store-analysis.sql` | Seven SQLite analysis queries |
| `data/Chinook_Sqlite.sqlite` | Supplied Chinook SQLite database |
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

The SQL script contains seven read-only queries for total revenue, revenue by country/month/genre, top artists, top customers, and employee-supported revenue. It uses SQLite syntax, including `STRFTIME` for monthly grouping.

To run it, open `data/Chinook_Sqlite.sqlite` in a compatible SQL client and execute `sql/music-store-analysis.sql`. It uses the Invoice, InvoiceLine, Track, Genre, Album, Artist, Customer, and Employee tables. All seven queries were successfully executed against the supplied database in read-only mode during repository setup. The total revenue query returned 2,328.60, matching the supplied total-revenue CSV.

The supplied SQL and CSVs are preserved as separate project artifacts. Some exported headers differ from the script, the employee query returns different count columns, and the script does not include the customers-by-country query. The CSVs have not been regenerated or fully reconciled against this script. The report's refresh behavior has not been tested during repository setup.

Original filenames and CSV column headers are preserved.
