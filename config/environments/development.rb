require "active_support/core_ext/integer/time"

Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # Reload code on every request.
  config.enable_reloading = true

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable server timing.
  config.server_timing = true

  # ==========================================================
  # CACHING
  # ==========================================================

  if Rails.root.join("tmp/caching-dev.txt").exist?
    config.action_controller.perform_caching = true
    config.action_controller.enable_fragment_cache_logging = true

    config.cache_store = :memory_store

    config.public_file_server.headers = {
      "Cache-Control" => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false
    config.cache_store = :null_store
  end

  # ==========================================================
  # ACTIVE STORAGE
  # ==========================================================

  config.active_storage.service = :local

  # ==========================================================
  # ACTION MAILER
  # ==========================================================

  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.perform_caching = false

  config.action_mailer.delivery_method = :smtp

  config.action_mailer.smtp_settings = {
    address: "smtp.gmail.com",
    port: 587,
    domain: "gmail.com",
    user_name: Rails.application.credentials.dig(:gmail, :username),
    password: Rails.application.credentials.dig(:gmail, :password),
    authentication: "plain",
    enable_starttls_auto: true
  }

  config.action_mailer.default_url_options = {
    host: "localhost",
    port: 3000
  }

  # ==========================================================
  # ACTIVE SUPPORT
  # ==========================================================

  config.active_support.deprecation = :log
  config.active_support.disallowed_deprecation = :raise
  config.active_support.disallowed_deprecation_warnings = []

  # ==========================================================
  # ACTIVE RECORD
  # ==========================================================

  config.active_record.migration_error = :page_load
  config.active_record.verbose_query_logs = true

  # ==========================================================
  # ACTIVE JOB
  # ==========================================================

  config.active_job.verbose_enqueue_logs = true

  # ==========================================================
  # ASSETS
  # ==========================================================

  config.assets.quiet = true

  # ==========================================================
  # OPTIONAL SETTINGS
  # ==========================================================

  # config.i18n.raise_on_missing_translations = true
  # config.action_view.annotate_rendered_view_with_filenames = true
  # config.action_cable.disable_request_forgery_protection = true

  config.action_controller.raise_on_missing_callback_actions = true
end