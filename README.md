# pdf-field-dump

  In a custom e-contracting app where we are working with pdfs, we needed a solution to dump the field names from each pdf in order to determine what new fields needed to be added to forms, view, and db. This small solution dumps the field data using [PDFTK](https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/) `dump_data_fields`. We wanted to get the `Field Name` and the `Field Type` for each pdf and render it in the view. This method gets the pdf path from [Paperclip](https://github.com/thoughtbot/paperclip) to access the pdf before uploading direct to s3.
  The goal was to parse the string down to an array of just the `Field Type` and the `Field Name` to render along side a preview of the pdf in the app. 
