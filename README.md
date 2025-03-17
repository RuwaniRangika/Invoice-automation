The project is the company receives purchase invoices from various suppliers, which must be verified for accuracy and approved by a staff member to confirm who generated the invoice and ensure its validity. Invoices may arrive either electronically or in paper format. While the company already has an automation system for managing electronic invoices, handling paper invoices remains a challenge. Currently, paper invoices are scanned into PDF files and stored in a designated directory for processing.

This project aims to automate the handling of PDF invoices. The objective is to read the invoices from the directory into a MySQL database while verifying the correctness of the IBAN and reference numbers. Additionally, the system will ensure that the line item amounts match the total amount specified in the header information.

This task will be executed using two RPA techniques. The UiPath process will extract data from the PDF files into a temporary CSV structure, standardizing the necessary information from various invoices. The Robot Framework process will handle the data in the CSV file, validate it, and write the invoice details into the MySQL database.




