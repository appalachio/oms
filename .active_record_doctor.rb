# frozen_string_literal: true

ActiveRecordDoctor.configure do
  global :ignore_tables, [
    # Ignore internal Rails-related tables.
    'ar_internal_metadata',
    'schema_migrations',
    'active_storage_blobs',
    'active_storage_attachments',
    'action_text_rich_texts',

    'validation_errors',
    'versions',
    'version_associations',
    'friendly_id_slugs'
  ]

  detector :missing_presence_validation,
           ignore_models: [
             'ActiveStorage::Attachment',
             'ActiveStorage::Blob',
             'ActiveStorage::VariantRecord',
             'ActionText::RichText',
             'ActionText::EncryptedRichText',

             'PaperTrail::Version',
             'PaperTrail::VersionAssociation',
             'FriendlyId::Slug'
           ]

  detector :incorrect_length_validation,
           ignore_models: [
             'FriendlyId::Slug'
           ]

  detector :undefined_table_references,
           ignore_models: [
             'PaperTrail::VersionAssociation',
             'ActionMailbox::InboundEmail'
           ]

  detector :incorrect_dependent_option,
           ignore_models: [
             'PaperTrail::Version'
           ]
end
