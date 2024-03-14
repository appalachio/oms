ActiveRecordDoctor.configure do
  global :ignore_tables, [
    # Ignore internal Rails-related tables.
    "ar_internal_metadata",
    "schema_migrations",
    "active_storage_blobs",
    "active_storage_attachments",
    "action_text_rich_texts",
    "validation_errors"
  ]

  detector :missing_presence_validation,
    ignore_models: [
      "ActiveStorage::Attachment",
      "ActiveStorage::Blob",
      "ActiveStorage::VariantRecord",
      "ActionText::RichText",
      "ActionText::EncryptedRichText",
      "PaperTrail::Version"
    ]
end
