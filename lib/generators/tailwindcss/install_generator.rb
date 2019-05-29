# frozen_string_literal: true

require 'rails/generators/base'

module Tailwindcss
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      def yarn_add_tailwindcss
        run "yarn --ignore-engines add tailwindcss"
      end

      def init_tailwindcss
        run "./node_modules/.bin/tailwind init tailwind.config.js"
      end

      def setup_tailwindcss
        template "tailwind.css", "app/javascript/css/tailwind.css"
        append_to_file "app/javascript/packs/application.js", 'import "../css/tailwind.css"'
      end

      def configure_postcssrc
        inject_into_file "postcss.config.js", "    require('tailwindcss'),\n", after: "require('postcss-import'),\n"
        inject_into_file "postcss.config.js", "    require('autoprefixer'),\n", after: "plugins: [\n"
      end

      def remove_corejs_3
        gsub_file("babel.config.js", /,\n\s+corejs: 3/, '')
      end
    end
  end
end
