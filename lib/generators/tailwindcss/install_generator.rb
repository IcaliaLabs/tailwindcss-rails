# frozen_string_literal: true

require 'rails/generators/base'

module Tailwindcss
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      def yarn_add_tailwindcss
        run "yarn --ignore-engines add tailwindcss"
      end

      def create_javascript_css_directory
        run "mkdir app/javascript/css"
      end

      def init_tailwindcss
        run "./node_modules/.bin/tailwind init app/javascript/css/tailwind.js"
      end

      def setup_tailwindcss
        template "tailwind.css", "app/javascript/css/tailwind.css"
        append_to_file "app/javascript/packs/application.js", 'import "../css/tailwind.css"'
      end

      def configure_postcssrc
        inject_into_file "./.postcssrc.yml", "\n  tailwindcss: './app/javascript/css/tailwind.js'", before: "postcss-cssnext: {}"
      end
    end
  end
end

