# frozen_string_literal: true

ActiveRecordDoctor.configure do
  global :ignore_tables, [
    # Ignore internal Rails-related tables.
    'ar_internal_metadata',
    'schema_migrations',
    'active_storage_blobs',
    'active_storage_attachments',
    'action_text_rich_texts',

    /^solid_queue_/,
    'versions',
    'version_associations',
    'friendly_id_slugs',
    'validation_errors'
  ]

  global :ignore_models, [
    /^ActiveStorage::/,
    /^ActionText::/,
    /^ActionMailbox::/,
    /^SolidQueue::/,
    /^PaperTrail::/,
    /^FriendlyId::/
  ]

  detector :missing_presence_validation,
           ignore_attributes: ['Page.slug', 'User.slug', 'User.encrypted_password', 'User.sign_in_count',
                               'User.failed_attempts']

  detector :incorrect_dependent_option,
           ignore_associations: ['Page.slugs', 'User.slugs']
end
